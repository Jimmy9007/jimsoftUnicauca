<?php

declare(strict_types=1);

namespace Administracion\Controller;

use Laminas\Mvc\Controller\AbstractActionController;
use Laminas\Authentication\AuthenticationService;
use Laminas\View\Model\ViewModel;
use Laminas\View\Model\JsonModel;
use Administracion\Modelo\DAO\LumenDAO;
use Administracion\Formularios\LumenForm;
use Administracion\Modelo\Entidades\Lumen;

class LumenController extends AbstractActionController
{

    private $DAO;
    private $rutaLog = './public/log/';
    private $rutaArchivos = './../astra/archivos/lumen/';
    //------------------------------------------------------------------------------

    public function __construct(LumenDAO $dao)
    {
        $this->DAO = $dao;
    }

    //------------------------------------------------------------------------------

    public function getInfoSesion()
    {
        $infoSesion = [
            'idEmpleadoCliente ' => 0,
            'login' => 'SIN INICIO DE SESION'
        ];
        $auth = new AuthenticationService();
        if ($auth->hasIdentity()) {
            $infoSesion['login'] = $auth->getIdentity()->login;
            $infoSesion['idEmpleadoCliente '] = $auth->getIdentity()->idEmpleadoCliente;
        }
        return $infoSesion;
    }

    //------------------------------------------------------------------------------
    function getFormulario($action = '', $idLumen = 0)
    {
        $form = new LumenForm($action);
        if ($idLumen != 0) {
            $lumenOBJ = $this->DAO->getLumen($idLumen);
            $form->bind($lumenOBJ);
        }
        return $form;
    }
    //------------------------------------------------------------------------------
    public function indexAction()
    {
        $filtro = " lumen.estado != 'Eliminado'";
        return new ViewModel([
            'fetchAll' => $this->DAO->fetchAll($filtro),
        ]);
    }

    //------------------------------------------------------------------------------
    public function registrarAction()
    {
        $infosesion = $this->getInfoSesion();
        $registradopor = $infosesion['login'];
        $Procesos = $this->DAO->getProcesos();
        $listaProceso = array();
        foreach ($Procesos  as $pro) {
            $listaProceso[$pro['idProceso']] = $pro['proceso'];
        }
        //----------------------------------------------------------------------
        $form = new LumenForm('registrar', $listaProceso);
        $request = $this->getRequest();
        if (!$request->isPost()) {
            $view = new ViewModel(['form' => $form]);
            $view->setTerminal(true);
            return $view;
        }
        //----------------------------------------------------------------------
        $lumenOBJ = new Lumen();
        $form->setInputFilter($lumenOBJ->getInputFilter());
        $form->setData($request->getPost());
        if (!$form->isValid()) {
            print_r($form->getMessages());
            return ['form' => $form];
            exit();
            $this->flashMessenger()->addErrorMessage('LA INFORMACION DE REGISTRO DEL ARCHIVO NO ES VALIDA');
            return $this->redirect()->toUrl('index');
        }
        //----------------------------------------------------------------------
        $files = $request->getFiles()->toArray();
        //----------------------------------------------------------------------
        $uploadOK = new \Laminas\Validator\File\UploadFile();
        if (!$uploadOK->isValid($files['archivo'])) {
            $this->flashMessenger()->addErrorMessage('EL ARCHIVO DE RESPALDO ADJUNTO PRESENTA ERRORES AL CARGAR AL SERVIDOR');
            return $this->redirect()->toUrl('index');
        }
        if (array_key_exists('archivo', $files)) {
            $ext = pathinfo($files['archivo']['name'], PATHINFO_EXTENSION);
            $filesize = new \Laminas\Validator\File\Size([
                'min' => '250B',
                'max' => '2MB',
            ]);
            if (!$filesize->isValid($files['archivo'])) {
                $this->flashMessenger()->addErrorMessage('EL ARCHIVO DE RESPALDO ADJUNTO NO ESTA EN LOS LIMITES PERMITIDOS. <br> MINIMO: 250B  <br> MAXIMO: <b>2MB</b>');
                return $this->redirect()->toUrl('index');
            }
            $extensiones = new \Laminas\Validator\File\Extension(array('extension' => array('pdf')));
            if (!$extensiones->isValid($files['archivo'])) {
                $this->flashMessenger()->addErrorMessage('EL ARCHIVO DE RESPALDO ADJUNTO NO ES PERMITIDO. <br> ARCHIVOS PERMITIDOS: <br> PDF');
                return $this->redirect()->toUrl('index');
            }
            $filter = new \Laminas\Filter\File\RenameUpload([
                'target' => $this->rutaArchivos . 'LUMEN' . '.' . $ext,
                'randomize' => true,
            ]);
            //----------------------------------------------------------------------
            $upload = $filter->filter($files['archivo']);
            //----------------------------------------------------------------------
            if ($upload['error'] != 0) {
                $this->flashMessenger()->addErrorMessage('NO FUE POSIBLE SUBIR EL ARCHIVO DE RESPALDO ADJUNTO.');
                return $this->redirect()->toUrl('index');
            }
            $respaldo = basename($upload['tmp_name']);
            //----------------------------------------------------------------------
        }
        $lumenOBJ->exchangeArray($form->getData());
        $lumenOBJ->setIdEmitido('1');
        $lumenOBJ->setArchivo($respaldo);
        $lumenOBJ->setEstado('Activo');
        $lumenOBJ->setRegistradopor($registradopor);
        $lumenOBJ->setModificadopor('');
        $lumenOBJ->setFechahorareg(date('Y-m-d H:i:s'));
        $lumenOBJ->setFechahoramod('0000-00-00 00:00:00');
        try {
            $this->DAO->registrar($lumenOBJ);
            $this->flashMessenger()->addSuccessMessage('EL ARCHIVO FUE REGISTRADO EN JIMSOFT');
        } catch (\Exception $ex) {
            $msgLog = "\n" . date('Y-m-d H:i:s') . " REGISTRAR ARCHIVO - ArchivoController->registrar \n"
                . $ex->getMessage()
                . "\n----------------------------------------------------------------------- \n";
            $file = fopen($this->rutaLog . 'jimsoft.log', 'a');
            fwrite($file, $msgLog);
            fclose($file);
            $this->flashMessenger()->addErrorMessage('SE HA PRESENTADO UN INCONVENIENTE! EL ARCHIVO NO FUE REGISTRADO EN JIMSOFT.');
        }
        return $this->redirect()->toUrl('index');
    }
    //------------------------------------------------------------------------------  
    public function editarAction()
    {
        $idEmpleado = (int) $this->params()->fromQuery('idEmpleado', 0);
        $form = $this->getFormulario('editar', $idEmpleado);
        $request = $this->getRequest();
        if ($request->isPost()) {
            $form->setData($request->getPost());
            if ($form->isValid()) {
                $session = $this->getInfoSesion();
                $lumenOBJ = new Empleadocliente($form->getData());
                $lumenOBJ->setModificadopor($session['login']);
                $lumenOBJ->setFechahoramod(date('Y-m-d H:i:s'));
                try {
                    $this->DAO->editar($lumenOBJ);
                    $this->flashMessenger()->addSuccessMessage('EL ARCHIVO FUE EDITADO EN JIMSOFT');
                    return $this->redirect()->toUrl('index');
                } catch (\Exception $ex) {
                    $msgLog = "\n" . date('Y-m-d H:i:s') . " EDITAR ARCHIVO - EmpleadoclienteController->registrar \n"
                        . $ex->getMessage()
                        . "\n----------------------------------------------------------------------- \n";
                    $file = fopen($this->rutaLog . 'jimsoft.log', 'a');
                    fwrite($file, $msgLog);
                    fclose($file);
                    $this->flashMessenger()->addErrorMessage('SE HA PRESENTADO UN INCONVENIENTE! <br>EL ARCHIVO NO FUE EDITADO EN JIMSOFT.');
                }
            } else {
                $this->flashMessenger()->addErrorMessage('SE HA PRESENTADO UN INCONVENIENTE, EL ARCHIVO NO FUE EDITADO EN JIMSOFT');
                return $this->redirect()->toUrl('index');
            }
        }
        $view = new ViewModel([
            'form' => $form,
        ]);
        $view->setTerminal(true);
        return $view;
    }
    //------------------------------------------------------------------------------  
    public function detalleAction()
    {
        $idEmpleado = (int) $this->params()->fromQuery('idEmpleado', 0);
        $infoEmpleado = $this->DAO->getEmpleadoDetalle($idEmpleado);
        $view = new ViewModel(['form' => $infoEmpleado]);
        $view->setTerminal(true);
        return $view;
    }
    //------------------------------------------------------------------------------
    public function eliminarAction()
    {
        $request = $this->getRequest();
        if (!$request->isPost()) {
            $idEmpleadoCliente = (int) $this->params()->fromQuery('idEmpleado', 0);
            $infoCliente = $this->DAO->getEmpleadoDetalle($idEmpleadoCliente);
            $form = new EmpleadoclienteForm('eliminar');
            $form->setData($infoCliente);
            $view = new ViewModel([
                'form' => $form,
            ]);
            $view->setTerminal(true);
            return $view;
        }
        //----------------------------------------------------------------------
        $form = new EmpleadoclienteForm('eliminar');
        $lumenOBJ = new Empleadocliente();
        $form->setInputFilter($lumenOBJ->getInputFilter());
        $form->setData($request->getPost());
        if (!$form->isValid()) {
            //print_r($form->getMessages());
            //return ['form' => $form];
            $this->flashMessenger()->addErrorMessage('LA INFORMACION DE ELIMINACION DEL ARCHIVO NO ES VALIDA');
            return $this->redirect()->toUrl('index?idEmpleadoCliente=' . $this->params()->fromPost('idEmpleadoCliente', 0));
        }
        //----------------------------------------------------------------------
        try {
            $lumenOBJ->exchangeArray($form->getData());
            $infosesion = $this->getInfoSesion();
            $modificadopor = $infosesion['login'];
            $lumenOBJ->setModificadopor($modificadopor);
            $lumenOBJ->setFechahoramod(date('Y-m-d H:i:s'));
            $this->DAO->eliminar($lumenOBJ);
            $this->flashMessenger()->addSuccessMessage('EL ARCHIVO FUE ELIMINADA DE JIMSOFT');
        } catch (\Exception $ex) {
            $msgLog = "\n" . date('Y-m-d H:i:s') . " ELIMINAR ARCHIVO - ContratolaboralController->eliminar \n"
                . $ex->getMessage()
                . "\n----------------------------------------------------------------------- \n";
            $file = fopen($this->rutaLog . 'jimsoft.log', 'a');
            fwrite($file, $msgLog);
            fclose($file);
            $this->flashMessenger()->addErrorMessage('SE HA PRESENTADO UN INCONVENIENTE! <br>EL ARCHIVO NO FUE ELIMINADA DE JIMSOFT.');
        }
        return $this->redirect()->toUrl('index?idEmpleadoCliente=' . $lumenOBJ->getIdEmpleadoCliente());
    }
    //------------------------------------------------------------------------------  
    public function getSelectTipoProcesosAction()
    {
        $idProceso = (int) $this->params()->fromQuery('idProceso', 0);
        $view = new ViewModel(array(
            'tipoProcesos' => $this->DAO->getTipoProceso($idProceso),
        ));
        $view->setTerminal(true);
        return $view;
    }
    public function getSelectSubprocesosAction()
    {
        $idTipoProceso = (int) $this->params()->fromQuery('idTipoProceso', 0);
        $view = new ViewModel(array(
            'subprocesos' => $this->DAO->getSubproceso($idTipoProceso),
        ));
        $view->setTerminal(true);
        return $view;
    }
    //------------------------------------------------------------------------------   
}

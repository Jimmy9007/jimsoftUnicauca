<?php

declare(strict_types=1);

namespace Usuarios\Controller;

use Laminas\Mvc\Controller\AbstractActionController;
use Laminas\Authentication\AuthenticationService;
use Laminas\View\Model\ViewModel;
use Usuarios\Formularios\LoginForm;
use Usuarios\Modelo\RBAC\IdentityManager;

class LoginController extends AbstractActionController
{

    private ?IdentityManager $identityManager;

    //------------------------------------------------------------------------------

    public function __construct(IdentityManager $identityManager)
    {
        $this->identityManager = $identityManager;
    }

    //------------------------------------------------------------------------------

    public function loginAction()
    {
        $auth = new AuthenticationService();
        if ($auth->hasIdentity()) {
            return $this->redirect()->toUrl('inicio');
        }
        $formLogin = new LoginForm('IniciarSesion');
        $viewModel = new ViewModel([
            'formLogin' => $formLogin
        ]);
        $peticion = $this->getRequest();
        if ($peticion->isPost()) {
            $formLogin->setData($peticion->getPost());
            if ($formLogin->isValid()) {
                $datos = $formLogin->getData();
                if ($this->identityManager->login($datos['login'], $datos['password'])) {
                    return $this->redirect()->toRoute('inicio', ['action' => 'index']);
                } else {
                    $this->flashMessenger()->addErrorMessage("USUARIO O CLAVE INCORRECTO");
                }
            } else {
                $this->flashMessenger()->addErrorMessage("SE HA PRESENTADO UN INCONVENIENTE CON EL INICIO DE SU SESION (2)");
            }
        }
        $this->layout()->setTemplate('layout/login');
        return $viewModel;
    }

    //------------------------------------------------------------------------------

    public function cerrarsesionAction()
    {
        $this->identityManager->logout();
        $this->flashMessenger()->addSuccessMessage("LA SESION HA SIDO CERRADA. <br>HASTA PRONTO!");
        return $this->redirect()->toUrl('login');
    }

    //------------------------------------------------------------------------------

    public function noAutorizadoAction()
    {
        return new ViewModel();
    }
}

<?php

namespace Administracion\Modelo\DAO;

use Laminas\Db\TableGateway\AbstractTableGateway;
use Laminas\Db\Adapter\Adapter;
use Laminas\Db\Sql\Expression;
use Laminas\Db\Sql\Select;
use Laminas\Db\Sql\Insert;
use Laminas\Db\Sql\Update;
use Administracion\Modelo\Entidades\Lumen;

class LumenDAO extends AbstractTableGateway
{

    protected $table = 'lumen';

    //------------------------------------------------------------------------------

    public function __construct(Adapter $adapter)
    {
        $this->adapter = $adapter;
    }

    //------------------------------------------------------------------------------
    public function fetchAll($filtro = '')
    {
        $this->table = 'lumen';
        $select = new Select($this->table);
        $select->columns([
            'idLumen',
            'idSubproceso',
            'idEmitido',
            'nombre',
            'descripcion',
            'tipoDocumento',
            'publicacion',
            'archivo',
            'estado',
            'registradopor',
            'modificadopor',
            'fechahorareg',
            'fechahoramod',
        ]);
        if ($filtro != '') {
            $select->where($filtro);
        } else {
            $select->order("lumen.idLumen DESC")->limit(25);
        }
        //        echo $select->getSqlString();
        return $this->selectWith($select)->toArray();
    }
    public function getArchivoDetalle($idLumen = 0)
    {
        $select = new Select('lumen');
        $select->columns(array(
            'idLumen',
            'idSubproceso',
            'idEmitido',
            'nombre',
            'descripcion',
            'tipoDocumento',
            'publicacion',
            'archivo',
            'estado',
            'registradopor',
            'modificadopor',
            'fechahorareg',
            'fechahoramod',
        ))->where("lumen.idLumen = $idLumen")->limit(1);
        //        echo $select->getSqlString();
        $datos = $this->selectWith($select)->toArray();
        if (count($datos) > 0) {
            return $datos[0];
        } else {
            return null;
        }
    }
    public function getArchivo($idLumen = 0)
    {
        return new Lumen($this->select(array('idLumen' => $idLumen))->current()->getArrayCopy());
    }
    //------------------------------------------------------------------------------

    public function registrar(Lumen $lumenOBJ = null)
    {
        try {
            $this->table = 'lumen';
            $insert = new Insert($this->table);
            $datos = $lumenOBJ->getArrayCopy();
            unset($datos['idLumen']);
            $insert->values($datos);
            $this->insertWith($insert);
        } catch (\Exception $e) {
            throw new \Exception($e);
        }
    }
    public function editar(Lumen $lumenOBJ = null)
    {
        try {
            $this->table = 'lumen';
            $idLumen = (int) $lumenOBJ->getIdLumen();
            $update = new Update($this->table);
            $datos = $lumenOBJ->getArrayCopy();
            $update->set($datos);
            $update->where("lumen.idLumen =  $idLumen");
            //echo $update->getSqlString();
            return $this->updateWith($update);
        } catch (\Exception $e) {
            throw new \Exception($e);
        }
    }
    public function eliminar(Lumen $lumenOBJ = null)
    {
        try {
            $this->table = "lumen";
            $update = new Update($this->table);
            $update->set([
                'estado' => 'Eliminado',
                'modificadopor' => $lumenOBJ->getModificadopor(),
                'fechahoramod' => $lumenOBJ->getFechahoramod(),
            ]);
            $update->where("lumen.idLumen = " . $lumenOBJ->getIdLumen());
            //echo $update->getSqlString();
            $this->updateWith($update);
        } catch (\Exception $e) {
            throw new \Exception($e);
        }
    }

    //------------------------------------------------------------------------------
    public function getProcesos()
    {
        $this->table = 'proceso';
        $select = new Select($this->table);
        //        echo $select->getSqlString();
        return $this->selectWith($select)->toArray();
    }
    public function getTipoProceso($idProceso = 0)
    {
        $select = new Select('tipo_proceso');
        $select->columns(array(
            'idTipoProceso',
            'idProceso',
            'tipoProceso'
        ))->where("tipo_proceso.idProceso = $idProceso");
        return $this->selectWith($select)->toArray();
    }
    public function getSubproceso($idTipoProceso = 0)
    {
        $select = new Select('subproceso');
        $select->columns(array(
            'idSubproceso',
            'idTipoProceso',
            'subproceso'
        ))->where("subproceso.idTipoProceso = $idTipoProceso");
        return $this->selectWith($select)->toArray();
    }
    //------------------------------------------------------------------------------
}

<?php

namespace Administracion\Modelo\DAO;

use Laminas\Db\TableGateway\AbstractTableGateway;
use Laminas\Db\Adapter\Adapter;
use Laminas\Db\Sql\Expression;
use Laminas\Db\Sql\Select;
use Laminas\Db\Sql\Insert;
use Laminas\Db\Sql\Update;
use Administracion\Modelo\Entidades\Lvmen;

class LvmenDAO extends AbstractTableGateway
{

    protected $table = 'lvmen';

    //------------------------------------------------------------------------------

    public function __construct(Adapter $adapter)
    {
        $this->adapter = $adapter;
    }

    //------------------------------------------------------------------------------
    public function fetchAll($filtro = '')
    {
        $this->table = 'lvmen';
        $select = new Select($this->table);
        $select->columns([
            'idLvmen',
            'idSubproceso',
            'idEmitido',
            'nombre',
            'descripcion',
            'tipoDocumento',
            'dirigido',
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
            $select->order("lvmen.idLvmen DESC")->limit(25);
        }
        //        echo $select->getSqlString();
        return $this->selectWith($select)->toArray();
    }
    public function getLvmenDetalle($idLvmen = 0)
    {
        $select = new Select('lvmen');
        $select->columns(array(
            'idLvmen',
            'idSubproceso',
            'idEmitido',
            'nombre',
            'descripcion',
            'tipoDocumento',
            'dirigido',
            'publicacion',
            'archivo',
            'estado',
            'registradopor',
            'modificadopor',
            'fechahorareg',
            'fechahoramod',
        ))->where("lvmen.idLvmen = $idLvmen")->limit(1);
        //        echo $select->getSqlString();
        $datos = $this->selectWith($select)->toArray();
        if (count($datos) > 0) {
            return $datos[0];
        } else {
            return null;
        }
    }
    public function getArchivo($idLvmen = 0)
    {
        return new Lvmen($this->select(array('idLvmen' => $idLvmen))->current()->getArrayCopy());
    }
    //------------------------------------------------------------------------------

    public function registrar(Lvmen $lumenOBJ = null)
    {
        try {
            $this->table = 'lvmen';
            $insert = new Insert($this->table);
            $datos = $lumenOBJ->getArrayCopy();
            unset($datos['idLvmen']);
            $insert->values($datos);
            $this->insertWith($insert);
        } catch (\Exception $e) {
            throw new \Exception($e);
        }
    }
    public function editar(Lvmen $lumenOBJ = null)
    {
        try {
            $this->table = 'lvmen';
            $idLvmen = (int) $lumenOBJ->getIdLvmen();
            $update = new Update($this->table);
            $datos = $lumenOBJ->getArrayCopy();
            $update->set($datos);
            $update->where("lvmen.idLvmen =  $idLvmen");
            //echo $update->getSqlString();
            return $this->updateWith($update);
        } catch (\Exception $e) {
            throw new \Exception($e);
        }
    }
    public function eliminar(Lvmen $lumenOBJ = null)
    {
        try {
            $this->table = "lvmen";
            $update = new Update($this->table);
            $update->set([
                'estado' => 'Eliminado',
                'modificadopor' => $lumenOBJ->getModificadopor(),
                'fechahoramod' => $lumenOBJ->getFechahoramod(),
            ]);
            $update->where("lvmen.idLvmen = " . $lumenOBJ->getIdLvmen());
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
    public function getDependencias()
    {
        $this->table = 'dependencias';
        $select = new Select($this->table);
        //        echo $select->getSqlString();
        return $this->selectWith($select)->toArray();
    }
    //------------------------------------------------------------------------------
}

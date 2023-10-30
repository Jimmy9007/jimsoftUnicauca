<?php

namespace Administracion\Modelo\DAO;

use Laminas\Db\TableGateway\AbstractTableGateway;
use Laminas\Db\Adapter\Adapter;
use Laminas\Db\Sql\Expression;
use Laminas\Db\Sql\Select;
use Laminas\Db\Sql\Insert;
use Laminas\Db\Sql\Update;
use Administracion\Modelo\Entidades\Archivo;

class ArchivoDAO extends AbstractTableGateway
{

    protected $table = 'archivos';

    //------------------------------------------------------------------------------

    public function __construct(Adapter $adapter)
    {
        $this->adapter = $adapter;
    }

    //------------------------------------------------------------------------------
    public function fetchAll($filtro = '')
    {
        $this->table = 'archivos';
        $select = new Select($this->table);
        $select->columns([
            'idArchivo',
            'idEmitido',
            'idResolucion',
            'nombre',
            'descripcion',
            'tipo',
            'inicioConvocatoria',
            'finConvocatoria',
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
            $select->order("archivos.idArchivo DESC")->limit(25);
        }
        //        echo $select->getSqlString();
        return $this->selectWith($select)->toArray();
    }
    public function getArchivoDetalle($idArchivo = 0)
    {
        $select = new Select('archivos');
        $select->columns(array(
            'idArchivo',
            'idEmitido',
            'idResolucion',
            'nombre',
            'descripcion',
            'tipo',
            'inicioConvocatoria',
            'finConvocatoria',
            'publicacion',
            'archivo',
            'estado',
            'registradopor',
            'modificadopor',
            'fechahorareg',
            'fechahoramod',
        ))->where("archivos.idArchivo = $idArchivo")->limit(1);
        //        echo $select->getSqlString();
        $datos = $this->selectWith($select)->toArray();
        if (count($datos) > 0) {
            return $datos[0];
        } else {
            return null;
        }
    }
    public function getArchivo($idArchivo = 0)
    {
        return new Archivo($this->select(array('idArchivo' => $idArchivo))->current()->getArrayCopy());
    }
    //------------------------------------------------------------------------------

    public function registrar(Archivo $archivoOBJ = null)
    {
        try {
            $this->table = 'archivos';
            $insert = new Insert($this->table);
            $datos = $archivoOBJ->getArrayCopy();
            unset($datos['idArchivo']);
            $insert->values($datos);
            $this->insertWith($insert);
        } catch (\Exception $e) {
            throw new \Exception($e);
        }
    }
    public function editar(Archivo $archivoOBJ = null)
    {
        try {
            $this->table = 'archivos';
            $idArchivo = (int) $archivoOBJ->getIdArchivo();
            $update = new Update($this->table);
            $datos = $archivoOBJ->getArrayCopy();
            $update->set($datos);
            $update->where("archivos.idArchivo = $idArchivo");
            //echo $update->getSqlString();
            return $this->updateWith($update);
        } catch (\Exception $e) {
            throw new \Exception($e);
        }
    }
    public function eliminar(Archivo $archivoOBJ = null)
    {
        try {
            $this->table = "archivos";
            $update = new Update($this->table);
            $update->set([
                'estado' => 'Eliminado',
                'modificadopor' => $archivoOBJ->getModificadopor(),
                'fechahoramod' => $archivoOBJ->getFechahoramod(),
            ]);
            $update->where("archivos.idArchivo = " . $archivoOBJ->getIdArchivo());
            //echo $update->getSqlString();
            $this->updateWith($update);
        } catch (\Exception $e) {
            throw new \Exception($e);
        }
    }
    public function activar(Archivo $archivoOBJ = null)
    {
        try {
            $this->table = "archivos";
            $update = new Update($this->table);
            $update->set([
                'estado' => 'Activo',
                'modificadopor' => $archivoOBJ->getModificadopor(),
                'fechahoramod' => $archivoOBJ->getFechahoramod(),
            ]);
            $update->where("archivos.idArchivo = " . $archivoOBJ->getIdArchivo());
            //echo $update->getSqlString();
            $this->updateWith($update);
        } catch (\Exception $e) {
            throw new \Exception($e);
        }
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

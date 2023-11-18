<?php

namespace Administracion;

use Laminas\Db\Adapter\AdapterInterface;
use Laminas\ModuleManager\Feature\ConfigProviderInterface;

class Module implements ConfigProviderInterface
{

    public function getConfig()
    {
        return include __DIR__ . '/../config/module.config.php';
    }

    public function getServiceConfig()
    {
        return [
            'factories' => [
                Modelo\DAO\EventoDAO::class => function ($container) {
                    $dbAdapter = $container->get('gestorportal_bd');
                    return new Modelo\DAO\EventoDAO($dbAdapter);
                },
                Modelo\DAO\SolicitudDAO::class => function ($container) {
                    $dbAdapter = $container->get('gestorportal_bd');
                    return new Modelo\DAO\SolicitudDAO($dbAdapter);
                },
                Modelo\DAO\ArchivoDAO::class => function ($container) {
                    $dbAdapter = $container->get('gestorportal_bd');
                    return new Modelo\DAO\ArchivoDAO($dbAdapter);
                },
                Modelo\DAO\LvmenDAO::class => function ($container) {
                    $dbAdapter = $container->get('gestorportal_bd');
                    return new Modelo\DAO\LvmenDAO($dbAdapter);
                },
            ],
        ];
    }

    public function getControllerConfig()
    {
        return [
            'factories' => [
                Controller\EventoController::class => function ($container) {
                    return new Controller\EventoController($container->get(Modelo\DAO\EventoDAO::class));
                },
                Controller\SolicitudController::class => function ($container) {
                    return new Controller\SolicitudController($container->get(Modelo\DAO\SolicitudDAO::class));
                },
                Controller\ArchivoController::class => function ($container) {
                    return new Controller\ArchivoController($container->get(Modelo\DAO\ArchivoDAO::class));
                },
                Controller\LvmenController::class => function ($container) {
                    return new Controller\LvmenController($container->get(Modelo\DAO\LvmenDAO::class));
                },
            ],
        ];
    }
}

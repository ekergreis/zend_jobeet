<?php
namespace Jobeet\Listener;

use Zend\EventManager\EventManagerInterface;
use Zend\EventManager\ListenerAggregateInterface;
use Zend\Mvc\MvcEvent;
use ZfcUser\Authentication\Adapter\AdapterChainEvent;

class UserListener implements ListenerAggregateInterface
{
    protected $listeners = array();

    public function attach(EventManagerInterface $events)
    {
        // $this->listeners[] = $events->attach('authenticate.success', array($this, 'authSuccess'));

        // Authentification sur page login
        $shareManager = $events->getSharedManager();
        $this->listeners[] = $shareManager->attach('ZfcUser\Authentication\Adapter\AdapterChain',
                'authenticate.success',
                array($this, 'authSuccess'), 100
            );

        // Appel page
        $this->listeners[] = $events->attach('dispatch', array($this, 'appelPage'));
    }

    public function detach(EventManagerInterface $events)
    {
        foreach ($this->listeners as $index => $listener) {
            if ($events->detach($listener)) {
                unset($this->listeners[$index]);
            }
        }
    }

    public function authSuccess(AdapterChainEvent $event)
    {
        // exit("User auth success : ".$event->getIdentity());
    }

    public function appelPage(MvcEvent $event)
    {
        // Get controller and action to which the HTTP request was dispatched.
        $controller = $event->getTarget();
        $controllerName = $event->getRouteMatch()->getParam('controller', null);
        $actionName = $event->getRouteMatch()->getParam('action', null);

        // Convert dash-style action name to camel-case.
        $actionName = str_replace('-', '', lcfirst(ucwords($actionName, '-')));

        // Get the instance of AuthManager service.
        $authService = $event->getApplication()->getServiceManager()->get('auth');
        var_dump($authService->getIdentity());
    }
}
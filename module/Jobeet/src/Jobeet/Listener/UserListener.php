<?php
namespace Jobeet\Listener;

use Zend\EventManager\EventInterface;
use Zend\EventManager\EventManagerInterface;
use Zend\EventManager\ListenerAggregateInterface;

class UserListener implements ListenerAggregateInterface
{
    protected $listeners = array();

    public function attach(EventManagerInterface $events)
    {
        // $this->listeners[] = $events->attach('ZfcUser\Authentication\Adapter\AdapterChain::authenticate.success', array($this, 'authSuccess'));
        $this->listeners[] = $events->getSharedManager()
            ->attach('ZfcUser\Authentication\Adapter\AdapterChain',
                'authenticate.success',
                array($this, 'authSuccess'), 100
            );
    }

    public function detach(EventManagerInterface $events)
    {
        foreach ($this->listeners as $index => $listener) {
            if ($events->detach($listener)) {
                unset($this->listeners[$index]);
            }
        }
    }

    public function authSuccess($e)
    {
        exit("User auth success : ".$e->getIdentity());
    }
}
<?php

class HomeController extends \Phalcon\Mvc\Controller
{

	public function initialize()
    {
        if($this->session->get('auth')==null)
    		$this->response->redirect("login/index");
    }

    public function indexAction()
    {
    	
    }

    public function mongoAction()
    {

    	phpinfo();

    }

}


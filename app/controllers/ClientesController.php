<?php

use Phalcon\Db\RawValue;

class ClientesController extends \Phalcon\Mvc\Controller
{

    public function indexAction()
    {

    }

    public function nuevoAction()
    {
    	$this->view->correo = 'nada';
    	if($this->request->isPost()){
    		$data_usuario = new Usuarios();

    		$data_usduario->usuarios_k = 3;
			$data_usuario->email = 'email@email.com';
			$data_usuario->password = 'password';
			$data_usuario->token = 'token';
			$data_usuario->activo = 'Y';
			$data_usuario->usuarios_niveles_k = 10;

    		$this->view->correo = $this->request->getPost('email');
    		$data_usuario->save();
    		
    	}
    }

}


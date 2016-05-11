<?php

class LoginController extends \Phalcon\Mvc\Controller
{

    public function initialize()
    {
        if($this->session->get('auth'))
            $this->response->redirect('home');
    }

    public function indexAction()
    {     
    	if ($this->request->isPost()) {

            $email = $this->request->getPost('email');
            $password = $this->request->getPost('password');

            $user = Usuarios::findFirst(array(
                "(email = :email:) AND password = :password: AND activo = 'Y'",
                'bind' => array('email' => $email, 'password' => sha1(md5($password)))
            ));

            if ($user != false) {
                $this->_registerSession($user);
                $this->flash->success('Welcome ' . $user->email);
                $this->dispatcher->forward(array('controller' => 'home', 'action' => 'index'));
            }
            else
            	$this->flash->error('correo electr&oacute;nico y/o contrase&ntilde;a incorrectos');

        }

    }


    // Register an authenticated user into session data @param Users $user

    private function _registerSession(Usuarios $user)
    {
        $this->session->set('auth', array(
            'usuarios_k' => $user->usuarios_k,
            'email' => $user->email
        ));
    }


    public function logoutAction()
    {

    	$this->session->remove('auth');
        $this->flash->success('Goodbye!');
        return $this->dispatcher->forward(array('controller' => 'login', 'action' => 'index'));

    }

}


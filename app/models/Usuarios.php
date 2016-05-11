<?php

use Phalcon\Mvc\Model\Validator\Email as Email;

class Usuarios extends \Phalcon\Mvc\Model
{

    /**
     *
     * @var integer
     */
    public $usuarios_k;

    /**
     *
     * @var string
     */
    public $email;

    /**
     *
     * @var string
     */
    public $password;

    /**
     *
     * @var string
     */
    public $token;

    /**
     *
     * @var string
     */
    public $activo;

    /**
     *
     * @var integer
     */
    public $usuarios_niveles_k;

    /**
     * Validations and business logic
     *
     * @return boolean
     */

    /**
     * Independent Column Mapping.
     */
    public function columnMap()
    {
        return array(
            'usuarios_k' => 'usuarios_k',
            'email' => 'email',
            'password' => 'password',
            'token' => 'token',
            'activo' => 'activo',
            'usuarios_niveles_k' => 'usuarios_niveles_k'
        );
    }

}

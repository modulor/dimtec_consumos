<?php

class Clientes extends \Phalcon\Mvc\Model
{

    /**
     *
     * @var integer
     */
    public $clientes_k;

    /**
     *
     * @var string
     */
    public $nombre;

    /**
     * Returns table name mapped in the model.
     *
     * @return string
     */
    public function getSource()
    {
        return 'clientes';
    }

    /**
     * Allows to query a set of records that match the specified conditions
     *
     * @param mixed $parameters
     * @return Clientes[]
     */
    public static function find($parameters = null)
    {
        return parent::find($parameters);
    }

    /**
     * Allows to query the first record that match the specified conditions
     *
     * @param mixed $parameters
     * @return Clientes
     */
    public static function findFirst($parameters = null)
    {
        return parent::findFirst($parameters);
    }

}

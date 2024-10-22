<?php

namespace Dao\Carros;

use Dao\Table;

class Carros extends Table
{
    public static function obtenerCarros()
    {
        $sqlstr = 'SELECT * FROM carros;';
        $carros = self::obtenerRegistros($sqlstr, []);
        return $carros;
    }
}

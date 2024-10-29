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

    public static function obtenerCarroPorId($id)
    {
        $sqlstr = 'SELECT * from carros where codigo=:codigo;';
        $carro = self::obtenerUnRegistro($sqlstr, ["codigo" => $id]);
        return $carro;
    }

    public static function agregarCarro($carro)
    {
        unset($carro['codigo']);
        unset($carro['creado']);
        unset($carro['actualizado']);
        $sqlstr = 'insert into  carros (
            modelo, marca, anio, kilometraje, 
            chasis, color, registro, cilindraje, notas,
            rodaje, estado, creado, precioventa, preciominio, 
            actualizado ) values
        (
            :modelo, :marca, :anio, :kilometraje, 
            :chasis, :color, :registro, :cilindraje, :notas, 
            :rodaje, :estado, now(), :precioventa, :preciominio, 
            now()
        );';
        return self::executeNonQuery($sqlstr, $carro);
    }

    public static function actualizarCarro($carro)
    {
        unset($carro['creado']);
        unset($carro['actualizado']);
        $sqlstr = "update carros set modelo = :modelo, marca = :marca, anio = :anio, kilometraje = :kilometraje, 
            chasis = :chasis, color = :color, registro = :registro, cilindraje = :cilindraje, notas = :notas,
            rodaje = :rodaje, estado = :estado, precioventa = :precioventa, preciominio = :preciominio, 
            actualizado = now() where codigo = :codigo;";

        return self::executeNonQuery($sqlstr, $carro);
    }

    public static function eliminarCarro($codigo)
    {
        $sqlstr = "delete from carros where codigo = :codigo;";
        return self::executeNonQuery($sqlstr, ["codigo" => $codigo]);
    }
}

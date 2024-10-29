<?php

namespace Controllers\Carros;

use Controllers\PublicController;
use Views\Renderer;
use Utilities\Site;
use Dao\Carros\Carros;

class CarrosForm extends PublicController
{
    private $viewData = [];
    private $modeDscArr = [
        "INS" => "Crear nuevo Carro",
        "UPD" => "Editando %s (%s)",
        "DSP" => "Detalle de %s (%s)",
        "DEL" => "Eliminando %s (%s)",
    ];
    private $mode = '';

    //Estructura del Producto
    private $carro = [
        "codigo" => 0,
        "modelo" => '',
        "marca" => '',
        "anio" => 0,
        "kilometraje" => 0,
        "chasis" => '',
        "color" => '',
        "registro" => '',
        "cilindraje" => 0,
        "notas" => '',
        "rodaje" => '',
        "estado" => 'ACT',
        "creado" => null,
        "precioventa" => 0,
        "preciominio" => 0,
        "actualizado" => null
    ];

    public function run(): void
    {
        // Ciclo de Vida del Formular
        // 1) Obtener variables del GET
        // 2) Si hay codigo de Carro y no es INS
        //      buscar el registor de carro por codigo
        // 3) Si existe POSTBACK
        //      capturar los datos del formulario
        //      validar los datos del formulario
        //      INS: insertar registro
        //      UPD: actualizar registro
        //      DEL: Eliminar registro
        //      Regresar a la lista actualizada
        // 4) Generar $viewData
        // 5) Renderezar formulario

        $this->inicializarForm();
        if ($this->isPostBack()) {
            $this->cargarDatosDelFormulario();
            $this->procesarAccion();
        }
        $this->generarViewData();
        Renderer::render('carros/carros_form', $this->viewData);
    }

    private function inicializarForm()
    {
        if (isset($_GET["mode"]) && isset($this->modeDscArr[$_GET["mode"]])) {
            $this->mode = $_GET["mode"];
        } else {
            Site::redirectToWithMsg("index.php?page=Carros-CarrosList", "Algo Sucedio Mal. Intente de Nuevo");
            die();
        }
        if ($this->mode !== 'INS' && isset($_GET["codigo"])) {
            $this->carro["codigo"] = $_GET["codigo"];
            $this->cargarDatosCarro();
        }
    }
    private function cargarDatosCarro()
    {
        $tmpCarro = Carros::obtenerCarroPorId($this->carro["codigo"]);
        $this->carro = $tmpCarro;
    }
    private function cargarDatosDelFormulario()
    {
        $this->carro["modelo"] = $_POST["modelo"];
        $this->carro["marca"] = $_POST["marca"];
        $this->carro["anio"] = intval($_POST["anio"]);
        $this->carro["kilometraje"] = intval($_POST["kilometraje"]);
        $this->carro["chasis"] = $_POST["chasis"];
        $this->carro["color"] = $_POST["color"];
        $this->carro["registro"] = $_POST["registro"];
        $this->carro["cilindraje"] = intval($_POST["cilindraje"]);
        $this->carro["notas"] = $_POST["notas"];
        $this->carro["rodaje"] = $_POST["rodaje"];
        $this->carro["estado"] = $_POST["estado"];
        $this->carro["precioventa"] = floatval($_POST["precioventa"]);
        $this->carro["preciominio"] = floatval($_POST["preciominio"]);
    }

    private function procesarAccion()
    {
        switch ($this->mode) {
            case 'INS':
                $result = Carros::agregarCarro($this->carro);
                if ($result) {
                    Site::redirectToWithMsg("index.php?page=Carros-CarrosList", "Carro registrado satisfactoriamente");
                }
                break;
            case 'UPD':
                $result = Carros::actualizarCarro($this->carro);
                if ($result) {
                    Site::redirectToWithMsg("index.php?page=Carros-CarrosList", "Carro actualizado satisfactoriamente");
                }
                break;
            case 'DEL':
                $result = Carros::eliminarCarro($this->carro['codigo']);
                if ($result) {
                    Site::redirectToWithMsg("index.php?page=Carros-CarrosList", "Carro eliminado satisfactoriamente");
                }
                break;
        }
    }

    private function generarViewData()
    {
        $this->viewData["mode"] = $this->mode;

        $this->viewData["modes_dsc"] = sprintf(
            $this->modeDscArr[$this->mode],
            $this->carro["modelo"],
            $this->carro["codigo"]
        );
        $this->viewData["carro"] = $this->carro;
        $this->viewData["readonly"] =
            ($this->viewData["mode"] === 'DEL'
                || $this->viewData["mode"] === 'DSP'
            ) ? 'readonly' : '';

        $this->viewData["showConfirm"] = ($this->viewData["mode"] != 'DSP');
    }
}

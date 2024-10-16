<?php

namespace Controllers\Sales;

use Controllers\PublicController;
use Views\Renderer;

class TopTen extends PublicController
{
    public function run(): void
    {
        $viewData = [
            "nombre_programado" => 'Orlando J Betancourth',
            "clases" => [
                "Programación de Portales Web I",
                "Programación de Portales Web II",
                "Programación de Negocios Web"
            ],
            "contactos" => [
                [
                    "nombre" => "Fulanito de Tal",
                    "telefono" => "09090909"
                ],
                [
                    "nombre" => "Menganito de Tal",
                    "telefono" => "69690969"
                ],
                [
                    "nombre" => "Sutanito de Tal",
                    "telefono" => "99999999"
                ]
            ]
        ];

        if ($this->isPostBack()) {
            $txtNombre = $_POST["txtNombre"];
            $rsltMessage = strtoupper($txtNombre) . " Procesado!!!!";
            $viewData["txtNombre"] = $txtNombre;
            $viewData["rsltMessage"] = $rsltMessage;
        }

        Renderer::render('sales/top10', $viewData);
    }
}

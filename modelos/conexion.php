<?php

class Conexion{

	static public function conectar(){

		$link = new PDO("mysql:host=localhost;dbname=dbns5qlif7g0mc",
			            "ujzn9rt2unjne",
			            "Minombre1");

		$link->exec("set names utf8");

		return $link;

	}

}
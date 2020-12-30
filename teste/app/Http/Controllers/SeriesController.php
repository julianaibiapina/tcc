<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class SeriesController extends Controller
{
    public function index(Request $request) {
        // url acessada: http://localhost/tcc/teste/public/series?parametro=valor1&parametro2=valor2
        // Para pegar os parâmetros dessa url
        // print_r($request->query());     
        // exit();

        $series = [
            'Grey\'s Anatomy',
            'Lost',
            'Agents of SHIELD'
        ];

        // return view ('series.index', ['series' => $series]);
        // Em um array, se temos a chave e o valor com o mesmo nome, podemos chamar a função compact() do PHP,
        //passando o nome da variável que queremos. Essa função busca uma variável com o nome que foi passado
        //e retorna um array no formato 'nome' => '$variável, gerando o mesmo resultado
        return view ('series.index', compact('series'));
    }

    public function create(){
        return view('series.create');
    }
}
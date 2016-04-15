<?php
require_once(__DIR__."/vendor/autoload.php");

use Symfony\Component\HttpFoundation\Request;

$app = new Silex\Application();
$app->register(new Silex\Provider\TwigServiceProvider(), array(
    'twig.path' => __DIR__ ."/frontend",));

//PDO - mysql
$data_source_name = "mysql:dbname=consumo;host=localhost;charset=utf8";
try {
  $database_handle = new PDO($data_source_name, "login","senha", array(PDO::ATTR_ERRMODE => PDO::ERRMODE_WARNING));
} catch (Exception $exc) {
  $exc->getMessage();
}

//Home
$app->get("/", function() use($app){
  return $app->redirect('listar');
});


$app->get("/listar", function() use($app,$database_handle){

    $statement_handle = $database_handle->prepare("SELECT id,aparelho,uso_mes,uso_dia,mensal_kwh
                                                    FROM estimativa
                                                    ORDER BY id DESC");
    $statement_handle->execute();
    $response = $statement_handle->fetchAll(PDO::FETCH_ASSOC);

  return $app[twig]->render("lista.twig", array('dados' => $response, ));
});

$app->match('/publicar', function(Request $request) use($app, $database_handle){

    if($request->getContent()){

        foreach ($request->request->all() as $key => $value) {
          if($key == "submit") continue;
          $post[$key] .= $value;
        }

       $statement_handle = $database_handle->prepare("INSERT INTO estimativa (aparelho,uso_mes,uso_dia,mensal_kwh)
                                                        VALUES (:aparelho,:uso_mes,:uso_dia,:mensal_kwh)");
       $statement_handle->execute($post);

       return $app->redirect('listar');
    }

    return $app[twig]->render('publicar.twig');

});


$app[debug] = true;
$app->run();

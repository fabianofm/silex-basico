<?php
require_once(__DIR__."/vendor/autoload.php");

use Symfony\Component\HttpFoundation\Request;

$app = new Silex\Application();
$app->register(new Silex\Provider\TwigServiceProvider(), array(
  'twig.path' => __DIR__ ."/frontend",));
$app->register(new Silex\Provider\DoctrineServiceProvider(), array(
  'db.options' => array(
      'driver' => 'pdo_mysql',
      'host' => 'localhost',
      'dbname' => 'consumo',
      'user' => 'root',
      'password' => 'senha',
      'charset' => 'utf8',
  ),
));

//Home - redireciona para a lista.
$app->get("/", function() use($app){
  return $app->redirect('listar');
});

$app->get("/listar", function() use($app){
  $sql = "SELECT id,aparelho,uso_mes,uso_dia,mensal_kwh
          FROM estimativa
          ORDER BY id DESC";
  $response = $app['db']->fetchAll($sql);

  return $app[twig]->render("lista.twig", array('dados' => $response, ));
});

$app->match('/publicar', function(Request $request) use($app){

  if($request->getContent()){

    foreach ($request->request->all() as $key => $value) {
      if($key == "submit") continue;
      $post[$key] .= $value;
    }

   $app['db']->insert('estimativa', $post);

   return $app->redirect('listar');
  }

  return $app[twig]->render('publicar.twig');

});

//$app[debug] = true;
$app->run();

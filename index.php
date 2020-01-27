<?php
//Não mostrar erros
//ini_set('display_errors', 0 );
//error_reporting(0);

date_default_timezone_set('America/Sao_Paulo');


// Inicia a Sessão
if(!isset($_SESSION)){
    session_start();
}

if(isset($_GET['id'])){
$id = $_GET['id'];
}else{
$id = '';
}

if(isset($_POST['produto_id'])){
$id_produto = $_POST['produto_id'];
}else{
$id_produto = '';
}
//if(!isset($_SESSION['PED']['pedido'])){
//$_SESSION['pedido'] = md5(uniqid(date('YmdHms')));
//}

//if(!isset($_SESSION['PED']['ref'])){
//$_SESSION['ref'] = date('ymdHms');
//}

//Inclui o autoload do Composer
require './lib/autoload.php';


//Chama as funções ailer();
$smarty = new Template();

// Categoria Masculino
$categorias = new Categorias();
$categorias->GetCategorias('masculino');

$categoriasfe = new Categorias();
$categoriasfe->GetCategorias('feminino');

$categoriasin = new Categorias();
$categoriasin->GetCategorias('infantil');

$categoriasbo = new Categorias();
$categoriasbo->GetCategorias('bolas');


$carrinho = new Carrinho();
$login = new Login();
// $info = new Info();
// $info->GetInfo();


//Valores para o template
$smarty->assign('NOME','LEANDRO LOPES');
$smarty->assign('GET_TEMA', Rotas::get_SiteTEMA());
$smarty->assign('GET_HOME', Rotas::get_SiteHOME());
$smarty->assign('PAG_CARRINHO', Rotas::pag_carrinho());
$smarty->assign('PAG_PRODUTOS', Rotas::pag_Produtos());
$smarty->assign('PAG_CONTATO', Rotas::pag_Contato());
$smarty->assign('PAG_MINHACONTA', Rotas::pag_MinhaConta());
$smarty->assign('SITE_NOME', Config::SITE_NOME);
$smarty->assign('CATEGORIAS', $categorias->GetItens());
$smarty->assign('CATEGORIASBO', $categoriasbo->GetItens());
$smarty->assign('CATEGORIASFE', $categoriasfe->GetItens());
//$smarty->assign('SUBTITULO', ucfirst($pagina));
$smarty->assign('CATEGORIASIN', $categoriasin->GetItens());
$smarty->assign('PRO', $carrinho->GetCarrinho());
$smarty->assign('TOTAL', Sistema::MoedaBR($carrinho->GetTotal()));
// Contagem de itens do carrinho
$smarty->assign('CONTAGEM', count($carrinho->itens));
//echo $pagina;
$smarty->assign('PAG_CONTA', Rotas::pag_ClienteConta());
$smarty->assign('LOGADO', Login::Logado());
$smarty->assign('PAG_CLIENTE_SENHA', Rotas::pag_ClienteSenha());
$smarty->assign('PAG_CLIENTE_PERFIL', Rotas::pag_ClientePerfil());
$smarty->assign('PAG_BUSCA', Rotas::pag_Busca());
$smarty->assign('PAG_BLOG', Rotas::pag_Blog());
// $smarty->assign('INFO', $info->GetItens());
 $smarty->assign('FACE', 'https://www.facebook.com/vanusaesportesregiao');
 $smarty->assign('INSTA', 'https://www.instagram.com/vanusaesportes');
 // $smarty->assign('TWITTER', $info->InfoTwitter());
 $smarty->assign('PAG_CLIENTE_FAVORITOS', Rotas::pag_ClienteFavoritos());
 $smarty->assign('PAG_CLIENTE_CONTA', Rotas::pag_ClienteConta());
 $smarty->assign('PAG_CLIENTE_PEDIDOS', Rotas::pag_ClientePedidos());

 require './config/Pag.php';








// Sempre no final
// $smarty->display('inc/top.tpl');
//$smarty->display('inc/header.tpl');
$smarty->display('index.tpl');
//$smarty->display('inc/footer.tpl');
<?php

if(isset($_GET['pro_id'])){
$id = $_GET['pro_id'];
}

$smarty = new Template();
$gravar = new Produtos();


if(Login::LogadoADM()){
	$smarty->assign('USER', $_SESSION['ADM']['user_nome']);
	$smarty->assign('DATA', $_SESSION['ADM']['user_data']);
	$smarty->assign('HORA', $_SESSION['ADM']['user_hora']);
	$smarty->assign('SOBRENOME', $_SESSION['ADM']['user_sobrenome']);
	$smarty->assign('STATUS', $_SESSION['ADM']['user_status']);
}

$produtos = new Produtos();
$produtos->GetProdutosID($id);


$categorias = new Categorias();
$categorias->GetCategorias('masculino');

$categoriasfe = new Categorias();
$categoriasfe->GetCategorias('feminino');

$categoriasin = new Categorias();
$categoriasin->GetCategorias('infantil');

$categoriasbo = new Categorias();
$categoriasbo->GetCategorias('bolas');


$smarty->assign('CATEGORIASFE', $categoriasfe->GetItens());
$smarty->assign('CATEGORIAS', $categorias->GetItens());
$smarty->assign('CATEGORIASIN', $categoriasin->GetItens());
$smarty->assign('CATEGORIASBO', $categoriasbo->GetItens());
$smarty->assign('GET_TEMA', Rotas::get_SiteTEMA());
$smarty->assign('GET_HOME', Rotas::get_SiteHOME());
$smarty->assign('GET_SITE_ADD', Rotas::get_SiteAdd());
$smarty->assign('PAG_PRODUTOS', Rotas::pag_Add_Produtos());
$smarty->assign('ERRO', '');
$smarty->assign('SUCESSO', '');
$smarty->assign('PRO', $produtos->GetItens());

if(isset($_POST['pro_apagar']) && isset($_POST['pro_id_apagar']) && $_POST['confirmar'] == 'SIM' && $_SESSION['ADM']['user_status'] == 'admin'){
  if($gravar->Apagar($_POST['pro_id_apagar'])){
       echo '<center><div class="col-md-9"><ul class="alert alert-warning margin-top" role="alert">
   <li> Apagando produto...</div></li>
   </ul></center>';
       @unlink($_POST['pro_img_arquivo']);
       Rotas::Redirecionar(2, Rotas::pag_Add_Produtos());
       exit();
  }else{
    $smarty->assign('ERRO', '<center><div class="col-md-9"><ul class="woo-error margin-top" role="alert">
   <li> Ocorreu um erro, tente novamente</div></li>
   </ul></center>');
  }
}

if(isset($_POST['pro_nome']) && isset($_POST['pro_valor']) && $_SESSION['ADM']['user_status'] == 'admin'){
$pro_nome      = $_POST['pro_nome'];
$pro_categoria = $_POST['pro_categoria'];
$pro_ativo     = $_POST['pro_ativo'];
$pro_modelo    = $_POST['pro_modelo'];
$pro_ref       = $_POST['pro_ref'];
$pro_valor     = $_POST['pro_valor'];
$pro_estoque     = $_POST['pro_estoque'];
$pro_peso      = $_POST['pro_peso'];
$pro_altura    = $_POST['pro_altura'];
$pro_largura  = $_POST['pro_largura'];
$pro_comprimento  = $_POST['pro_comprimento'];
$pro_img          = $_FILES['pro_img']['name'];
$pro_desc         = $_POST['pro_desc'];
$pro_slug      = $_POST['pro_slug'];
$pro_img_arquivo = $_POST['pro_img_arquivo'];
$pro_desconto        = $_POST['pro_desconto'];

// Upload da Imagem
if(!empty($_FILES['pro_img']['name'])){
   $upload = new ImageUpload();
   if($upload->Upload(900, 'pro_img', 'img/')){
     $pro_img = $upload->retorno;
     @unlink($_POST['pro_img_arquivo']);
   }else{
    exit('Erro ao enviar a imagem');
   }
}else{
  $pro_img = $_POST['pro_img_atual'];
}


$gravar->Preparar($pro_nome, $pro_categoria, $pro_ativo, $pro_modelo, $pro_ref, $pro_valor, $pro_estoque, $pro_peso, $pro_altura, $pro_largura, $pro_comprimento, $pro_img, $pro_desc, $pro_slug, $pro_desconto);

if($gravar->Alterar($id)){
  $site_tema = Config::GET_TEMA;
  echo '<div id="preloader">
         <img class="preloader" src="'.$site_tema.'/assets/images/gif/loading.gif" alt="">
      </div>';
  header("Refresh: 1");
}else{
	echo'<script>alert("Ocorreu um erro, tente novamente")</script>';
	exit();
 }
}

// Verifica se o usuário é admin
if(isset($_POST['pro_nome']) && isset($_POST['pro_valor']) && $_SESSION['ADM']['user_status'] != 'admin'){
  echo'<script>alert("Acesso Negado!!")</script>';
}

if(isset($_POST['pro_apagar']) && isset($_POST['pro_id_apagar']) && $_POST['confirmar'] == 'SIM' && $_SESSION['ADM']['user_status'] != 'admin'){
  echo'<script>alert("Acesso Negado!!")</script>';
}

//$smarty->display('./inc/top-painel.tpl');
//$smarty->display('./inc/header.tpl');
$smarty->display('add_produtos_editar.tpl');
//$smarty->display('./inc/footer.tpl');
?>
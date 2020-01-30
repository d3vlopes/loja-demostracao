<?php

if(isset($_GET['id'])){
$id = $_GET['id'];
}

$smarty = new Template();
$banner = new Banner();

$banner->GetBannerID($id);

$smarty->assign('GET_TEMA', Rotas::get_SiteTEMA());
$smarty->assign('GET_HOME', Rotas::get_SiteHOME());
$smarty->assign('PAG_BANNERS', Rotas::pag_Banners());
$smarty->assign('ERRO', '');
$smarty->assign('SUCESSO', '');
$smarty->assign('BANNER', $banner->GetItens());

if(isset($_POST['banner_apagar']) && isset($_POST['banner_id_apagar']) && $_POST['confirmar'] == 'SIM'){
  if($banner->Apagar($_POST['banner_id_apagar'])){
       echo '<center><div class="col-md-9"><ul class="alert alert-warning margin-top" role="alert">
   <li> Apagando banner...</div></li>
   </ul></center>';
       @unlink($_POST['banner_img_arquivo']);
       Rotas::Redirecionar(2, Rotas::pag_Banners());
       exit();
  }else{
    $smarty->assign('ERRO', '<center><div class="col-md-9"><ul class="woo-error margin-top" role="alert">
   <li> Ocorreu um erro, tente novamente</div></li>
   </ul></center>');
  }
}

if(isset($_POST['banner_titulo']) && isset($_POST['banner_ordem'])){
$banner_titulo     = $_POST['banner_titulo'];
$banner_descricao     = $_POST['banner_descricao'];
$banner_img          = $_FILES['banner_img']['name'];
$banner_img_arquivo = $_POST['banner_img_arquivo'];
$banner_ordem     = $_POST['banner_ordem'];

// Upload da Imagem
if(!empty($_FILES['banner_img']['name'])){
   $upload = new ImageUpload();
   if($upload->Upload(900, 'banner_img', 'banners/')){
     $banner_img = $upload->retorno;
     @unlink($_POST['banner_img_arquivo']);
   }else{
    exit('Erro ao enviar a imagem');
   }
}else{
  $banner_img = $_POST['banner_img_atual'];
}


$banner->Preparar($banner_titulo, $banner_descricao, $banner_ordem, $banner_img);

if($banner->Alterar($id)){
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



$smarty->display('add_editar_banner.tpl');

?>
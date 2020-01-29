<?php 

$smarty = new Template();

$login = new Login();
// Permite fazer o login utilizando o email
if(isset($_POST['usuario']) && isset($_POST['senha'])){
	$user = $_POST['usuario'];
	$senha = $_POST['senha'];
	$login->GetLogin($user, $senha);
}
// Faz login utilizando o nome de usuário
if(isset($_POST['usuario']) && isset($_POST['senha'])){
	$user = $_POST['usuario'];
	$senha = $_POST['senha'];
	$login->LoginUsuario($user, $senha);
}

$smarty->assign('USER', '');
// Verifica se o usuário está logado
if(Login::Logado()){
   $smarty->assign('USER', $_SESSION['CLI']['cli_nome']);
   $smarty->assign('IMG', $_SESSION['CLI']['cli_img']);
   $smarty->assign('PAG_LOGOFF', Rotas::pag_Logoff());
   $site_tema = Config::GET_TEMA;
   echo '<div id="preloader">
         <img class="preloader" src="'.$site_tema.'/assets/images/gif/loading.gif" alt="">
      </div>';
   Rotas::Redirecionar(1, Rotas::pag_ClienteConta());
}

if($_POST){
$smarty->assign('ERRO', '<center><ul class="woo-error" role="alert">
   <li> Nome de usuário ou senha errado</li>
   </ul></center>');
$smarty->assign('SHAKE', 'animated shake');
}else{
   $smarty->assign('ERRO', '');
   $smarty->assign('SHAKE', '');
}


$smarty->assign('LOGADO', Login::Logado());
$smarty->assign('PAG_MINHACONTA', Rotas::pag_MinhaConta());
$smarty->assign('PAG_CRIAR_CONTA', Rotas::pag_ClienteCadastro());
$smarty->assign('GET_TEMA', Rotas::get_SiteTEMA());
$smarty->assign('PAG_RECOVERY', Rotas::pag_ClienteRecovery());







$smarty->display('login.tpl');

?>
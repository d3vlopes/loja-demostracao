<?php 

$smarty = new Template();
$pedidos = new Pedidos();

$smarty->assign('GET_HOME', Rotas::get_SiteHOME());
$smarty->assign('ERRO', '');
$smarty->assign('SUCESSO', '');
$smarty->assign('PAG_MINHACONTA', Rotas::pag_ClienteConta());
$smarty->assign('GET_TEMA', Rotas::get_SiteTEMA());
$smarty->assign('PAG_CLIENTE_PEDIDOS', Rotas::pag_ClientePedidos());
$smarty->assign('PAG_CLIENTE_DADOS', Rotas::pag_ClienteDados());
$smarty->assign('PAG_CLIENTE_SENHA', Rotas::pag_ClienteSenha());
$smarty->assign('CORREIO', 'http://www.buscacep.correios.com.br/sistemas/buscacep/buscaCepEndereco.cfm');
$smarty->assign('PAG_CLIENTE_PERFIL', Rotas::pag_ClientePerfil());
$smarty->assign('PAG_CLIENTE_FAVORITOS', Rotas::pag_ClienteFavoritos());

$pedidos->GetPedidosCliente();
// Verifica se o usuário está logado
if(Login::Logado()){
   $smarty->assign('USER', $_SESSION['CLI']['cli_nome']);
   $smarty->assign('IMG', $_SESSION['CLI']['cli_img']);
   $smarty->assign('PAG_LOGOFF', Rotas::pag_Logoff());
   $smarty->assign('CPF', Sistema::formatCnpjCpf($_SESSION['CLI']['cli_cpf']));
}

foreach ($_SESSION['CLI'] as $campo => $valor) {
$smarty->assign(strtoupper($campo), $valor);
}


if(isset($_POST['cli_nome']) and isset($_POST['cli_email']) and isset($_POST['cli_cpf'])){

	$cli_nome = $_POST['cli_nome'];
	$cli_sobrenome = $_POST['cli_sobrenome'];
    $cli_data_nasc = $_POST['cli_data_nasc'];
    $cli_rg        = preg_replace("/\D+/", "", $_POST['cli_rg']);
    $cli_cpf       = preg_replace("/\D+/", "", $_POST['cli_cpf']); 
    $cli_ddd       = $_POST['cli_ddd'];
    $cli_fone      = $_POST['cli_fone'];
    $cli_celular   = $_POST['cli_celular'];
    $cli_endereco  = $_POST['cli_endereco'];
    $cli_numero    = $_POST['cli_numero'];
    $cli_bairro    = $_POST['cli_bairro'];
    $cli_cidade    = $_POST['cli_cidade'];
    $cli_uf        = $_POST['cli_uf'];
    $cli_cep       = $_POST['cli_cep'];
    $cli_email     = $_POST['cli_email'];
    $cli_senha     = $_POST['cli_senha'];
    $cli_data_cad  = $_SESSION['CLI']['cli_data_cad'];
    $cli_hora_cad  = $_SESSION['CLI']['cli_hora_cad'];;

    if($_SESSION['CLI']['cli_pass'] != md5($cli_senha)){
        echo'<script>alert("A senha para confirmar a alteração está incorreta")';
        echo '</script>';
        Rotas::Redirecionar(0, Rotas::pag_ClienteDados());
        exit();
     }

     $clientes = new Clientes();

     $clientes->Preparar($cli_nome, $cli_sobrenome, $cli_data_nasc, $cli_rg, $cli_cpf, $cli_ddd, $cli_fone, $cli_celular, $cli_endereco, $cli_numero, $cli_bairro, $cli_cidade, $cli_uf, $cli_cep, $cli_email, $cli_data_cad, $cli_hora_cad, $cli_senha);

     if(!$clientes->Editar($_SESSION['CLI']['cli_id'])){
        echo '<div class="alert alert-danger">Ocorreu um erro ao editar os dados</div>';
      exit();
     }else{
        $login = new Login();
        $login->GetLogin($cli_email, $cli_senha);
        $site_tema = Config::GET_TEMA;
        echo '<div id="preloader">
         <img class="preloader" src="'.$site_tema.'/assets/images/gif/loading.gif" alt="">
      </div>';
        Rotas::Redirecionar(1, Rotas::pag_ClienteDados());
     }

}
else{
    $smarty->display('cliente_dados.tpl');

}

?>
<?php 

class Login extends Conexao{
	private $user, $senha;

	function __construct(){
		parent::__construct();
	}
// Função para fazer login utilizando o email
  function GetLogin($user, $senha){
	$this->setUser($user);
	$this->setSenha($senha);

	$query = "SELECT * FROM {$this->prefix}clientes WHERE cli_email = :email AND cli_pass = :senha";

	$params = array(
      ':email' => $this->getUser(),
      ':senha' => $this->getSenha(),

	);

	$this->ExecuteSQL($query, $params);

	if($this->TotalDados() > 0){
		$lista = $this->ListarDados();

		$_SESSION['CLI']['cli_id'] = $lista['cli_id'];
		$_SESSION['CLI']['cli_nome']      =  $lista['cli_nome'];
    $_SESSION['CLI']['cli_sobrenome'] =  $lista['cli_sobrenome'];
    $_SESSION['CLI']['cli_endereco']  =  $lista['cli_endereco'];
    $_SESSION['CLI']['cli_numero']    =  $lista['cli_numero'];
    $_SESSION['CLI']['cli_bairro']    =  $lista['cli_bairro'];
    $_SESSION['CLI']['cli_cidade']    =  $lista['cli_cidade'];
    $_SESSION['CLI']['cli_uf']        =  $lista['cli_uf'];
    $_SESSION['CLI']['cli_cpf']       =  $lista['cli_cpf'];
    $_SESSION['CLI']['cli_cep']       =  $lista['cli_cep'];
    $_SESSION['CLI']['cli_rg']        =  $lista['cli_rg'];
    $_SESSION['CLI']['cli_ddd']       =  $lista['cli_ddd'];
    $_SESSION['CLI']['cli_fone']      =  $lista['cli_fone'];
    $_SESSION['CLI']['cli_email']     =  $lista['cli_email'];
    $_SESSION['CLI']['cli_celular']   =  $lista['cli_celular'];
    $_SESSION['CLI']['cli_data_nasc'] =  $lista['cli_data_nasc'];
    $_SESSION['CLI']['cli_hora_cad']  =  $lista['cli_hora_cad'];
    $_SESSION['CLI']['cli_data_cad']  =  $lista['cli_data_cad'];
    $_SESSION['CLI']['cli_pass']      =  $lista['cli_pass']; 
    $_SESSION['CLI']['cli_img']      =  $lista['cli_img'];
		$_SESSION['CLI']['cli_user_name']      =  $lista['cli_user_name'];
	}else{
	
	}

   }

  // Função para fazer login utilizando o nome de usuário
  function LoginUsuario($user, $senha){
  $this->setUser($user);
  $this->setSenha($senha);

  $query = "SELECT * FROM {$this->prefix}clientes WHERE cli_user_name = :nome AND cli_pass = :senha";

  $params = array(
      ':nome' => $this->getUser(),
      ':senha' => $this->getSenha(),

  );

  $this->ExecuteSQL($query, $params);

  if($this->TotalDados() > 0){
    $lista = $this->ListarDados();

    $_SESSION['CLI']['cli_id'] = $lista['cli_id'];
    $_SESSION['CLI']['cli_nome']      =  $lista['cli_nome'];
    $_SESSION['CLI']['cli_sobrenome'] =  $lista['cli_sobrenome'];
    $_SESSION['CLI']['cli_endereco']  =  $lista['cli_endereco'];
    $_SESSION['CLI']['cli_numero']    =  $lista['cli_numero'];
    $_SESSION['CLI']['cli_bairro']    =  $lista['cli_bairro'];
    $_SESSION['CLI']['cli_cidade']    =  $lista['cli_cidade'];
    $_SESSION['CLI']['cli_uf']        =  $lista['cli_uf'];
    $_SESSION['CLI']['cli_cpf']       =  $lista['cli_cpf'];
    $_SESSION['CLI']['cli_cep']       =  $lista['cli_cep'];
    $_SESSION['CLI']['cli_rg']        =  $lista['cli_rg'];
    $_SESSION['CLI']['cli_ddd']       =  $lista['cli_ddd'];
    $_SESSION['CLI']['cli_fone']      =  $lista['cli_fone'];
    $_SESSION['CLI']['cli_email']     =  $lista['cli_email'];
    $_SESSION['CLI']['cli_celular']   =  $lista['cli_celular'];
    $_SESSION['CLI']['cli_data_nasc'] =  $lista['cli_data_nasc'];
    $_SESSION['CLI']['cli_hora_cad']  =  $lista['cli_hora_cad'];
    $_SESSION['CLI']['cli_data_cad']  =  $lista['cli_data_cad'];
    $_SESSION['CLI']['cli_pass']      =  $lista['cli_pass']; 
    $_SESSION['CLI']['cli_img']      =  $lista['cli_img'];
    $_SESSION['CLI']['cli_user_name']      =  $lista['cli_user_name'];
    
  }else{
  
   }
  }

  function GetLoginADM($user,$senha){
        
        $this->setUser($user);
        $this->setSenha($senha);
        
        $query = "SELECT * FROM {$this->prefix}user WHERE user_email = :email AND user_pw = :senha";
        
        $params = array(':email'=>  $this->getUser(),
                        ':senha'=>  $this->getSenha());
        
           $this->ExecuteSQL($query,$params);
           
           // caso o login seja efetivado com exito 
           if($this->TotalDados() > 0):
               
             $lista = $this->ListarDados();
               
             $_SESSION['ADM']['user_id']     =  $lista['user_id'];
             $_SESSION['ADM']['user_nome']   =  $lista['user_nome'];
             $_SESSION['ADM']['user_email']  =  $lista['user_email'];
             $_SESSION['ADM']['user_pw']     =  $lista['user_pw'];
             $_SESSION['ADM']['user_data']     = Sistema::DataAtualBR();
             $_SESSION['ADM']['user_hora']     = Sistema::HoraAtual();
             $_SESSION['ADM']['user_status']     =  $lista['user_status'];

             return TRUE;
           // caso o login seja incorreto 
           else:    
               
               
                
           
                return FALSE;
           endif;

    }

    function GetLoginNomeADM($user,$senha){
        
        $this->setUser($user);
        $this->setSenha($senha);
        
        $query = "SELECT * FROM {$this->prefix}user WHERE user_usuario = :nome AND user_pw = :senha";
        
        $params = array(':nome'=>  $this->getUser(),
                        ':senha'=>  $this->getSenha());
        
           $this->ExecuteSQL($query,$params);
           
           // caso o login seja efetivado com exito 
           if($this->TotalDados() > 0):
               
             $lista = $this->ListarDados();
               
             $_SESSION['ADM']['user_id']     =  $lista['user_id'];
             $_SESSION['ADM']['user_nome']   =  $lista['user_nome'];
             $_SESSION['ADM']['user_sobrenome']   =  $lista['user_sobrenome'];
             $_SESSION['ADM']['user_usuario']   =  $lista['user_usuario'];
             $_SESSION['ADM']['user_email']  =  $lista['user_email'];
             $_SESSION['ADM']['user_pw']     =  $lista['user_pw'];
             $_SESSION['ADM']['user_data']     = Sistema::DataAtualBR();
             $_SESSION['ADM']['user_hora']     = Sistema::HoraAtual();
             $_SESSION['ADM']['user_status']     =  $lista['user_status'];

             return TRUE;
           // caso o login seja incorreto 
           else:    
               
               
                
           
                return FALSE;
           endif;

    }

  static function AcessoNegado(){
    $site_tema = Config::GET_TEMA;
    echo '<div id="preloader">
         <img class="preloader" src="'.$site_tema.'/assets/images/gif/loading.gif" alt="">
      </div>';
    Rotas::Redirecionar(1, Rotas::pag_MinhaConta());
  }
  // Função para verificar se o usuário está logado
   static function Logado(){
    if(isset($_SESSION['CLI']['cli_email']) && isset($_SESSION['CLI']['cli_id'])){
      return TRUE;

    }else{
      return FALSE;
    }

   }

   // Função para verificar se o administrador está logado
   static function LogadoADM(){
    if(isset($_SESSION['ADM']['user_nome']) && isset($_SESSION['ADM']['user_id'])){
      return TRUE;

    }else{
      return FALSE;
    }
  }
   // Função para fazer Logoff
   static function Logoff(){
    $site_tema = Config::GET_TEMA;
    unset($_SESSION['CLI']);
    echo '<div id="preloader">
         <img class="preloader" src="'.$site_tema.'/assets/images/gif/loading.gif" alt="">
      </div>';
    Rotas::Redirecionar(2, Rotas::pag_MinhaConta());
   }

   // Função para fazer Logoff da área administrativa
   static function LogoffADM(){
    $site_tema = Config::GET_TEMA;
    unset($_SESSION['ADM']);
    echo '<div id="preloader">
         <img class="preloader" src="'.$site_tema.'/assets/images/gif/loading.gif" alt="">
      </div>';
    Rotas::Redirecionar(2, 'login.php');
   }

   // FUNCAO MENU DO CLIENTE

   static function MenuCliente(){
        
   // verifo se não esta logado 
  if(!self::Logado()):
  self::AcessoNegado();
  Rotas::Redirecionar(2, Rotas::pag_MinhaConta());
                              
  // caso nao redirecione  saiu  do bloco
  exit();
                            
  // caso esteja mostra a tela minha conta 
  else:
                
  $smarty = new Template();
        
  $smarty->assign('PAG_CONTA', Rotas::pag_ClienteConta());
  $smarty->assign('PAG_CARRINHO', Rotas::pag_Carrinho());
  $smarty->assign('PAG_LOGOFF', Rotas::pag_Logoff());
  //$smarty->assign('PAG_CLIENTE_PEDIDOS', Rotas::pag_CLientePedidos());
  //$smarty->assign('PAG_CLIENTE_DADOS', Rotas::pag_CLienteDados());
  //$smarty->assign('PAG_CLIENTE_SENHA', Rotas::pag_CLienteSenha());
  $smarty->assign('USER', $_SESSION['CLI']['cli_nome']);
        
  $smarty->display('user-profile/menu-cliente.tpl');
        
  endif;
  }

   private function setUser($user){
   	$this->user = $user;
   }

   private function setSenha($senha){
   	$this->senha = md5($senha);
   //Sistema::Criptografia()
   }

   function getUser(){
   	return $this->user;
   }

   function getSenha(){
   	return $this->senha;
   }

}

?>
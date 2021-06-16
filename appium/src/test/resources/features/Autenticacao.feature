#language: pt
@REGRESSION @MANUAL
Funcionalidade: Autenticação

  Contexto:
    Dado que o cache do aplicativo esteja vazio

  @manual-result:failed
  Cenário: Tela de autenticação sem / com internet
    Dado que o usuário não tenha conexão com internet
    E abre o aplicativo
    Quando a tela de autenticação é exibida
    Entao o ícone "Wi-Fi" dever aparecer na cor "vermelha"
    Quando o usuario abre a "Visão geral de notificações" do celular
    E habilita a internet (dados ou Wi-Fi)
    E Fecha a "Visão geral de notificações"
    Entao o ícone "Wi-Fi" dever aparecer na cor "verde"

  @manual-result:passed
  Cenário: Tela de autenticação - sem internet
    Dado que o usuário não tenha conexão com internet
    E abre o aplicativo
    Quando a tela de autenticação é exibida
    Entao o ícone "Wi-Fi" dever aparecer na cor "vermelha"
    Quando o usuario insere credenciais válidas
    E clica em autenticar
    Então a mensagem "A autenticação no App não pode ser efetuada, verifique suas credenciais ou efetue a Autenticação com conexão a internet" é exibida

  @manual-result:passed
  Cenário: Tela de autenticação - Login Válido
    Dado que o usuário tenha conexão com internet
    E abre o aplicativo
    Quando a tela de autenticação é exibida
    Entao o ícone "Wi-Fi" dever aparecer na cor "verde"
    Quando o usuario insere credenciais válidas
    E clica em autenticar
    Então as seguintes permissões para acessar os recursos do dispositivo serão solicitadas:
      |Localização                    |
      |Acessar Fotos, mídia e arquivos|
      |Tirar fotos e videos           |
    E após a confirmação das permissões, será exibida a tela Inicial (Produção e status do Cartão de memória)

  @manual-result:passed
  Cenário: Tela de autenticação - Login Inválido
    Dado que o usuário tenha conexão com internet
    E abre o aplicativo
    Quando a tela de autenticação é exibida
    Entao o ícone "Wi-Fi" dever aparecer na cor "verde"
    Quando o usuario insere credenciais Inválidas
    E clica em autenticar
    Então a mensagem "A autenticação no App não pode ser efetuada, verifique suas credenciais ou efetue a Autenticação com conexão a internet" é exibida

  @manual-result:passed
  Cenário: Tela de autenticação - Sem nenhum dispositivo cadastrado
    Dado que o usuário tenha conexão com internet
    E não tenha nenhum dispositivo cadastrado para o seu login
    E abre o aplicativo
    Quando a tela de autenticação é exibida
    Entao o ícone "Wi-Fi" dever aparecer na cor "verde"
    Quando o usuario insere credenciais válidas
    E clica em autenticar
    Então a mensagem "Não há dispositivos cadastrados para o usuário" é exibida

  @manual-result:passed
  Cenário: Tela de autenticação - Dispositivo não autorizado
    Dado que o usuário tenha conexão com internet
    E que possua algum dispositivo cadastrado para o seu login
    Mas utiliza um dispositivo não cadastrado para acessar o app
    E abre o aplicativo
    Quando a tela de autenticação é exibida
    Entao o ícone "Wi-Fi" dever aparecer na cor "verde"
    Quando o usuario insere credenciais válidas
    E clica em autenticar
    Então a mensagem "Dispositivo não autorizado" é exibida
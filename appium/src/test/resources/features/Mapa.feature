#language: pt
@REGRESSION @MANUAL
Funcionalidade: Mapa

  @manual-result:passed
  Cenário: Mapa - Visualizar Mapa
    Dado que o cache do aplicativo esteja vazio
    E que o usuário faz login com credenciais válidas
    E permite todos os 3 acessos
    E navega até a tela "Mapa"
    Então o usuário é direcionado para a página de "importação de Distribuição"
    Quando o usuário clica no "Ícone de Importar Distribuição"
    Então todas as distribuições disponíveis para este usuário são carregadas no app
    Quando o usuário clica em voltar e clica novamente no "Mapa"
    Então o usuário é direcionado para a página de "importação de Parâmetros Geoposte"
    Quando o usuário clica no "Ícone de Importar Parâmetros"
    Então todas os parâmetros disponíveis para este usuário são carregadas no app
    Quando o usuário clica em voltar e clica novamente no "Mapa"
    Então o mapa é exibido
    E os botões de "localização" e "adicionar mais postes" são exibidos na tela
    Quando clico no botão de "localização"
    Então um toast é exibido informando suas coordenadas no momento atual
    Quando clico no botão de "adicionar mais postes"
    Então uma a tela de "Poste Cadastro" é exibida

  @manual-result:passed
  Cenário: Mapa - Visualizar um poste no mapa
    Dado que o usuário faz login com credenciais válidas
    E que a base já criou uma distribuição para o usuário em campo
    E o usuário navega ate "Importar Distribuição"
    E localiza na página do app a distribuição que deseja importar os postes
    Quando o usuário clica em cima da "Distribuição" atribuída a ele
    Então um popup é exibido com a frase "Confirma a importação"
    Quando o usuário escolhe a opção "Sim"
    Então a mensagem "Registro atualizado com sucesso" é exibida
    Quando o usuário clica em voltar e clica novamente no "Mapa"
    Então o poste que o usuário deseja inspecionar é exibido no mapa
    Quando o usuário clica na tela
    Então os botões de zoom in e zoom out aparecem na tela
    E o usuário também pode fazer o movimento de zoom in e zoom out

  @manual-result:failed
  Cenário: Postes - Adicionar um poste novo (a partir do Mapa)
    Dado que o usuário faz login com credenciais válidas
    E Navega ate a tela "Mapa"
    Quando o usuário clica no ícone de "Adicionar um novo poste"
    Então uma tela de "cadastro" é mostrado
    Dado que os seguintes dados são preenchidos na aba "Dados":
      |Barramento|Alta Tensão|
      |Tipo Rede |Alta Tensão|
      |Tipo Poste|Parceiro   |
    Quando faço o movimento de swipe
    Então o usuário é direcionado para próxima tela
    Dado que os seguintes dados são preenchidos:
      |GPS    |
      |SERVIÇO|
      |FOTO   |
    Quando o usuario clica em salvar
    Entao a mensagem "Registro gravado com sucesso" é exibida
    Quando clico na seta de voltar
    Entao a tela de configuração é exibida
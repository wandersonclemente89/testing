#language: pt
@REGRESSION @MANUAL
Funcionalidade: Tela de Configuração

  Contexto:
    Dado que o usuario faz login com credenciais válidas
    E Navega ate a tela "configuração"

  @manual-result:passed
  Cenário: Configuração - Estado
    E que o sistema possui serviços em diferentes estados
    Quando seleciona a opção "Estados"
    Entao a lista de todos os estados é exibida
    Quando um estado é selecionado
    Entao somente os serviços daquele estado devem ser possiveis de importação

  @manual-result:passed
  Cenário: Configuração - Cartão de Memória
    Quando seleciona a opção "Cartão de memória"
    E habilita o EzShare
    Entao o EzShare é exibido na tela inicial de produção
    Quando desabilita o EzShare
    Entao o flashAir é exibido na tela inicial de produção

  @manual-result:passed
  Cenário: Configuração - Coordenadas (Desabilitadas)
    Quando seleciona a opção "Coordenadas"
    E desabilita a captura de coordenadas
    E navega ate um poste importado
    E adiciona as fotos
    Quando clica em salvar
    Entao a mensagem "Registro Atualizado com Sucesso" é exibida

  @manual-result:passed
  Cenário: Configuração - Coordenadas (Habilitadas)
    Quando seleciona a opção "Coordenadas"
    E habilita a captura de coordenadas
    E navega ate um poste importado
    E adiciona as fotos
    Quando clica em salvar
    Entao a mensagem "Informe as coordenadas" é exibida

  @manual-result:passed
  Cenário: Configuração - GPS Trimble Catalyst
    E o usuário nao tenha o aplicativo "Trimble Mobile Manager" instalado no device
    Quando seleciona a opção "GPS Trimble Catalyst"
    E habilita o GPS externo
    Entao a mensagem "Trimble Mobile Manager não encontrado. Instalar o Trimble Mobile Manager" é exibida
    E o usuario é redirecionado para a play store na pagina do app "Trimble Mobile Manager"

  @manual-result:passed
  Cenário: Configuração - GPS precisão horizontal
    Quando seleciona a opção "GPS precisão horizontal"
    E toca em "precisão Horizontal (m)"
    Entao uma lista de precisão é exibida
    Quando seleciona uma precisão entre as disponiveis
    Entao a precisão é escolhida
    E a tela anterior de configuração é exibida
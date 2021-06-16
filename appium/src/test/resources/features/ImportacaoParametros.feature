#language: pt
@REGRESSION @MANUAL
Funcionalidade: Importação de Parâmetros do GeoPoste

  Contexto:
    Dado que o usuario faz login com credenciais válidas
    E Navega ate a tela "Parâmetros - Geoposte"

  @manual-result:passed
  Cenário: Importação de Parâmetros - Nenhum item selecionado
    E não seleciona nenhum dos itens disponiveis (Empresas, Serviço, Irregularidades)
    Quando o usuario toca o ícone de importação
    Entao a mensagem "Nenhum item selecionado para importação" é exibida.

  @manual-result:passed
  Cenário: Importação de Parâmetros - todos os item selecionado
    E  seleciona todos itens disponiveis (Empresas, Serviço, Irregularidades)
    Quando o usuario toca o ícone de importação
    Entao a mensagem "Importação das Empresas finalizada" é exibida.
    E a mensagem "Importação dos Serviços finalizada" é exibida.
    E a mensagem "Importação das irregulariades finalizadas" é exibida.
    E a quantidade de itens importados aparecem ao lado de cada item
    E o botão de importação é desabilitado

  @manual-result:failed
  Cenário: Importação de Parâmetros - Importação de itens ja importados
    E os parametros ja foram importados uma vez previamente
    E novas empresas, serviços e irregularidades são cadastradas no sistema
    E seleciona todos itens disponiveis (Empresas, Serviço, Irregularidades)
    E a quantidade de itens importados aparecem ao lado de cada item
    Quando o usuario toca o ícone de importação
    Entao somente os novos items adicionados após a primeira importação são importados
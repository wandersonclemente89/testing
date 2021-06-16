#language: pt
@REGRESSION @MANUAL
Funcionalidade: Importação de Distribuição do Geoposte

  Contexto:
    Dado que o usuario faz login com credenciais válidas
    E Navega ate a tela "Distribuição - Geoposte"

  @manual-result:passed
  Cenário: Importação de Distribuição - Nenhuma distribuição disponivel
    E que não exista nenhuma distribuição associada ao usuário logado
    Quando o usuario toca o ícone de importação
    Entao a mensagem "Não há distribuições para importação" é exibida

  @manual-result:passed
  Cenário: Importação de Distribuição - Importar poste ja importados anteriormente
    E exista uma distribuição ja importada anteriormente
    E todos os postes desta distribuição estejam importados
    Quando o usuario toca duas vezes no card da distribuição
    Entao a mensagem "Todos os postes desta distribuição ja foram importados" é exibida

  @manual-result:passed
  Cenário: Importação de Distribuição - Importar postes
    E exista uma distribuição ainda não importada anteriormente
    Quando o usuario toca o ícone de importação
    Entao a nova distribuição é exibida
    E os icones X e localizção são exibidos em vermelho
    Quando o usuario toca no card da distribuição
    Entao um pop-up com a mensagem "Confirma importação?" é exbida
    Quando o usuário escolhe não
    Entao a tela de importação de distribuição é exibida novamente
    Quando o usuario toca no card da distribuição
    Entao um pop-up com a mensagem "Confirma importação?" é exbida
    Quando o usuário escolhe sim
    Entao a mensagem "O registro foi atualizado com sucesso" é exibida
    E os icones X e localizção são exibidos em verde

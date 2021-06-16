#language: pt
@REGRESSION @MANUAL
Funcionalidade: Exportação de Postes para o GeoPoste

  Contexto:
    Dado que o usuario faz login com credenciais válidas
    E Navega ate a tela "Exportação de Postes"

  @manual-result:passed
  Cenário: Exportação de Postes - Sucesso
    E existe pelo menos 1 poste para ser exportado
    E o numero de postes a ser exportado é exibido na tela
    Quando o usuário clica no botao de upload
    Entao a mensagem "Fim do processamento" é exibida

  @manual-result:passed
  Cenário: Exportação de Postes - Sem nenhum poste
    E que não exista nenhum poste para ser exportado
    Então o valor 0 é mostrado na tela
    E o botão de upload é desativado

  @manual-result:passed
  Cenário: Exportação de Postes - Sem importar parâmetros
    E existe pelo menos 1 poste para ser exportado
    E os parâmetros não foram importados
    Então o aplicativo é redirecionado para a tela de importação de parâmetros

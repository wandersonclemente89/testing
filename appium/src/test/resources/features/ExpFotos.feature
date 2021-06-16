#language: pt
@REGRESSION @MANUAL
Funcionalidade: Exportação de Fotos para o GeoPoste

  Contexto:
    Dado que o usuario faz login com credenciais válidas
    E Navega ate a tela "Exportação de Fotos"

  @manual-result:passed
  Cenário: Exportação de Fotos - Sucesso
    E existem fotos para serem exportadas
    E o numero de fotos a ser exportado é exibido na tela
    Quando o usuário clica no botao de upload
    Entao a mensagem "Fim do processamento" é exibida

  @manual-result:passed
  Cenário: Exportação de Fotos - Sem nenhuma foto
    E que não exista nenhuma foto para ser exportado
    Então o valor 0 é mostrado na tela
    E o botão de upload é desativado

  @manual-result:passed
  Cenário: Exportação de Fotos - Sem exportar postes
    E existem fotos para serem exportadas
    E existe pelo menos 1 poste para ser exportado
    E os postes não foram exportados
    Então o aplicativo é redirecionado para a tela de exportação de postes

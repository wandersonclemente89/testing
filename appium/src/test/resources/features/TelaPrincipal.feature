#language: pt
@REGRESSION @MANUAL
Funcionalidade: Tela Principal

  Contexto:
    Dado que o usuario faz login com credenciais válidas

  @manual-result:passed
  Cenário: Tela principal - Validar informações
    Quando que o usuário navega atá a tela principal
    Entao verifica que os seguintes dados são exibidos:
    |Quantidade de pastas do cartão de memória      |
    |Quantidade de arquivos da última pasta         |
    |Ícone com o status de conexão do cartão        |
    |Quantidade de distribuições importadas         |
    |Quantidade de postes importados                |
    |Quantidade de postes cadastrados               |
    |Quantidade de postes novos                     |
    |Quantidade de postes exportados para o Geoposte|
    |Quantidade de postes cadastrados por dia       |

  @manual-result:passed
  Cenário: Conexão da camera externa
    E conecta o device no Wi-Fi da camera externa
    Quando que o usuário navega atá a tela principal
    Entao o icone de Wi-Fi da camera externa deve ser verde
    Quando o device perde conexão com o Wi-Fi da camera
    Então o ícone de Wi-Fi da camera externa deve ser vermelho


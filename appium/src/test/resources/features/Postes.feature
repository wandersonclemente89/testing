#language: pt
@REGRESSION @MANUAL
Funcionalidade: Postes

  Contexto:
      Dado que o usuário faz login com credenciais válidas
      E Navega ate a tela "Postes"

  @manual-result:passed
  Cenário: Postes - Listagem de postes
    E o sistema possui alguns postes já importados sem fotos e localização
    Então verifica que o ícone de localização é exibido em cinza
    E não possui o ícone de "foto"

  @manual-result:passed
  Cenário: Postes - Detalhes
    E o sistema possui alguns postes já importados
    Entao as seguintes informações são exibidas:
      |ID       |
      |Dist ID  |
      |Tipo     |
      |Latitude |
      |Longitude|

  @manual-result:passed
  Cenário: Postes - Edição de postes
    E o sistema possui alguns postes já importados sem fotos e localização
    Quando o usuário clica e segura em um dos postes listado
    Entao a informações do postes são exibidas para edição
    |Dados  |
    |GPS    |
    |Serviço|
    |Foto   |
    |OBS    |

  @manual-result:failed
  Cenário: Postes - Edição de postes (Sem Serviço)
    E o sistema possui alguns postes já importados sem fotos e localização
    E o GPS externo está habilitado
    Quando o usuário clica e segura em um dos postes listado
    Entao a informações do postes são exibidas para edição
      |Dados  |
      |GPS    |
      |Serviço|
      |Foto   |
      |OBS    |
    Quando o usuário navega até a aba "GPS"
    E captura as coordenadas do poste
    E o usuário navega até a aba "Serviço"
    E não seleciona nenhum serviço
    E o usuário navega até a aba "Foto"
    E adiciona as 5 fotos necessárias
    E o usuário navega até a aba "OBS"
    E clica em salvar
    Entao a mensagem "Não foi adicionado nenhum serviço, por favor verifique os serviços informados." é exibida

  @manual-result:passed
  Cenário: Postes - Edição de postes (Sem Fotos)
    E o sistema possui alguns postes já importados sem fotos e localização
    E o GPS externo está habilitado
    Quando o usuário clica e segura em um dos postes listado
    Entao a informações do postes são exibidas para edição
      |Dados  |
      |GPS    |
      |Serviço|
      |Foto   |
      |OBS    |
    Quando o usuário navega até a aba "GPS"
    E captura as coordenadas do poste
    E o usuário navega até a aba "Serviço"
    E seleciona algum serviço da lista
    E o usuário navega até a aba "OBS"
    E clica em salvar
    Entao a mensagem "Não foram tiradas todas as fotos obrigatórias, por favor verifique na visualição de fotos." é exibida

  @manual-result:passed
  Cenário: Postes - Adicionar um poste novo
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
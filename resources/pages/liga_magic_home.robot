*** Settings ***
Resource  ../main.robot

*** Variables ****
&{home}
# Aqui seria uma boa pratica por o 'input', header de pesquisa, em uma page exclusiva para ele, ou então, pasta de 'geral',
#pois o header não é exclusivo da home page, aparecendo em várias outras pages ao longo do site.
#...  inputPesquisa=//input[@id="mainsearch"]

...  botaoFecharAd=//img[@id="campanha-del-1"]

# Aqui tbm, a mesma situação
#...  primeiroResultadoBusca=(//section[@class="item"])[1]

*** Keywords ***
Entro no site
    #Open Browser  ${geral.URL}  ${geral.Browser}
    #Maximize Browser Window
    Wait Until Element Is Visible  ${home.botaoFecharAd}
    Click Element  ${home.botaoFecharAd}

Procuro pela carta &{carta}
    Wait Until Element Is Visible  ${geral.INPUT_PESQUISA}
    Input Text  ${geral.INPUT_PESQUISA}  ${carta}
    #Press Key  ${home.inputPesquisa}  Enter
    Wait Until Element Is Visible  ${geral.PRIMEIRO_RESULTADO_DA_BUSCA}
    Click Element  ${geral.PRIMEIRO_RESULTADO_DA_BUSCA}
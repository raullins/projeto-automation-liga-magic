*** Settings ***
Resource  ../main.robot

*** Variables ****
&{home}
...  inputPesquisa=//input[@id="mainsearch"]
...  botaoFecharAd=//img[@id="campanha-del-1"]

*** Keywords ***
Entro no site
    Open Browser  ${geral.URL}  ${geral.Browser}
    Maximize Browser Window
    Wait Until Element Is Visible  ${home.botaoFecharAd}
    Click Element  ${home.botaoFecharAd}

Procuro pela carta &{carta}
    Wait Until Element Is Visible  ${home.inputPesquisa}
    Input Text  ${home.inputPesquisa}  ${carta}
    Press Key  ${home.inputPesquisa}  Enter
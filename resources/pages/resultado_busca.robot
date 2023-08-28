*** Settings ***
Resource  ../main.robot

*** Variables ****
&{resultado_busca}
...  addListaDeCompras=(//button[@class="mp-botao-comprar"])[1]
...  verCarrinho=//button[@id='dropdownMenuCart']
...  verMinhaLista=//a[@id='btn-view-cart-lc']

*** Keywords ***
Adiciono a carta no carrinho
    Wait Until Element Is Visible  ${resultado_busca.addListaDeCompras}
    Click Element  ${resultado_busca.addListaDeCompras}

Procuro pela carta ${carta}
    Wait Until Element Is Visible  ${home.inputPesquisa}
    Input Text  ${home.inputPesquisa}  ${carta}
    Press Keys  ${home.inputPesquisa}  ENTER

Vejo minha lista dentro do carrinho
    Click Element  ${resultado_busca.verCarrinho}
    Wait Until Element Is Visible  ${resultado_busca.verMinhaLista} 
    Click Element  ${resultado_busca.verMinhaLista} 
*** Settings ***
Resource  ../main.robot

*** Variables ****
&{resultado_busca}
...  addListaDeCompras=(//button[@class="mp-botao-comprar"])[1]

# Estes dois botões tbm aparecem ao longo do site, então é uma boa ideia move-los para pasta 'geral'.
#...  verCarrinho=//button[@id='dropdownMenuCart']
#...  verMinhaLista=//a[@id='btn-view-cart-lc']

*** Keywords ***
Adiciono a carta no carrinho
    Wait Until Element Is Visible  ${resultado_busca.addListaDeCompras}
    Click Element  ${resultado_busca.addListaDeCompras}

Procuro pela carta ${carta}
    Wait Until Element Is Visible  ${geral.INPUT_PESQUISA}
    Input Text  ${geral.INPUT_PESQUISA}  ${carta}
    #Press Keys  ${home.inputPesquisa}  ENTER
    Wait Until Element Is Visible  ${geral.PRIMEIRO_RESULTADO_DA_BUSCA}
    Click Element  ${geral.PRIMEIRO_RESULTADO_DA_BUSCA}

Vejo minha lista dentro do carrinho
    Click Element  ${geral.VER_CARRINHO}
    Wait Until Element Is Visible  ${geral.VER_LISTA_DE_COMPRA} 
    Click Element  ${geral.VER_LISTA_DE_COMPRA} 
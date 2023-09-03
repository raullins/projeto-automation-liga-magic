*** Settings ***
Resource  ../main.robot

*** Variables ****
&{carrinho}
...  botao_otimizar_lista=//button[@class="btn-buscar botao mob-botao-full"]


*** Keywords ***
Valido o conteudo do carrinho devendo conter ${carta}
    Wait Until Element Is Visible  ${carrinho.botao_otimizar_lista}
    Page Should Contain  ${carta}
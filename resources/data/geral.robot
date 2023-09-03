*** Settings ***
Resource  ../main.robot

*** Variables ***
&{geral}
#Boa prática definir as variáveis globais utilizando letras maiúsculas, e as demais usando minúsculas
...  URL=https://www.ligamagic.com.br/
...  BROWSER=Chrome

#HEADER
...  INPUT_PESQUISA=//input[@id="mainsearch"]
...  PRIMEIRO_RESULTADO_DA_BUSCA=(//section[@class="item"])[1]
...  VER_CARRINHO=//button[@id='dropdownMenuCart']
...  VER_LISTA_DE_COMPRA=//a[@id='btn-view-cart-lc']



*** Keywords ***
#Setup
Abrir ${URL} no ${navegador}
    Open Browser  ${URL}  ${navegador}
    Maximize Browser Window

#Teardown
Fechar brower atual
    Close Browser
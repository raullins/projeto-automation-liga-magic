*** Settings ***
Resource  ../main.robot

*** Variables ***
&{geral}
...  URL=https://www.ligamagic.com.br/
...  Browser=Chrome
...  Username=
...  Password=

*** Keywords ***
#Setup
Abrir ${URL} no ${navegador}
    Open Browser  ${URL}  ${navegador}
    Maximize Browser Window

#Teardown
Fechar brower atual
    Close Browser
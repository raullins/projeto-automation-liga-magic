*** Settings ***
Resource  ../../resources/main.robot

Test Setup  Abrir ${geral.URL} no ${geral.Browser}
Test Teardown  Fechar brower atual

*** Test Cases ***
TC01 - Entro no site da Liga Magic, procuro por três cartas e adiciono-as no carrinho
    Given Entro no site
    When Procuro pela carta ${cartas_a_procura.cartaUm}
    And Adiciono a carta no carrinho
    When Procuro pela carta ${cartas_a_procura.cartaDois}
    And Adiciono a carta no carrinho
    When Procuro pela carta ${cartas_a_procura.cartaTres}
    And Adiciono a carta no carrinho
    Then Vejo minha lista dentro do carrinho 

TC02 - Entro no site da Liga Magic, procuro por uma carta e adiciono-a no carrinho
    Given Entro no site
    #When Procuro pela carta Chain of Smog
    When Procuro pela carta Korvold, Fae-Cursed King
    And Adiciono a carta no carrinho
    Sleep  3
    Then Vejo minha lista dentro do carrinho

TC03 - Entro no site da Liga Magic, procuro por cartas a partir de uma lista
    Set Selenium Speed  1 second
    Given Entro no site
    FOR  ${carta}     IN      @{listaDeCartas}

    When Procuro pela carta ${carta}
    And Adiciono a carta no carrinho

    END
    Then Vejo minha lista dentro do carrinho
    Sleep  30s
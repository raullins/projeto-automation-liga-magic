*** Settings ***
Resource  ../../resources/main.robot

Test Setup  Abrir ${geral.URL} no ${geral.BROWSER}
Test Teardown  Fechar brower atual

*** Test Cases ***
TC01 - Entro no site da Liga Magic, procuro por três cartas e adiciono-as no carrinho
    [Documentation]  
    [Tags]  Funcional
    Set Selenium Speed  1 second
    Given Entro no site
    #When Procuro pela carta ${cartas_a_procura.cartaUm}
    #And Adiciono a carta no carrinho
    When Procuro pela carta ${cartas_a_procura.${escalar}}
    And Adiciono a carta no carrinho
    #When Procuro pela carta ${cartas_a_procura.cartaTres}
    #And Adiciono a carta no carrinho
    When Vejo minha lista dentro do carrinho
    Then Valido o conteudo do carrinho devendo conter ${cartas_a_procura.${escalar}}

TC02 - Entro no site da Liga Magic, procuro por uma carta específica e adiciono-a no carrinho
    [Documentation]
    [Tags]  Funcional
    Given Entro no site
    #When Procuro pela carta Chain of Smog
    When Procuro pela carta Korvold, Fae-Cursed King
    And Adiciono a carta no carrinho
    Sleep  3
    When Vejo minha lista dentro do carrinho
    Then Valido o conteudo do carrinho devendo conter Korvold, Fae-Cursed King

TC03 - Entro no site da Liga Magic, procuro por cartas a partir de uma lista e adiciono-a no carrinho
    [Documentation]
    [Tags]  Funcional
    Set Selenium Speed  1 second
    Given Entro no site
    FOR  ${carta}     IN      @{listaDeCartas}

    When Procuro pela carta ${carta}
    And Adiciono a carta no carrinho

    END
    When Vejo minha lista dentro do carrinho
    Then Valido o conteudo do carrinho devendo conter ${carta}
    #Then Valido o conteudo do carrinho devendo conter @{listaDeCartas}[3]
    #Sleep  30s
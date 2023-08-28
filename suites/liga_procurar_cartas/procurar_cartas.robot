*** Settings ***
Resource  ../../resources/main.robot

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
    When Procuro pela carta Chain of Smog
    And Adiciono a carta no carrinho
    Sleep  3
    Then Vejo minha lista dentro do carrinho 
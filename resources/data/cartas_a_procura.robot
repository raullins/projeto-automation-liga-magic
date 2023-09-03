*** Settings ***
Resource  ../main.robot

*** Variables ***
# Variável escalar serve para facilitar ainda mais a manutenção do código, de modo a não precisar sempre mudar manualmente a variável dentro do caso de teste. Voce pode mudar o valor da variavel escalar no terminal utilizando: robot -d results -v nomeDaVariavelEscalar:valorDesejadoDaVariavel
${escalar}  cartaDois
&{cartas_a_procura}
...  cartaUm=Dualcaster Mage
...  cartaDois=Twinflame
...  cartaTres=Heat Shimmer
@{listaDeCartas}  Lossarnach Captain  Horn of Gondor  Clever Concealment  Flawless Maneuver  Abdel Adrian, Gorion's Ward  Open the Way  Rhystic Study 

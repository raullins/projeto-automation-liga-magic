*** Settings ***
Library     SeleniumLibrary
#Library     Browser

### Data ###
Resource  data/cartas_a_procura.robot
Resource  data/geral.robot

### Shared ###

### Pages ###
Resource  pages/liga_magic_home.robot
Resource  pages/resultado_busca.robot

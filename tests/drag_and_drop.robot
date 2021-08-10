***Settings***

Resource      ../resources/base.robot

# Executa o Keywords antes de cada test case
Test Setup      Abrir a aplicação no android
# Executa o Keywords depois de cada test case
Test Teardown   Fechar a aplicação


***Test Cases***
Deve mover o Hulk para o topo da lista
    [Tags]     drag_drop
    Acessar a tela de lista
    Mover o elemento

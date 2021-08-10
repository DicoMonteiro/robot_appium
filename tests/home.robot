***Settings***

Resource      ../resources/base.robot

# Executa o Keywords antes de cada test case
Test Setup      Abrir a aplicação no android
# Executa o Keywords depois de cada test case
Test Teardown   Fechar a aplicação


***Test Cases***
Deve abrir a tela principal
    Wait Until Page Contains        Training Wheels Protocol     10
    Wait Until Page Contains        Mobile Version               10

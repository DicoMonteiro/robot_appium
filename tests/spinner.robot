***Settings***

Resource      ../resources/base.robot

# Executa o Keywords antes de cada test case
Test Setup      Abrir a aplicação no android
# Executa o Keywords depois de cada test case
Test Teardown   Fechar a aplicação


***Test Cases***
Deve ser feito a seleção de Desenvolvedor na tela de cadastro com sucesso
    [Tags]     spinner
    Acessar a tela de cadastro
    Selecionar uma opção no spinner     Desenvolvedor

Deve ser feito a seleção de QA na tela de cadastro com sucesso
    [Tags]     spinner
    Acessar a tela de cadastro
    Selecionar uma opção no spinner     QA

Deve ser feito a seleção de DevOps na tela de cadastro com sucesso
    [Tags]     spinner
    Acessar a tela de cadastro
    Selecionar uma opção no spinner     DevOps

Deve ser feito a seleção de UX na tela de cadastro com sucesso
    [Tags]     spinner
    Acessar a tela de cadastro
    Selecionar uma opção no spinner     UX
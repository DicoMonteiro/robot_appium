***Settings***

Resource      ../resources/base.robot

# Executa o Keywords antes de cada test case
Test Setup      Abrir a aplicação no android
# Executa o Keywords depois de cada test case
Test Teardown   Fechar a aplicação


***Test Cases***
Deve ser feito um clique simples com sucesso
    [Tags]     short
    Acessar a tela de clique simples
    Executar um clique simples

Deve ser feito um clique longo com sucesso
    [Tags]      long
    Acessar a tela de clique longo
    Executar um clique longo
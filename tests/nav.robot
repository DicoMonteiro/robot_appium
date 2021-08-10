***Settings***

Resource      ../resources/base.robot

# Executa o Keywords antes de cada test case
Test Setup      Abrir a aplicação no android
# Executa o Keywords depois de cada test case
Test Teardown   Fechar a aplicação

***Variables***
${NOME}         Adriano Almeida
@{CARROS}       Civic   Lancer  Chevette    Brasilia
&{CARRO}        nome=Lancer     modelo=Evlotion     ano=2020

${TOOLBAR_TITLE}        id=io.qaninja.android.twp:id/toolbarTitle


***Test Cases***
Deve acessar a tela Dialogs

    Tela inicial da aplicação
    Acessar menu hamburguer
    
    Click Text                          DIALOGS
    Wait Until Element Is Visible       ${TOOLBAR_TITLE}
    Element Text Should Be              ${TOOLBAR_TITLE}       DIALOGS


Deve acessar a tela Forms

    Tela inicial da aplicação
    Acessar menu hamburguer
    
    Click Text                          FORMS
    Wait Until Element Is Visible       ${TOOLBAR_TITLE}
    Element Text Should Be              ${TOOLBAR_TITLE}       FORMS


Deve acessar a tela Avengers

    Tela inicial da aplicação
    Acessar menu hamburguer
    
    Click Text                          AVENGERS
    Wait Until Element Is Visible       ${TOOLBAR_TITLE}
    Element Text Should Be              ${TOOLBAR_TITLE}       AVENGERS


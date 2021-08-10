***Settings***

Resource      ../resources/base.robot

# Executa o Keywords antes de cada test case
Test Setup      Abrir a aplicação no android
# Executa o Keywords depois de cada test case
Test Teardown   Fechar a aplicação

***Variables***
${EMAIL}                      id=io.qaninja.android.twp:id/etEmail
${PASSWORD}                   id=io.qaninja.android.twp:id/etPassword
${BTN_SUBMIT}                 id=io.qaninja.android.twp:id/btnSubmit

***Test Cases***
Deve logar com sucesso
    Acessar a tela de login

    Input Text                          ${EMAIL}        eu@papito.io
    Input Text                          ${PASSWORD}     qaninja
    Click Element                       ${BTN_SUBMIT}

    Então exibe a mensagem              Show! Suas credenciais são validas.


Deve logar sem sucesso - Senha em branco
    Acessar a tela de login

    Input Text                          ${EMAIL}        eu@papito.io
    Input Text                          ${PASSWORD}     ${EMPTY}
    Click Element                       ${BTN_SUBMIT}

    Então exibe a mensagem              Oops! Senha em branco!


Deve logar sem sucesso - Email em branco
    Acessar a tela de login

    Input Text                          ${EMAIL}        ${EMPTY}
    Input Text                          ${PASSWORD}     qaninja
    Click Element                       ${BTN_SUBMIT}

    Então exibe a mensagem              Por favor, informe um email bom!
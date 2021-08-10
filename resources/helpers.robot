***Settings***
Documentation       Aqui teremos as KWs de ajuda

Resource      ../resources/base.robot

***Variables***
${START}=                      COMEÇAR
${HAMBURGUER}=                 xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]
${NAV_VIEW}=                   id=io.qaninja.android.twp:id/navView


***Keywords***
Tela inicial da aplicação
    Wait Until Page Contains            ${START}
    Click Text                          ${START}
    
    Wait Until Page Contains            AVENGERS
    Wait Until Element Is Visible       ${HAMBURGUER}

Acessar menu hamburguer
    Click Element                       ${HAMBURGUER}
    Wait Until Element Is Visible       ${NAV_VIEW}

Acessar a tela de login
    Tela inicial da aplicação
    Acessar menu hamburguer
    
    Click Text                          FORMS
    Wait Until Page Contains            FORMS

    Click Text                          LOGIN
    Wait Until Page Contains            Fala QA, vamos testar o login?


Acessar a tela de radio button
    Tela inicial da aplicação
    Acessar menu hamburguer

    Click Text                          INPUTS
    Wait Until Page Contains            INPUTS

    Click Text                          BOTÕES DE RADIO
    Wait Until Page Contains            Botões de Radio


Selecionar uma linguagem
    [Arguments]     ${linguagem}
    ${element}=     Set Variable        xpath=//android.widget.RadioButton[contains(@text, '${linguagem}')]
    # Click Text      ${linguagem}
    Click Element                       ${element}
    Wait Until Element Is Visible       ${element}
    Element Attribute Should Match      ${element}      checked     true


Acessar a tela de checkbox
    Tela inicial da aplicação
    Acessar menu hamburguer

    Click Text                          INPUTS
    Wait Until Page Contains            INPUTS

    Click Text                          CHECKBOX
    Wait Until Page Contains            Checkbox
    Wait Until Page Contains            Marque as techs que usam Appium


Selecionar uma tech
    [Arguments]     ${tech}
    ${element}=     Set Variable        xpath=//android.widget.CheckBox[contains(@text, '${tech}')]
    # Click Text      ${tech}
    Click Element                       ${element}
    Wait Until Element Is Visible       id=io.qaninja.android.twp:id/rvContainer
    Element Attribute Should Match      ${element}      checked     true


Acessar a tela de clique simples
    Tela inicial da aplicação
    Acessar menu hamburguer

    Click Text                          BOTÕES
    Wait Until Page Contains            CLIQUE SIMPLES

    Click Text                          CLIQUE SIMPLES
    Wait Until Page Contains            Botão clique simples


Executar um clique simples
    Click Element                       id=io.qaninja.android.twp:id/short_click
    Wait Until Page Contains            Isso é um clique simples


Acessar a tela de clique longo
    Tela inicial da aplicação
    Acessar menu hamburguer

    Click Text                          BOTÕES
    Wait Until Page Contains            CLIQUE LONGO

    Click Text                          CLIQUE LONGO
    Wait Until Page Contains            Botão clique longo


Executar um clique longo
    ${element}=     Set Variable        id=io.qaninja.android.twp:id/long_click
    Long Press                          ${element}      3000
    Element Attribute Should Match      ${element}      long-clickable     true
    Wait Until Page Contains            CLIQUE LONGO OK


Então exibe a mensagem
    [Arguments]     ${mensagem}
    Wait Until Page Contains        ${mensagem}


Acessar a tela de cadastro
    Tela inicial da aplicação
    Acessar menu hamburguer
    
    Click Text                          FORMS
    Wait Until Page Contains            FORMS

    Click Text                          CADASTRO
    Wait Until Page Contains            Bem-vindo, crie sua conta.


Selecionar uma opção no spinner
    [Arguments]     ${option}
    ${SPINNER}=     Set Variable        id=io.qaninja.android.twp:id/spinnerJob
    ${LIST_OPTIONS}=        Set Variable        class=android.widget.ListView
    Click Element                       ${SPINNER}
    Wait Until Element Is Visible       ${LIST_OPTIONS}
    Click Text                          ${option}


Acessar a tela de lista
    Tela inicial da aplicação
    Acessar menu hamburguer

    Click Text                          AVENGERS
    Wait Until Page Contains            AVENGERS
    
    Click Text                          LISTA
    Wait Until Page Contains            LISTA


Remover o elemento
    [Arguments]     ${elemento}
    ${BTN_REMOVE}=      Set Variable        id=io.qaninja.android.twp:id/btnRemove
    
    # Swipe By Percent        88.88       18.22       47.22       18.22

    IF  "${elemento}" == "Capitão América"
    # Log To Console      teste
    Click Text              Capitão América
    Swipe By Percent        88.88       18.22       47.22       18.22
    ELSE IF     "${elemento}" == "Thor"
    Click Text              Thor
    Swipe By Percent        93.05       33.85       49.17       33.85
    ELSE IF     "${elemento}" == "Homem de Ferro"
    Click Text              Homem de Ferro
    Swipe By Percent        93.05       48.44       46.30       48.44
    ELSE IF     "${elemento}" == "Hulk"
    Click Text              Hulk
    Swipe By Percent        88.88       63.13       47.22       63.13
    ELSE
    Click Text              Homem Aranha
    Swipe By Percent        88.88       77.5        47.22       77.5
    END

    # Sleep                               5
    Wait Until Element Is Visible       ${BTN_REMOVE}
    Click Element                       ${BTN_REMOVE}
    # Sleep                               5

Mover o elemento
    Drag And Drop       io.qaninja.android.twp:id/drag_handle       3       0
    Sleep               5  # temporário
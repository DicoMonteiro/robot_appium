***Settings***

Resource      ../resources/base.robot

# Executa o Keywords antes de cada test case
Test Setup      Abrir a aplicação no android
# Executa o Keywords depois de cada test case
Test Teardown   Fechar a aplicação


***Test Cases***
Deve selecionar a tech Java com sucesso
    Acessar a tela de checkbox
    Selecionar uma tech        Java

Deve selecionar a tech C# com sucesso
    Acessar a tela de checkbox
    Selecionar uma tech        C#

Deve selecionar a tech Ruby com sucesso
    Acessar a tela de checkbox
    Selecionar uma tech        Ruby

Deve selecionar a tech Python com sucesso
    Acessar a tela de checkbox
    Selecionar uma tech        Python

Deve selecionar a tech Javascript com sucesso
    Acessar a tela de checkbox
    Selecionar uma tech        Javascript

Deve selecionar a tech Robot Framework com sucesso
    Acessar a tela de checkbox
    Selecionar uma tech        Robot Framework

Deve selecionar a tech Cobol com sucesso
    Acessar a tela de checkbox
    Selecionar uma tech        Cobol
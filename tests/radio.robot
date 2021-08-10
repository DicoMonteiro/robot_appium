***Settings***

Resource      ../resources/base.robot

# Executa o Keywords antes de cada test case
Test Setup      Abrir a aplicação no android
# Executa o Keywords depois de cada test case
Test Teardown   Fechar a aplicação


***Test Cases***
Deve selecionar a linguagem Java com sucesso
    Acessar a tela de radio button
    Selecionar uma linguagem        Java

Deve selecionar a linguagem C# com sucesso
    Acessar a tela de radio button
    Selecionar uma linguagem        C#

Deve selecionar a linguagem Ruby com sucesso
    Acessar a tela de radio button
    Selecionar uma linguagem        Ruby

Deve selecionar a linguagem Python com sucesso
    Acessar a tela de radio button
    Selecionar uma linguagem        Python

Deve selecionar a linguagem Javascript com sucesso
    Acessar a tela de radio button
    Selecionar uma linguagem        Javascript

Deve selecionar a linguagem Elixir com sucesso
    Acessar a tela de radio button
    Selecionar uma linguagem        Elixir

Deve selecionar a linguagem Go Lang com sucesso
    Acessar a tela de radio button
    Selecionar uma linguagem        Go Lang
***Settings***
Library         hello.py


***Test Cases***
# Deve retornar mensagem de boas vindas
#     ${resultado}=         Hello Robot
#     Log To Console        ${resultado}
#     Should Be Equal       ${resultado}      Ola, Bem vindo ao curso de Robot Mobile.

# Não Deve retornar mensagem de boas vindas
#     ${resultado}=             Hello Robot
#     Log To Console            ${resultado}
#     Should Not Be Equal       ${resultado}      Ola, Adriano Almeida.

Deve retornar mensagem de boas vindas customizadas
    ${resultado}=             Hello Robot Customizado       Adriano Almeida
    Log To Console            ${resultado}
    Should Be Equal           ${resultado}      Olá, Adriano Almeida.
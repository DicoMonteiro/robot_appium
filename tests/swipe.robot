***Settings***

Resource      ../resources/base.robot

# Executa o Keywords antes de cada test case
Test Setup      Abrir a aplicação no android
# Executa o Keywords depois de cada test case
Test Teardown   Fechar a aplicação

# Posicionamento para fazer o movimento para excluir um elemento
# Y = 18.22 => Horizontal
# X = 88.88 => Vertical


# Y = 18.22 => Horizontal
# X = 47.22 => Vertical


***Test Cases***
Deve remover o Capitão América
    [Tags]     swipe
    Acessar a tela de lista
    Remover o elemento     Capitão América

# Deve remover o Thor
#     [Tags]     swipe
#     Acessar a tela de lista
#     Remover o elemento     Thor

# Deve remover o Homem de Ferro
#     [Tags]     swipe
#     Acessar a tela de lista
#     Remover o elemento     Homem de Ferro

# Deve remover o Hulk
#     [Tags]     swipe
#     Acessar a tela de lista
#     Remover o elemento     Hulk

# Deve remover o Homem Aranha
#     [Tags]     swipe
#     Acessar a tela de lista
#     Remover o elemento     Homem Aranha
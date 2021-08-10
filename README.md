### PRÉ-REQUISITOS

- instalar o python e configurar todas as variáveis de ambiente:
    https://www.python.org/downloads/

- instalar o java e configurar todas as variáveis de ambiente:
    https://www.oracle.com/br/java/technologies/javase/javase-jdk8-downloads.html

- instalar o android studio e configurar todas as variáveis de ambiente:
    https://developer.android.com/studio

- instalar o node e configurar o ambiente:
    https://eliasnogueira.github.io/appium-workshop/


- resumo das configurações para teste mobile com appim:
    https://github.com/clarabez/appium

- instalar o git:
    https://git-scm.com/book/pt-br/v2/Come%C3%A7ando-Instalando-o-Git

### INSTALAR O ROBOT FRAMEWORK E SUAS BIBLIOTECAS

- instalar o robo framework:
    pip install robotframework

- instalar a biblioteca appium:
    pip install --upgrade robotframework-appiumlibrary


### CLONAR O REPOSITORIO

- clonar o repositorio:
    git clone https://github.com/DicoMonteiro/robot_appium.git



### EXECUTAR O PROJETO

- executar todos os testes:
    robot -d ./logs tests/

- executar somente um teste pela tag:
    robot -d ./logs -i smoke login.robot

### VISUALIZAR O RELATÓRIO

- acessar a pasta do projeto e solicitar para abrir o arquivo dentro da pasta logs:
    report.html
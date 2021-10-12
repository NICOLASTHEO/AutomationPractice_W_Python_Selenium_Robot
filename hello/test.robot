*** Settings ***
Library     app.py


*** Test Cases ***
Deve retornar Mensagem de Boas vindas
    ${result}=                      welcome        Theo
    BuiltIn. Should be equal        ${result}      Olá Theo, vamos automatizar tudo!

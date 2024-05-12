*** Settings ***
Resource            ../resources/base.resource

Test Setup          Iniciar sessão
Test Teardown       Encerrar sessão


*** Test Cases ***
Validar o título da página
    Title Should Be    Training Wheels Protocol

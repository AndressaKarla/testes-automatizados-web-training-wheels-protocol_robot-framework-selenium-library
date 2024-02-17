*** Settings ***
Resource        base_test.robot

Test Setup      Iniciar Sessão
Test Teardown   Encerrar Sessão

*** Test Cases ***
Validar o título da página
    Title Should Be     Training Wheels Protocol
*** Settings ***
Library    SeleniumLibrary
Resource   ../resources/login_resources.robot

*** Test Cases ***
Login com Credenciais Válidas
    Abrir Tela de Login
    Preencher Campos de Login    hugo.oliveira    hugo0305
    Submeter Login
    Verificar Login com Sucesso
    Fechar Navegador

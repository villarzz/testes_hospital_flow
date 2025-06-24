*** Settings ***
Library    Collections
Library    SeleniumLibrary
Library    OperatingSystem
Resource   ../resources/login_resources.robot
Resource   ../resources/relatorios_resources.robot

*** Test Cases ***
Download de relatorio
    Abrir Tela de Login
    Preencher Campos de Login    hugo.oliveira    hugo0305
    Submeter Login
    Verificar Login com Sucesso
    Navegar para relatorios
    Seleciona filtro de status da internacao
    Clicar no botão de Download
    Esperar Download Completar
    Verificar Se Arquivo Foi Baixado
    Fechar Navegador
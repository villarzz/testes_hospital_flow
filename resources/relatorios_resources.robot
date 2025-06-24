*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem

*** Keywords ***
Navegar para relatorios
    Click Element    id:relatorios

Seleciona filtro de status da internacao
    Select From List By Index    id=statusInternacao    0

Clicar no botão de Download
    Click Button    download-relatorio-internacoes

Esperar Download Completar
    Sleep    5s

Verificar Se Arquivo Foi Baixado
    File Should Exist     C:\\Users\\hugo.oliveira\\Downloads\\relatorio_internacoes.xlsx

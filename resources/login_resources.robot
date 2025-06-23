*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Abrir Tela de Login
    Open Browser    http://localhost:4200/login    chrome
    Maximize Browser Window

Preencher Campos de Login
    [Arguments]    ${usuario}    ${senha}
    Input Text     id=usuario    ${usuario}
    Input Text     id=senha    ${senha}
    Sleep    2s

Submeter Login
    Click Button    id=login-button

Verificar Login com Sucesso
    Wait Until Page Contains    Internações

Fechar Navegador
    Close Browser
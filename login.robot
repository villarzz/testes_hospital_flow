*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}     http://localhost:4200

*** Test Cases ***
Login com Credenciais Válidas
    Open Browser    ${URL}    edge
    Input Text      id=usuario     hugo.oliveira
    Input Text      id=senha     hugo0305
    Click Button    id=login-button
    Wait Until Page Contains    Internações
    Close Browser

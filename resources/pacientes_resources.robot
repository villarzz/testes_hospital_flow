*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Navegar para pacientes
    Click Element    id:pacientes

Abrir modal
    Click Button    adicionar-paciente

Preencher Dados do Paciente
    [Arguments]    ${nome}    ${cpf}    ${data}
    Input Text     id=nome                ${nome}
    Input Text     id=cpf                 ${cpf}
    Input Text     id=data-nascimento     ${data}

Submeter Cadastro de Paciente
    Click Button    id=salvar

Verificar Cadastro com Sucesso
    Wait Until Page Contains    Paciente cadastrado com sucesso

Acessar Lista de Pacientes
    Open Browser    http://localhost:4200/pacientes    chrome
    Maximize Browser Window

Selecionar Paciente Para Edição
    Click Element    xpath=//tr[1]//button[contains(text(),'Editar')]

Editar Nome do Paciente
    [Arguments]    ${novo_nome}
    Input Text     id=nome    ${novo_nome}

Submeter Edição de Paciente
    Click Button    id=salvar

Verificar Edição com Sucesso
    Wait Until Page Contains    Paciente atualizado com sucesso

Buscar Paciente
    [Arguments]    ${termo}
    Input Text     id=buscar    ${termo}
    Click Button   id=botao-buscar

Verificar Resultado da Busca
    Wait Until Page Contains    João da Silva

*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Navegar para pacientes
    Click Element    id:pacientes

Abrir modal
    Click Button    adicionar-paciente

Abrir modal edição
    Click Button    botao-editar

Preencher Dados do Paciente
    [Arguments]    ${nomeCompleto}    ${data}    ${cpf}    ${convenio}
    Input Text     id=nomePaciente                ${nomeCompleto}
    Sleep    1s
    Input Text     id=dataNascimentoPaciente     ${data}
    Sleep    1s
    Input Text     id=cpfCadastro                 ${cpf}
    Sleep    2s
    Input Text     id=convenio            ${convenio}

Preencher Dados do Paciente Edicao
    [Arguments]    ${convenio}
    Input Text     id=convenioEdicao    ${convenio}
    Sleep    2s

Preencher Dados de busca
    [Arguments]    ${termo}
    Input Text     id=nomeBusca    ${termo}
    Sleep    2s

Submeter Cadastro de Paciente
    Click Button    id=salvar

Submeter Edicao de Paciente
    Click Button    id=salvar-edicao

Submeter Busca de Paciente
    Click Button    id=buscar-paciente

Varificar se Paciente foi Criado
    Wait Until Page Contains    Paciente criado!

Varificar se Paciente foi Editado
    Wait Until Page Contains    Paciente editado!

Varificar se Paciente foi buscado
    Wait Until Page Contains    João

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

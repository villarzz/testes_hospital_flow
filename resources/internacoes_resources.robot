*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Abrir modal criacao
    Click Button    btn-nova-internacao

Preencher Dados da Internação
    [Arguments]    ${data}    ${dataFim}
    Select From List By Index    id=paciente    5
    Sleep    2s
    Input Text     id=dataInicio           ${data}
    Input Text     id=dataFim             ${dataFim}
    Select From List By Index    id=acomodacaoId    0
    Sleep    2s
    Select From List By Index    id=statusInternacaoId    1
    Sleep    2s

Salvar Internação
    Click Button    btn-salvar-internacao
    
Varificar se a internação foi criada
    Wait Until Page Contains    Internação criada!

Varificar se a internação foi editada
    Wait Until Page Contains    Internação alterada!

Seleciona internação para editar
    Click Element    icone-edicao

Preenche novos dados internacao
    [Arguments]    ${dataFim}
    Input Text     id=dataFimEdicao             ${dataFim}
    Select From List By Index    id=statusInternacaoId    2
    Sleep    2s

Clicar no botao de editar
    Click Button    btn-editar-internacao

Buscar Internações por Nome
    [Arguments]    ${nome}
    Input Text     id=nomePaciente            ${nome}
    Click Button    btn-buscar-internacao
    Sleep    1s

Varificar se Internação foi buscada
    Wait Until Page Contains    João

Clicar no icone de excluir
    Click Element    icone-apagar

Confirmar ação de excluir
    Click Element    css:.swal2-confirm

Verificar se a internação foi excluída
    Wait Until Page Contains    Internação finalizada!
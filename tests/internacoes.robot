*** Settings ***
Library    SeleniumLibrary
Resource   ../resources/login_resources.robot
Resource   ../resources/internacoes_resources.robot

*** Test Cases ***
Criar Nova Internação
    Abrir Tela de Login
    Preencher Campos de Login    hugo.oliveira    hugo0305
    Submeter Login
    Verificar Login com Sucesso
    Abrir modal criacao
    Preencher Dados da Internação    01/01/2023    02/01/2023
    Salvar Internação
    Varificar se a internação foi criada
    Fechar Navegador

Editar Internação
    Abrir Tela de Login
    Preencher Campos de Login    hugo.oliveira    hugo0305
    Submeter Login
    Verificar Login com Sucesso
    Seleciona internação para editar
    Preenche novos dados internacao   03/01/2023
    Clicar no botao de editar
    Varificar se a internação foi editada
    Fechar Navegador

 Buscar Internações
    Abrir Tela de Login
    Preencher Campos de Login    hugo.oliveira    hugo0305
    Submeter Login
    Verificar Login com Sucesso
    Buscar Internações por Nome    João
    Varificar se Internação foi buscada
    Fechar Navegador

Finalizar Internação
    Abrir Tela de Login
    Preencher Campos de Login    hugo.oliveira    hugo0305
    Submeter Login
    Verificar Login com Sucesso
    Clicar no icone de excluir
    Confirmar ação de excluir
    Verificar se a internação foi excluída
    Fechar Navegador

*** Settings ***
Library    SeleniumLibrary
Resource   ../resources/pacientes_resources.robot
Resource   ../resources/login_resources.robot

*** Test Cases ***
Cadastrar Novo Paciente
    Abrir Tela de Login
    Preencher Campos de Login    hugo.oliveira    hugo0305
    Submeter Login
    Verificar Login com Sucesso
    Navegar para pacientes
    Abrir modal

Editar Paciente Existente
    Acessar Lista de Pacientes
    Selecionar Paciente Para Edição
    Editar Nome do Paciente    João da Silva Editado
    Submeter Edição de Paciente
    Verificar Edição com Sucesso
    Fechar Navegador

Buscar Paciente Pelo Nome
    Acessar Lista de Pacientes
    Buscar Paciente    João
    Verificar Resultado da Busca
    Fechar Navegador

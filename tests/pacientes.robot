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
    Preencher Dados do Paciente   João da Silva    01/01/1990    12345678901    Unimed
    Submeter Cadastro de Paciente
    Varificar se Paciente foi Criado
    Fechar Navegador

Editar Paciente Existente
    Abrir Tela de Login
    Preencher Campos de Login    hugo.oliveira    hugo0305
    Submeter Login
    Verificar Login com Sucesso
    Navegar para pacientes
    Abrir modal edição
    Preencher Dados do Paciente Edicao   Amil
    Fechar Navegador

Buscar Paciente Pelo Nome
    Abrir Tela de Login
    Preencher Campos de Login    hugo.oliveira    hugo0305
    Submeter Login
    Verificar Login com Sucesso
    Navegar para pacientes
    Preencher Dados de busca    João
    Submeter Busca de Paciente
    Varificar se Paciente foi buscado
    Fechar Navegador

*** Settings ***
Library     SeleniumLibrary
Resource    ../page_objects/login_page.robot
Resource    ../page_objects/cadastro_page.robot

*** Test Cases ***
Cenário 1: Realizar login com sucesso
    Abrir navegador na Página de Login
    Inserir email cadastrado
    Inserir senha cadastrada
    Clicar no botão Entrar
    Verificar se o sistema redireciona o usuário para a tela Home
    Verificar se o sistema apresenta mensagem de sucesso de login
    Fechar navegador login

Cenário 2: Realizar login sem sucesso
    Abrir navegador na Página de Login
    Inserir email não cadastrado
    Inserir senha não cadastrada
    Clicar no botão Entrar
    Verificar se o sistema apresenta mensagem de erro de login

Cenário 3: Tentar realizar login sem preencher campo Email
    Abrir navegador na Página de Login
    Inserir senha cadastrada
    Clicar no botão Entrar
    Verificar se o sistema apresenta mensagem de erro de campo email obrigatório

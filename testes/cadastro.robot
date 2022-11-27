*** Settings ***
Library    SeleniumLibrary

Resource        ../page_objects/cadastro_page.robot

*** Test Cases ***
Cenário 1: Cadastrar usuário com sucesso
    Abrir navegador na Página de Cadastro
    Inserir nome
    Inserir email
    Inserir senha
    Clicar no botão Cadastrar
    Verificar se o sistema redireciona o usuário para a tela de Login
    Verificar se o sistema apresenta mensagem de sucesso de cadastro
    Fechar navegador cadastro

Cenário 2: Cadastrar usuário já registrado no sistema
    Abrir navegador na Página de Cadastro
    Inserir novo nome
    Inserir email já registrado
    Inserir nova senha 
    Clicar no botão Cadastrar
    Verificar se o sistema apresenta mensagem de erro no cadastro

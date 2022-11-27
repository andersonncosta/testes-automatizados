*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url_login}                 https://seubarriga.wcaquino.me/login
${url_logado}                https://seubarriga.wcaquino.me/logar
${input_email}               id: email
${input_senha}               id: senha
${botao_Entrar}              //button[@class='btn btn-primary']
${mensagem_sucessoLogin}     //div[@class='alert alert-success']
${mensagem_erroLogin}        //div[@class='alert alert-danger']


*** Keywords ***
Abrir navegador na Página de Login
    Open Browser    ${url_login}    Chrome

Inserir email cadastrado
    Input Text    ${input_email}    Anderson@desafiointermediario.com

Inserir senha cadastrada
    Input Text    ${input_senha}    123456789

Clicar no botão Entrar
    Click Button    ${botao_Entrar}

Verificar se o sistema redireciona o usuário para a tela Home
    ${url_login}=    Get Location
    Should Be Equal    ${url_login}    ${url_logado}

Verificar se o sistema apresenta mensagem de sucesso de login
    Get Text    ${mensagem_sucessoLogin}

Fechar navegador login
    Close Browser

# Cenário 2
Inserir email não cadastrado
    Input Text    ${input_email}    andersonn@desafiodesafio.com
Inserir senha não cadastrada
    Input Text    ${input_senha}    123

Verificar se o sistema apresenta mensagem de erro de login
    Get Text     ${mensagem_erroLogin}

# Cenário 3
Verificar se o sistema apresenta mensagem de erro de campo email obrigatório
    Get Text    ${mensagem_erroLogin}
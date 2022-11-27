*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url_cadastro}                https://seubarriga.wcaquino.me/cadastro
${url_login}                   https://seubarriga.wcaquino.me/login
${url_poscadastro}             https://seubarriga.wcaquino.me/cadastrarUsuario
${input_nome}                  id: nome
${input_email}                 id: email 
${input_senha}                 id: senha
${botao_cadastrar}             //input[@class='btn btn-primary']
${mensagem_sucessoCadastro}    //div[@class='alert alert-success']
${mensagem_erroCadastro}       //div[@class='alert alert-danger'] 

*** Keywords ***
Abrir navegador na Página de Cadastro
    Open Browser    ${url_cadastro}    Chrome

Inserir nome
    Input Text    ${input_nome}     Anderson

Inserir email
    Input Text    ${input_email}    anderson@bootcampdesafiointermediario.com

Inserir senha
    Input Text    ${input_senha}    123

Clicar no botão Cadastrar
    Click Button    ${botao_Cadastrar}

 Verificar se o sistema redireciona o usuário para a tela de Login
   ${url}=     Get Location
   Should Be Equal    ${url}    ${url_poscadastro}

Verificar se o sistema apresenta mensagem de sucesso de cadastro
    Get Text        ${mensagem_sucessoCadastro}

Fechar navegador cadastro
    Close Browser

# Cenário 2
Inserir novo nome
    Input Text    ${input_nome}     Lima

Inserir email já registrado
    Input Text    ${input_email}    anderson@bootcampdesafiointermediario.com

Inserir nova senha
    Input Text    ${input_senha}    123456

Verificar se o sistema apresenta mensagem de erro no cadastro
    Get Text    ${mensagem_erroCadastro}
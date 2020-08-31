***Settings***
Documentation       Aqui teremos todas as palavras chaves de automação dos comportamentos.

***Keywords***
Dado que acesso a pagina principal e a tela de login
    Go To    ${base_url}
    Wait Until Element Is Visible       ${BOTAO_FAZER_LOGIN}
    Click Element   ${BOTAO_FAZER_LOGIN}
    Wait Until Element Is Visible       ${CAMPO_EMAIL}

# Login correto
Quando submeto o meu email "${email}" e a senha "${senha}"
    Input Text      ${CAMPO_EMAIL}       ${email}
    Wait Until Element Is Not Visible       ${CAMPO_SENHA}
    Click Element   ${BOTAO_LOGIN}
    Wait Until Element Is Visible       ${CAMPO_SENHA}
    Input Text      ${CAMPO_SENHA}      ${senha}
    Click Element   ${BOTAO_ENTRAR}

Então devo ser autenticado
    Wait Until Page Contains Element    ${DIV_HOME}     20s

#Email invalido e email vazio
Quando submeto o email "${email}"
    Input Text      ${CAMPO_EMAIL}       ${email}
    Sleep   3s
    Click Element   ${BOTAO_LOGIN}

Então devo ver a mensagem "${expect_message}"
    Wait Until Element Contains         ${DIV_ERRO}     ${expect_message}
    Sleep   5s

#Senha incorreta
Então deve ser mostrada a mensagem "${expect_message}"
    Wait Until Element Contains      ${DIV_SENHA_ERRADA}     ${expect_message}
    Sleep   5s
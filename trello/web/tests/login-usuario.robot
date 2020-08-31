***Settings***
Documentation       Suite dos testes de login

Resource        ../resources/base.robot

Test Setup      Open Session
Test Teardown       Close Session

***Test Cases***
Login correto
    Dado que acesso a pagina principal e a tela de login
    Quando submeto o meu email "<EMAIL>" e a senha "<SENHA>"
    Então devo ser autenticado

Email incorreto
    Dado que acesso a pagina principal e a tela de login
    Quando submeto o email "<EMAIL_INVALIDO>"
    Então devo ver a mensagem "Esse nome de usuário não tem conta"

Email não informado
    Dado que acesso a pagina principal e a tela de login
    Quando submeto o email "${EMPTY}"
    Então devo ver a mensagem "E-mail ausente"

Senha incorreta
    Dado que acesso a pagina principal e a tela de login
    Quando submeto o meu email "<EMAIL>" e a senha "<SENHA_ERRADA>"
    Então deve ser mostrada a mensagem "Endereço de e-mail e/ou senha incorreta."
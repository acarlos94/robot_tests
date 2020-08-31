***Settings***
Documentation       Aqui temos a estrutura base do projeto, o selenium é importado aqui.

Library     SeleniumLibrary
#Library     RequestsLibrary
Library     OperatingSystem

Resource    elements.robot
Resource    keywords.robot
#Resource    helpers.robot

***Variables***
${base_url}         http://trello.com    
${api_url}          https://api.trello.com

***Keywords***
## Hooks
Open Session
    Open Browser    about:blank     chrome

Close Session
    Capture Page Screenshot
    Close Browser
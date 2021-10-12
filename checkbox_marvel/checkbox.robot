***Settings***
Library         SeleniumLibrary

***Variables***
${url}                http://training-wheels-protocol.herokuapp.com
${check_thor}         id:thor
${check_ironman}      css:input[value='iron-man']
${the_avengers}       xpath://*[@id='checkboxes']/input[4]


***Test Cases***

Marcando com ID
    Open Browser                    ${url}                          chrome
    Go to                           ${url}/checkboxes

    Select checkbox                 ${check_thor}
    Checkbox Should be Selected     ${check_thor}
    Close Browser

Marcando com CSS Selector
#Sei que o teste de cima está OK, não vou mais testa-lo. Usar TAGs só onde eu quero testar
    [tags]      iron_man
    Open Browser                    ${url}                          chrome
    Go to                           ${url}/checkboxes

    Select checkbox                 ${check_ironman}
    Checkbox Should be Selected     ${check_ironman}
    Close Browser

Marcando com XPath
    [tags]      avengers
    Open Browser                    ${url}                          chrome
    Go to                           ${url}/checkboxes

    Select checkbox                 ${the_avengers}
    Checkbox Should be Selected     ${the_avengers}
    Close Browser








***Settings***
Library         SeleniumLibrary

#   HOOKS, with setup and teerdown. Those can reduce times we can call Keys words.
#   each test case we open and close browser... Lets reduce this.
Test Setup           New Session     #behavior BEFORE each test case        
Test Teardown        End Session     #behavior AFTER test cases


***Variables***
${url}                http://training-wheels-protocol.herokuapp.com
${check_thor}         id:thor
${check_ironman}      css:input[value='iron-man']
${the_avengers}       xpath://*[@id='checkboxes']/input[4]


***Test Cases***

Marcando com ID
   #Open Browser                    ${url}                          chrome     --> we don't need to call it any more for each session
    Go to                           ${url}/checkboxes
    Select checkbox                 ${check_thor}
    Checkbox Should be Selected     ${check_thor}
   #Close Browser                                                              --> we don't need to call it any more for each session

Marcando com CSS Selector
#Sei que o teste de cima está OK, não vou mais testa-lo. Usar TAGs só onde eu quero testar
    [tags]      iron_man
    Go to                           ${url}/checkboxes
    Select checkbox                 ${check_ironman}
    Checkbox Should be Selected     ${check_ironman}
  
Marcando com XPath
    [tags]      avengers
    Go to                           ${url}/checkboxes
    Select checkbox                 ${the_avengers}
    Checkbox Should be Selected     ${the_avengers}

***Keywords***
New Session
    Open browser                    ${url}                          chrome
End Session
    Close browser




***Settings***

Library         SeleniumLibrary

***Test Cases***

Should See Page Title
    Open Browser          http://training-wheels-protocol.herokuapp.com/      chrome                        
    Title Should be       Training Wheels Protocol
    Close Browser
#Comando robot -d ./log title.robot fará os RELATÓRIOS SEREM GRAVADOS EM UMA NOVA PASTA (LOG), não mais na pasta raiz. (Visualmente melhor)

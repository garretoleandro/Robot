*** Settings ***
Library     SeleniumLibrary
    

*** Test Cases ***

First Test
    Open Browser     https://portal.dev.cloud.aocubo.com/login    chrome
    Maximize Browser Window
    Click Button    //*[@id="__next"]/section/div[3]/button
    Input Text    //*[@name='email']    vsantos.lvieira@gmail.com
    Sleep    2s
    Input Text    //*[@name='password']    Lopo@2812
    Sleep    2s
    Click Button    //*[@type='submit']
    Sleep    3s
    Click Element    //*[@id="__next"]/div[2]/aside/div/nav/a[1]
    Sleep    3s
    Input Text    //*[@name='search']    Imóvel teste automatizado robot
    Sleep    2s
    Click Button    //*[@type='submit']
    Sleep    2s
    Page Should Contain Element  //*[@id="__next"]/div[2]/div[2]/div/div[2]/div[1]/div/div[1]/div[2]/a/h3
    Sleep   2s
    Capture Page Screenshot   Results/Results_BuscaPorNome/Busca_Nome.png    
    Sleep    10s
    Close Browser
    
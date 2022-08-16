*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***

Third Test
    Open Browser     https://portal.dev.cloud.aocubo.com/login    chrome
    Maximize Browser Window
    Click Button    //*[@id="__next"]/section/div[3]/button
    Input Text    //*[@name='email']    vsantos.lvieira@gmail.com
    Sleep    1s
    Input Text    //*[@name='password']    Lopo@2812
    Sleep    3s
    Click Button    //*[@type='submit']
    Sleep    3s
    Click Element    //*[@id="__next"]/div[2]/aside/div/nav/a[1]
    Sleep    4s
    Click Element    //*[@id="__next"]/div[2]/div[2]/div/div[1]/div/form/div[2]/div[1]
    Sleep    4s
    Input Text    //*[@name='priceFrom']    1.134.667,00
    Sleep    1s
    Input Text    //*[@name='priceUntil']    1.140.000,00
    Sleep    2s
    Click Button    //*[@type='submit']
    Sleep    2s
    Page Should Contain Element  //*[@id="__next"]/div[2]/div[2]/div/div[2]/div[1]/div/div[1]/div[2]/a/h3
    Sleep   2s
    Capture Page Screenshot   Results/Results_BuscaPorNome/Busca_Por_Preço.png    
    Sleep    10s
    Close Browser
    
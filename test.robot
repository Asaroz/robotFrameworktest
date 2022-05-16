*** Settings ***
Documentation       Simple example using SeleniumLibrary.
Library             SeleniumLibrary   

*** Variables ***
${MESSAGE}          Hello, world!
${BROWSER}          Chrome
${URL}              https://bing.com

*** Test Cases ***
User must open google and get the results
    Log             ${MESSAGE}
    Log To Console  ${MESSAGE}
    Open Browser to URL
    Input Text      xpath://input[@id="sb_form_q"]  das ist ein test
    Click Element   xpath://label[@id="search_icon"]
    Sleep           2s
    Click Element   xpath://Button[@id="bnp_btn_accept"]
    Sleep           2s
    Click Element   xpath://li[@class="b_algo"][3]//h2//a
    Sleep           5s
    Close Browser
    
    
*** Keywords ***
Open Browser to URL
    Open Browser    ${URL}  ${BROWSER}
    


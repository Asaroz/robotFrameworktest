*** Settings ***
Documentation       Simple example using SeleniumLibrary.
Library             SeleniumLibrary   
Library             func.py

*** Variables ***
${MESSAGE}          Hello, world!
${BROWSER}          Chrome
${URL}              https://bing.com

*** Test Cases ***
User must open google and get the results
    Log             ${MESSAGE}
    Log To Console  ${MESSAGE}
    Open Browser to URL
    ${randomName}   func.fetch_fake_data
    Input Text      xpath://input[@id="sb_form_q"]  ${randomName}
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
    


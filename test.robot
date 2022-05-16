*** Settings ***
Documentation       Simple example using SeleniumLibrary.
Library             SeleniumLibrary   
Library             func.py

*** Variables ***
${MESSAGE}          Hello, world!
${BROWSER}          Chrome
${URL}              https://bing.com

*** Test Cases ***
User must open Bing, sreach for a random name and get the third result
    Log                 ${MESSAGE}
    Log To Console      ${MESSAGE}
    Open Browser to URL
    ${randomName} =     Create Testdata
    Input Text          xpath://input[@id="sb_form_q"]  ${randomName}
    Click Element       xpath://label[@id="search_icon"]
    Sleep some Time     a=4s
    Click Element       xpath://Button[@id="bnp_btn_accept"]
    Sleep some Time     a=4s
    Click Element       xpath://li[@class="b_algo"][3]//h2//a
    Sleep some Time     a=10s
    Close Browser
    
    
*** Keywords ***
Open Browser to URL
    Open Browser    ${URL}  ${BROWSER}

Sleep some Time
    [Arguments]         ${a}=2s
    Sleep               ${a}           
    


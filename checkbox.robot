*** Settings ***
Library                 SeleniumLibrary
Test Setup              Open Browser                ${webURL}                       ${BROWSERS}
Test Teardown           Close Browser

*** Variables ***
${webURL}               https://demoqa.com/checkbox
${BROWSERS}             chrome

*** Test Cases ***
I want to check one data in checkbox
    Maximize Browser Window
    Click Element                           //button[@title="Expand all"]
    Click Element                           (//span[@class="rct-title"])[3]
    Click Element                           (//span[@class="rct-title"])[12]
    Element Should Be Visible               //div[@id="result"]
    Element Should Contain                  //span[@class="text-success"]               notes   private
    Sleep                                   7s
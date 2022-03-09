*** Settings ***
Library                 SeleniumLibrary
Test Setup              Open Browser                ${webURL}               ${BROWSERS}
Test Teardown           Close Browser

*** Variables ***
${webURL}               https://demoqa.com/radio-button
${BROWSERS}             chrome

*** Test Cases ***
Click Radio Button "Impressive"
    Maximize Browser Window
    Click Element                   //*[@for="impressiveRadio"]
    Element Should Be Visible       //span[@class="text-success"]
    Element Should Contain          //span[@class="text-success"]          Impressive
    Sleep                           3s

Click Radio Button "Yes"
    Maximize Browser Window
    Click Element                   //*[@for="yesRadio"]
    Element Should Be Visible       //span[@class="text-success"]
    Element Should Contain          //span[@class="text-success"]          Yes
    Sleep                           3s
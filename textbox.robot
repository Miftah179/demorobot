*** Settings ***
Library                         SeleniumLibrary
Test Setup                      Open Browser                ${webURL}               ${BROWSERS}
Test Teardown                   Close Browser

*** Variables ***
${webURL}                       http://uitestingplayground.com/textinput
${BROWSERS}                     chrome

*** Test Cases ****
I type my name (Miftah) in the field
    Maximize Browser Window
    Input Text                  //input[@id="newButtonName"]                Miftah
    #CLick Element               //button[@id="updatingButton"]
    Click button                //button[@id="updatingButton"]
    Sleep                       2s
    Element Should Contain      //button[@id="updatingButton"]              Miftah
    #Element Text Should Be      //button[@id="updatingButton"]              Mifta

I type my name (Kevin) in the field
    Maximize Browser Window
    Input Text                  //input[@id="newButtonName"]                Kevin
    #CLick Element               //button[@id="updatingButton"]
    Click button                //button[@id="updatingButton"]
    Sleep                       2s
    Element Should Contain      //button[@id="updatingButton"]              Kevin
    #Element Text Should Be      //button[@id="updatingButton"]              Mifta

I type my name (Michel) in the field
    Maximize Browser Window
    Input Text                  //input[@id="newButtonName"]                Michel
    #CLick Element               //button[@id="updatingButton"]
    Click button                //button[@id="updatingButton"]
    Sleep                       2s
    Element Should Contain      //button[@id="updatingButton"]              Michel
    #Element Text Should Be      //button[@id="updatingButton"]              Mifta
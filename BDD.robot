*** Settings ***
Library           Selenium2Library

*** Variables ***
${URL}            http://demoqa.com/registration/
${BROWSER}        Firefox
${USER}           mHero
${PASSWORD}       mHERO99%
${CONFIRM PASSWORD}    mHERO99%
${TITLE}          TOOLS
${Heading}        Registration
${THANK YOU MSG}    Thank you for your registration
${First Name}     Man
${Last Name}      HeroI have navigated to the page
${Phone}          8889991212
${About Text}     My name is mHero
${Country}        Australia
${Month}          12
${Day}            22
${Year}           1990
${ERR MSG}        *This field is required
${PASSWORD ERR}    *Minimum 8 characters required

*** Test Cases ***
Registration Test
    Given I have launched the browser and I have opened the registration page
    When I have entered the registration information and I have pressed submit button
    Then I should see the thank you message

*** Keywords ***
I have launched the browser
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    0

I have opened the registration page
    Go To {URL}
    Page Should Contain    {Heading}

I have entered the registration information
    Input Text    xpath=//input[contains(@id,’name_3_firstName’)]    ${First Name}
    Input Text    xpath=//input[contains(@id,’name_3_lastName’)]    ${Last Name}
    Click Element    xpath=//input[contains(@name,’radio_4[]’)]
    Click Element    xpath=//input[contains(@name,’checkbox_5[])’]
    Select From List By Label    xpath=//input[contains(@id,’dropdown_7’)]    ${Country}
    Select From List By Value    xpath=//input[contains(@id,’mm_dt_8’)]    ${Month}
    Select From List By Value    xpath=//input[contains(@id,’dd_dt_8’)]    ${Day}
    Select From List By Value    xpath=//input[contains(@id,’yy_dt_8’’)]    ${Year}
    Input Text    xpath=//input[contains(@id,’phone_9’)]    ${Phone}
    Input Text    xpath=//input[contains(@id,’description’)]    ${About Text}
    Input Password    xpath=//input[contains(@id,’password_2’)]    ${PASSWORD}
    Input Password    xpath=//input[contains(@id,’confirm_password_password_2’)]    ${CONFIRM PASSWORD}

I have pressed the submit button
    Click Element    xpath=//input[contains(@id,’submit’)]

I have launched the browser and I have opened the registration page
    I have launched the browser
    I have opened the registration page

I have entered the registration information and I have pressed submit button
    I have entered the registration information
    Page does not contain missing field error message
    Page does not contain password length error message
    I have pressed the submit button

I should see the thank you message
    Page Should Contain    ${THANK YOU MSG}

Page does not contain missing field error message
    Page Should Not Contain ${ERR MSG}

Page does not contain password length error message
    Page Should Not Contain ${PASSWORD ERR}

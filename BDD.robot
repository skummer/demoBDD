
*** Settings ***
Library           Selenium2Library

*** Variables ***
${URL}            http://demoqa.com/registration/
${BROWSER}        firefox
${USER}           mHero
${Email}          mHero@yahoo.com
${PASSWORD}       mHERO1234%
${CONFIRM PASSWORD}    mHERO1234%
${TITLE}          TOOLS
${Heading}        Registration | Demoqa
${THANK YOU MSG}    Thank you for your registration
${First Name}     Man
${Last Name}      Hero
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
    Page Should Contain    ${Heading}

I have entered the registration information
    Input Text    id=name_3_firstname    ${First Name}
    Input Text    id=name_3_lastname    ${Last Name}
    Click Element    name=radio_4[]
    Click Element    name=checkbox_5[]
    Select From List By Label    id=dropdown_7    ${Country}
    Select From List By Value    id=mm_date_8    ${Month}
    Select From List By Value    id=dd_date_8    ${Day}
    Select From List By Value    id=yy_date_8    ${Year}
    Input Text    id=phone_9    ${Phone}
    Input Text    id=username    ${USER}
    Input Text    id=email_1    ${Email}
    Input Text    id=description    ${About Text}
    Input Password    id=password_2    ${PASSWORD}
    Input Password    id=confirm_password_password_2    ${CONFIRM PASSWORD}

I have pressed the submit button
    Click Element    name=pie_submit

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
    Page Should Not Contain    ${ERR MSG}

Page does not contain password length error message
    Page Should Not Contain    ${PASSWORD ERR}

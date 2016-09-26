*** Settings ***
Library           Selenium2Library

*** Variables ***
${URL}            http://demoqa.com/registration/
${BROWSER}        firefox
${USER}           spHero
${Email}          spHero@aol.com
${PASSWORD}       sHERO1234%
${CONFIRM PASSWORD}    sHERO1234%
${TITLE}          TOOLS
${Heading}        Registration | Demoqa
${THANK YOU MSG}    Thank you for your registration
${First Name}     Superman
${Last Name}      Hero
${Phone}          5559991212
${About Text}     I am a Super Hero.
${Country}        Australia
${Month}          12
${Day}            22
${Year}           1995
${MISSING FIELD ERR MSG}    *This field is required
${PASSWORD LENGTH ERR}    *Minimum 8 characters required
${INVALID PHONE ERR}    *Minimum 10 Digits starting with Country Code
${INVALID EMAIL ERR}    *Invalid email address
${DUPLICATE USER}    Error: Username already exists
${DUPLICATE EMAIL}    Error: E-mail address already exists
${MISMATCH ERR}    Mismatch

*** Test Cases ***
Registration Test
    Given I have launched the browser and I have opened the registration page
    When I have entered the registration information and Page has valid registration information
    Then I press the submit button and I should see the thank you message

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

Page has valid registration information
    Page Should Not Contain    ${MISSING FIELD ERR MSG}
    Page Should Not Contain    ${PASSWORD LENGTH ERR}
    Page Should Not Contain    ${INVALID PHONE ERR}
    Page Should Not Contain    ${INVALID EMAIL ERR}

I press the submit button
    Click Element    name=pie_submit

I should see the thank you message
    Page Should Not Contain    ${DUPLICATE USER}
    Page Should Not Contain    ${DUPLICATE EMAIL}
    Page Should Contain    ${THANK YOU MSG}

I have launched the browser and I have opened the registration page
    I have launched the browser
    I have opened the registration page

I have entered the registration information and Page has valid registration information
    I have entered the registration information
    Page has valid registration information

I press the submit button and I should see the thank you message
    I press the submit button
    I should see the thank you message

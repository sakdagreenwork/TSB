*** Settings ***
Library   SeleniumLibrary 

*** Variables **
${valid_email}    phonarun@efinancethai.com
${valid_pass}    EVEFT@cs
${email_field}     //input[@name="email"]
${password_field}    //input[@name='password']
${login_button}    //button[@class="btn btn-sm btn-dark block w-full text-center"]
${link}    http://qc-tsb-admin.onlineasset.co.th/
#${link}    https://fleet.tsbcloud.co/

*** Keywords ***
Log In
    [Arguments]    ${email}    ${password}
    Open Browser  ${link}    browser=chrome
    Wait Until Element Is Visible     ${email_field}    10
    Sleep    1
    Click Element    ${email_field}
    Input Text  ${email_field}  text=${email}
    Input Text  ${password_field}  text=${password}
    Click Button   ${login_button}
Log In Valid
    Log In    ${valid_email}    ${valid_pass}
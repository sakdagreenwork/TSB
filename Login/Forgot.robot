*** Settings ***
Library   SeleniumLibrary    screenshot_root_directory=/Users/sakda.l/Desktop/TSB Automate/Login/Failed Screenshot 
Resource      keyword.robot
#Test Teardown    Clear Element Text    //*[@id="root"]/main/div/div/div[2]/div/div[1]/form/div/div/input
Test Teardown    Close Browser
#robot --outputdir "\Users\sakda.l\Desktop\TSB Automate\Login\Report" Forgot.robot   

*** Variables ***
## ${link} อยู่ที่ไฟล์ keyword.robot ##

${Title}    //h4[@class="font-medium mb-4"]
${Text}    //div[@class="font-normal text-base text-slate-500 dark:text-slate-400 text-center px-2 bg-slate-100 dark:bg-slate-600 rounded py-3 mb-4 mt-10"]
${Label Email}    //*[@id="root"]/main/div/div/div[2]/div/div[1]/form/div/span/label
${send_email_button}    //*[@id="root"]//form/button
${Back_Signin_Text}    //div[@class="md:max-w-[345px] mx-auto font-normal text-slate-500 dark:text-slate-400 2xl:mt-12 mt-8 uppercase text-sm"]

${Back_Signin_Button}    //a[@class="text-slate-900 dark:text-white font-medium hover:underline"]
${forgot_pass_page_button}    //*[@id="root"]/main/div[2]/div/div[2]/div/div[1]/form/div[3]/a

${forgot_email_field}    //*[@id="root"]/main/div/div/div[2]/div/div[1]/form/div/div/input

${email_field_alert}    //*[@id="root"]/main/div/div/div[2]/div/div[1]/form/div/div[2]
${top_right_alert}    //div[@class='Toastify__toast-body']/div[2]

${login_page}    //*[@id="root"]/main/div[2]/div/div[2]/div/div[1]/div[2]/h4
${dashboard_page}    //*[@id="root"]//div[3]/h4
*** Keywords ***

## Keyword: Log In อยู่ที่ไฟล์ keyword.robot ##

Open Forgot Password Page
    Open Browser  ${link}    browser=chrome
    Wait Until Element Is Visible   ${forgot_pass_page_button}    10
    Click Element   ${forgot_pass_page_button}
    
*** Test Case ***
TC_FP_001-ข้อความหน้า Forgot Password
    Open Forgot Password Page
    Wait Until Element Is Visible    ${Title}    10
    Run Keyword And Continue On Failure    Element Text Should Be  ${Title}    Forgot Your Password?
    Run Keyword And Continue On Failure    Element Text Should Be    ${Text}    Enter your Email and instructions will be sent to you!
    Run Keyword And Continue On Failure    Element Text Should Be    ${Label Email}    Email
    Run Keyword And Continue On Failure    Element Text Should Be    ${send_email_button}    Send Recovery Email
    Run Keyword And Continue On Failure    Element Text Should Be    ${Back_Signin_Text}    BACK TO SIGN IN
    Sleep    5

TC_FP_002-กรณีไม่กรอก Email
    Open Forgot Password Page
    Wait Until Element Is Visible   ${send_email_button}    10
    Click Element   ${send_email_button}
    Element Text Should Be  ${email_field_alert}  Email is Required
    Sleep    5

TC_FP_003-กรณีกรอก Email ที่ยังไม่ Verified
    Open Forgot Password Page
    Wait Until Element Is Visible    ${forgot_email_field}    10
    Click Element    ${forgot_email_field}
    Input Text    ${forgot_email_field}    natanon001@gmail.com
    Click Element   ${send_email_button}
    Wait Until Element Is Visible    ${top_right_alert}    10
    Element Text Should Be  ${top_right_alert}  expected=User not verified
    Sleep    5
    [Teardown]

TC_FP_004-กรณีกรอก Email ที่ถูก Disabled
    Open Forgot Password Page
    Wait Until Element Is Visible    ${forgot_email_field}    10
    Click Element    ${forgot_email_field}
    Input Text    ${forgot_email_field}    Nonverified@gmail.com
    Click Element   ${send_email_button}
    Wait Until Element Is Visible    ${top_right_alert}    10
    Element Text Should Be  ${top_right_alert}    User is currently disabled
    Sleep    5
    [Teardown]

TC_FP_005-กรณีกรอก Email ที่ไม่มีอยู่ในระบบ
    Open Forgot Password Page
    Wait Until Element Is Visible    ${forgot_email_field}    10
    Click Element    ${forgot_email_field}
    Input Text    ${forgot_email_field}    Nonregisted@gmail.com
    Click Element   ${send_email_button}
    Wait Until Element Is Visible    ${top_right_alert}    10
    Element Text Should Be  ${top_right_alert}    Warning : User is not verified
    Sleep    5
    [Teardown]

TC_FP_006-กรณีกรอก Email ที่มีอยู่ในระบบ
    Open Forgot Password Page
    Wait Until Element Is Visible    ${forgot_email_field}    10
    Click Element    ${forgot_email_field}
    Sleep    2s
    Input Text    ${forgot_email_field}    sakda@efinancethai.com
    Click Element   ${send_email_button}
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    ${top_right_alert}
    Run Keyword And Continue On Failure    Element Text Should Be  ${top_right_alert}    Password Reset Email has been sent. Please check your email
    Wait Until Element Is Visible    ${login_page}    10
    Element Text Should Be  ${login_page}     เข้าสู่ระบบ
    Sleep    5
    [Teardown]

TC_FP_007-กรณีกดปุ่ม Back To Sign in
    Open Forgot Password Page
    Wait Until Element Is Visible    ${Back_Signin_Button}    10
    Click Element    ${Back_Signin_Button}
    Wait Until Element Is Visible    ${login_page}    10
    Element Text Should Be  ${login_page}     เข้าสู่ระบบ
    Sleep    5

TC_FP_008กรณี Login ด้วย Password เก่า
    Log In    sakda@efinancethai.com    EVEFT@cs
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    //div[@class='Toastify__toast-body']/div[2]
    Run Keyword And Continue On Failure    Element Text Should Be    //div[@class='Toastify__toast-body']/div[2]   expected=Invalid password
    Element Should Not Be Visible    ${dashboard_page}
    [Teardown]
    Sleep    5

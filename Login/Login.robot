# Test Data ที่่ต้องเตรียมไว้ก่อนทำการ Automate Test
# 1.User (ไว้ทดสอบ Email ที่ถูกต้อง)
    - phonarun@efinancethai.com
    - EVEFT@cs
# 2. User
    - natanon001@gmail.com (ไว้ทดสอบ Email ที่ยังไม่ Veify)
    - mKwJ^iT_
# 3. User
    - Nonverified@gmail.com (ไว้ทดสอบ Email ที่ถูก Disable)
    - PQ6!l1Pa
    
*** Settings ***
Library   SeleniumLibrary    screenshot_root_directory=/Users/sakda.l/Desktop/TSB Automate/Login/Failed Screenshot
Test Teardown    Close Browser

#Command for running code and saving Report in specific path
#robot --outputdir "\Users\sakda.l\Desktop\TSB Automate\Login\Report" Login.robot
Resource    keyword.robot

*** Variables ***

## ${valid_email}, ${valid_pass}, ${email_field}, ${password_field}, ${login_button}, ${link} อยู่ที่ไฟล์ keyword.robot ##

#Data
${invalid_pass}    EVEFT@SD
${non_verified_email}    natanon001@gmail.com
${non_verified_pass}    mKwJ^iT_
${non_registed_email}    sakdanonregisted@gmail.com
${diabled_email}    Nonverified@gmail.com
${disabled_pass}    PQ6!l1Pa

#Locator

#---Text
${dashboard}    //*[@id="root"]//div[3]/h4
${title}    //*[@id="root"]/main/div[2]/div/div[2]/div/div[1]/div[2]/h4
${detail}    //*[@id="root"]/main/div[2]/div/div[2]/div/div[1]/div[2]/div
${email_label}    //*[@id="root"]/main/div[2]/div/div[2]/div/div[1]/form/div[1]/span/label
${email_placeholder}    //*[@id="root"]/main/div[2]/div/div[2]/div/div[1]/form/div[1]/div[1]/input 
${pass_label}    //*[@id="root"]/main/div[2]/div/div[2]/div/div[1]/form/div[2]/span/label
${pass_placeholder}    
${keep_signin_text}    //*[@id="root"]/main/div[2]/div/div[2]/div/div[1]/form/div[3]/label/span[2]
${forgot_pass_text}    //*[@id="root"]/main/div[2]/div/div[2]/div/div[1]/form/div[3]/a
${login_button_text}    //*[@id="root"]/main/div[2]/div/div[2]/div/div[1]/form/button
${copyright_text}    //*[@id="root"]/main/div[2]/div/div[2]/div/div[2]

#-- Button
${hide_show_button}    //*[@id="root"]/main/div[2]/div/div[2]/div/div[1]/form/div[2]/div/div/span
${forgot_pass_button}    //*[@id="root"]/main/div[2]/div/div[2]/div/div[1]/form/div[3]/a

#-- Field Alert
${no_email}    //*[@id="root"]/main/div[2]/div/div[2]/div/div[1]/form/div[1]/div[2]
${no_pass}    //*[@id="root"]/main/div[2]/div/div[2]/div/div[1]/form/div[2]/div[2]

#-- Top Right Alert
${top_right_alert}    //div[@class='Toastify__toast-body']/div[2]  

*** Keywords ***
## Keyword: Log In อยู่ที่ไฟล์ keyword.robot ##

*** Test Cases ***
TC_LI_001-หน้า Sign in
    Open Browser  ${link}    browser=chrome
    Wait Until Element Is Visible    ${title}    20
    Run Keyword And Continue On Failure    Element Text Should Be  ${title}     เข้าสู่ระบบ
    Run Keyword And Continue On Failure    Element Text Should Be  ${detail}    ลงชื่อเข้าใช้บัญชีของคุณเพื่อเริ่มใช้ Fleet Management System
    Run Keyword And Continue On Failure    Element Text Should Be  ${email_label}    อีเมล
    ${email_placeholder_text}    Get Element Attribute    ${email_placeholder}    placeholder
    Run Keyword And Continue On Failure     should be equal as strings  ${email_placeholder_text}  อีเมล
    Run Keyword And Continue On Failure    Element Text Should Be  ${pass_label}    รหัสผ่าน
    Run Keyword And Continue On Failure    Element Text Should Be  ${keep_signin_text}     บันทึกเข้าสู่ระบบ
    Run Keyword And Continue On Failure     Element Text Should Be  ${forgot_pass_text}     ลืมรหัสผ่าน?
    Run Keyword And Continue On Failure    Element Text Should Be  ${login_button_text}   เข้าสู่ระบบ
    Element Text Should Be  ${copyright_text}   Copyright 2023, Online Asset All Rights Reserviced


TC_LI_002-Sign in กรอก Email และ Password ถูกต้อง
    Log In    email=${valid_email}    password=${valid_pass}
    Wait Until Element Is Visible    ${dashboard}    20
    Element Text Should Be   ${dashboard}    expected=แดชบอร์ด
    
TC_LI_002-Sign in กรอก Email ที่ผิดรูปแบบ
    Log In    email=@sakda.efinance@.    password=${valid_pass}
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    ${no_email}
    Run Keyword And Continue On Failure    Element Text Should Be    ${no_email}  expected=อีเมลไม่ถูกต้อง
    Element Should Not Be Visible    ${dashboard}

TC_LI_003-Sign in กรอก Email ที่ถูกต้อง แต่ Password ไม่ถูกต้อง
    Log In   email=${valid_email}    password=${invalid_pass}
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    ${top_right_alert}
    Run Keyword And Continue On Failure    Element Text Should Be    ${top_right_alert}   expected=อีเมลหรือรหัสผ่านไม่ถูกต้อง
    Element Should Not Be Visible    ${dashboard}

TC_LI_004-Sign in ไม่กรอก Password
    Log In   email=${valid_email}    password=
    Run Keyword And Continue On Failure    Element Should Be Visible    ${no_pass}
    Run Keyword And Continue On Failure    Element Text Should Be    ${no_pass}  expected=โปรดระบุรหัสผ่าน
    Element Should Not Be Visible    ${dashboard}

TC_LI_005-Sign in ไม่กรอก Email 
    Log In   email=    password=${valid_pass}
    Run Keyword And Continue On Failure    Element Should Be Visible    ${no_email}
    Run Keyword And Continue On Failure    Element Text Should Be    ${no_email}  expected=โปรดระบุอีเมล
    Element Should Not Be Visible    ${dashboard}

TC_LI_006-Sign in ไม่กรอก Email และ Password   
    Log In   email=   password=
    Run Keyword And Continue On Failure    Element Should Be Visible    ${no_email}
    Run Keyword And Continue On Failure    Element Should Be Visible    ${no_pass}
    Run Keyword And Continue On Failure    Element Text Should Be    ${no_email}  expected=โปรดระบุอีเมล
    Run Keyword And Continue On Failure    Element Text Should Be    ${no_pass}  expected=โปรดระบุรหัสผ่าน
    Element Should Not Be Visible    ${dashboard}

TC_LI_007-Sign in ด้วย Email ที่ยังไม่ลงทะเบียน
    Log In   email=${non_registed_email}   password=${valid_pass}
    Run Keyword And Continue On Failure        Wait Until Element Is Visible    ${top_right_alert}
    Run Keyword And Continue On Failure        Element Text Should Be    ${top_right_alert}   expected=อีเมลหรือรหัสผ่านไม่ถูกต้อง
    Element Should Not Be Visible    ${dashboard}

TC_LI_008-Sign in ด้วย Email ยังไม่ Verified
    Log In   email=${non_verified_email}    password=${non_verified_pass}
    Run Keyword And Continue On Failure        Wait Until Element Is Visible    ${top_right_alert}
    Run Keyword And Continue On Failure        Element Text Should Be    ${top_right_alert}  expected=ผู้ใช้งานยังไม่ได้ยืนยัน
    Element Should Not Be Visible    ${dashboard}

TC_LI_009-Sign in ด้วย Email ที่ถูก Disabled
    Log In   email=${diabled_email}   password=${disabled_pass}
    Run Keyword And Continue On Failure        Wait Until Element Is Visible    ${top_right_alert}
    Run Keyword And Continue On Failure        Element Text Should Be    ${top_right_alert}  expected=ผู้ใช้งานถูกปิดการใช้งาน
    Element Should Not Be Visible    ${dashboard}

TC_LI_010-ช่องกรอก Email กรอกได้สูงสุด 50 ตัว
    Open Browser  ${link}    browser=chrome
    Wait Until Element Is Visible     ${email_field}    10
    ${Length}    Get Element Attribute    ${email_field}    maxlength
    should be equal as strings  ${Length}  50
    [Teardown]

TC_LI_011-กดปุ่มแสดง Password
    Wait Until Element Is Visible   ${hide_show_button}    10
    Click Element   ${hide_show_button}
    ${Check}    Get Element Attribute    ${password_field}    type
    Should Be Equal As Strings    ${Check}    text
    [Teardown]

TC_LI_012-กดปุ่มปิด Password
    Sleep     1s
    Click Element   ${hide_show_button}
    ${Check}    Get Element Attribute    ${password_field}    type
    Should Be Equal As Strings    ${Check}    password

TC_LI_013-กดปุ่ม Forgot Password?
    Open Browser  ${link}    browser=chrome 
    Wait Until Element Is Visible   ${forgot_pass_button}    10
    Click Element   ${forgot_pass_button}
    Wait Until Element Is Visible    //h4[@class="font-medium mb-4"]
    Element Text Should Be  //h4[@class="font-medium mb-4"]    ลืมรหัสผ่าน?









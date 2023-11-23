*** Settings ***
Library   SeleniumLibrary    screenshot_root_directory=/Users/sakda.l/Desktop/TSB Automate/Login/Failed Screenshot
Test Teardown    Close Browser


*** Variables ***
${email_field}     //input[@name="email"]
${password_field}    //input[@name='password']
${login_button}    //button[@class="btn btn-sm btn-dark block w-full text-center"]
${dashboard}    //div[@class="flex gap-4"]/h4["แดชบอร์ด"]
${no_email}    //*[@id="root"]/main/div[2]/div/div[2]/div/div[1]/form/div[1]/div[2]
${no_pass}    //*[@id="root"]/main/div[2]/div/div[2]/div/div[1]/form/div[2]/div[2]


*** Keywords ***
Log In
    [Arguments]    ${email}    ${password}
    Open Browser  url=http://qc-tsb-admin.onlineasset.co.th/    browser=chrome
    #Open Browser  url=http://qc-tsb-admin.onlineasset.co.th/    browser=chrome  
    #...    options=binary_location="C:\\CTF\\chrome-win64\\chrome-win64\\chrome.exe"
    Wait Until Element Is Visible     ${email_field}
    Click Element    ${email_field}
    Input Text  ${email_field}  text=${email}
    Wait Until Element Is Visible     ${password_field}
    Input Text  ${password_field}  text=${password}
    Wait Until Element Is Visible    ${login_button}
    Click Button   ${login_button}

*** Test Cases ***
TC_LI_001-ข้อความหน้า Sign in
    Open Browser  url=http://qc-tsb-admin.onlineasset.co.th/    browser=chrome  
    Wait Until Element Is Visible    //*[@id="root"]/main/div[2]/div/div[2]/div/div[1]/div[2]/h4
    Element Text Should Be  //*[@id="root"]/main/div[2]/div/div[2]/div/div[1]/div[2]/h4     เข้าสู่ระบบ
    Wait Until Element Is Visible   //*[@id="root"]/main/div[2]/div/div[2]/div/div[1]/div[2]/div
    Element Text Should Be  //*[@id="root"]/main/div[2]/div/div[2]/div/div[1]/div[2]/div    ลงชื่อเข้าใช้บัญชีของคุณเพื่อเริ่มใช้ Fleet Management System
    Wait Until Element Is Visible   //*[@id="root"]/main/div[2]/div/div[2]/div/div[1]/form/div[1]/span/label
    Element Text Should Be  //*[@id="root"]/main/div[2]/div/div[2]/div/div[1]/form/div[1]/span/label    อีเมล
    ${y}    Get Element Attribute    //*[@id="root"]/main/div[2]/div/div[2]/div/div[1]/form/div[1]/div[1]/input    placeholder
     should be equal as strings  ${y}  อีเมล
    Wait Until Element Is Visible   //*[@id="root"]/main/div[2]/div/div[2]/div/div[1]/form/div[2]/span/label
    Element Text Should Be  //*[@id="root"]/main/div[2]/div/div[2]/div/div[1]/form/div[2]/span/label    รหัสผ่าน
    Wait Until Element Is Visible   //*[@id="root"]/main/div[2]/div/div[2]/div/div[1]/form/div[3]/label/span[2]
    Element Text Should Be  //*[@id="root"]/main/div[2]/div/div[2]/div/div[1]/form/div[3]/label/span[2]     บันทึกเข้าสู่ระบบ
    Wait Until Element Is Visible   //*[@id="root"]/main/div[2]/div/div[2]/div/div[1]/form/div[3]/a
    Element Text Should Be  //*[@id="root"]/main/div[2]/div/div[2]/div/div[1]/form/div[3]/a     ลืมรหัสผ่าน?
    Wait Until Element Is Visible   //*[@id="root"]/main/div[2]/div/div[2]/div/div[1]/form/button 
    Element Text Should Be  //*[@id="root"]/main/div[2]/div/div[2]/div/div[1]/form/button   เข้าสู่ระบบ
    Wait Until Element Is Visible   //*[@id="root"]/main/div[2]/div/div[2]/div/div[2]
    Element Text Should Be  //*[@id="root"]/main/div[2]/div/div[2]/div/div[2]   Copyright 2023, Online Asset All Rights Reserviced


TC_LI_002-เข้าสู่ระบบด้วย Email และ Password ที่ถูกต้อง
    Log In    email=phonarun@efinancethai.com    password=EVEFT@cs
    Sleep    5s
    Wait Until Element Is Visible    ${dashboard}
    Element Text Should Be   ${dashboard}    expected=แดชบอร์ด
    

TC_LI_003-เข้าสู่ระบบด้วย Email ที่ถูกต้อง แต่ Password ไม่ถูกต้อง
    Log In   email=sakda@efinancethai.com    password=EVEFT@
    Sleep    2s
    Wait Until Element Is Visible    //div[@class='Toastify__toast-body']/div[2]
    Element Text Should Be    //div[@class='Toastify__toast-body']/div[2]   expected=Invalid password
    Sleep    2s

TC_LI_004-เข้าสู่ระบบโดยกรอก Email แต่ไม่กรอก Password
    Log In   email=sakda@efinancethai.com    password=
    Element Text Should Be    ${no_pass}  expected=Password is Required

TC_LI_005-เข้าสู่ระบบโดยกรอก Password แต่ไม่กรอก Email 
    Log In   email=    password=EVEFT@cs
    Element Text Should Be    ${no_email}  expected=Email is Required

TC_LI_006-เข้าสู่ระบบโดยไม่กรอก Email และ Password   
    Log In   email=   password=
    Element Text Should Be    ${no_email}  expected=Email is Required
    Element Text Should Be    ${no_pass}  expected=Password is Required

TC_LI_007-เข้าสู่ระบบด้วย Email ที่ยังไม่ลงทะเบียน
    Log In   email=sakdanonregisted@gmail.com   password=123456789
    Wait Until Element Is Visible    //div[@class='Toastify__toast-body']/div[2]
    Element Text Should Be    //div[@class='Toastify__toast-body']/div[2]   expected=Invalid email

TC_LI_008-เข้าสู่ระบบด้วย Email ยังไม่ Verified
    Log In   email=natanon001@gmail.com    password=mKwJ^iT_
    Wait Until Element Is Visible    //div[@class='Toastify__toast-body']/div[2]
    Element Text Should Be    //div[@class='Toastify__toast-body']/div[2]  expected=User not verified

TC_LI_009-เข้าสู่ระบบด้วย Email ที่ถูก Disabled
    Log In   email=Nonverified@gmail.com    password=PQ6!l1Pa
    Wait Until Element Is Visible    //div[@class='Toastify__toast-body']/div[2]
    Element Text Should Be    //div[@class='Toastify__toast-body']/div[2]  expected=User is currently disabled

TC_LI_010-ช่องกรอก Email กรอกได้สูงสุด 50 ตัว
    Open Browser  url=https://fleet.tsbcloud.co/    browser=chrome
    Wait Until Element Is Visible     ${email_field}
    ${Length}    Get Element Attribute    ${email_field}    maxlength
    should be equal as strings  ${Length}  50
    [Teardown]

TC_LI_011-กดปุ่มแสดง Password
    Wait Until Element Is Visible   //*[@id="root"]/main/div[2]/div/div[2]/div/div[1]/form/div[2]/div/div/span
    Click Element   //*[@id="root"]/main/div[2]/div/div[2]/div/div[1]/form/div[2]/div/div/span
    ${Check}    Get Element Attribute    ${password_field}    type
    Should Be Equal As Strings    ${Check}    text
    [Teardown]

TC_LI_012-กดปุ่มปิด Password
    Sleep     1s
    Click Element   //*[@id="root"]/main/div[2]/div/div[2]/div/div[1]/form/div[2]/div/div/span
    ${Check}    Get Element Attribute    ${password_field}    type
    Should Be Equal As Strings    ${Check}    password
    Sleep   5s

TC_LI_013-กดปุ่ม Forgot Password
    Open Browser  url=http://qc-tsb-admin.onlineasset.co.th/    browser=chrome 
    Wait Until Element Is Visible   //*[@id="root"]/main/div[2]/div/div[2]/div/div[1]/form/div[3]/a
    Click Element   //*[@id="root"]/main/div[2]/div/div[2]/div/div[1]/form/div[3]/a
    Wait Until Element Is Visible    //h4[@class="font-medium mb-4"]
    Element Text Should Be  //h4[@class="font-medium mb-4"]    Forgot Your Password?









*** Settings ***
Library   SeleniumLibrary    screenshot_root_directory=/Users/sakda.l/Desktop/TSB Automate/Login/Failed Screenshot    
Test Teardown    Clear Element Text    //*[@id="root"]/main/div/div/div[2]/div/div[1]/form/div/div/input

#Output Directory   robot --outputdir \Users\sakda.l\Desktop\TSBAutomate\Login\Report\%TIMESTAMP% Forgot.robot
#robot --outputdir "\Users\sakda.l\Desktop\TSB Automate\Login\Report" Forgot.robot  
#   

*** Variables ***
${Title}    //h4[@class="font-medium mb-4"]
${Text}    //div[@class="font-normal text-base text-slate-500 dark:text-slate-400 text-center px-2 bg-slate-100 dark:bg-slate-600 rounded py-3 mb-4 mt-10"]
${Label Email}    //*[@id="root"]/main/div/div/div[2]/div/div[1]/form/div/span/label
${Reset Button}    //button[@class="btn btn-dark block w-full text-center"]
${Back_Signin_Text}    //div[@class="md:max-w-[345px] mx-auto font-normal text-slate-500 dark:text-slate-400 2xl:mt-12 mt-8 uppercase text-sm"]
${Back_Signin_Button}    //a[@class="text-slate-900 dark:text-white font-medium hover:underline"]
&{Check_Lang}
&{EN}    email=Email    Title=Invalid Email
&{TH}    password=รหัสผ่านไม่ถูกต้อง    email=อีเมลไม่ถูกต้อง

*** Keywords ***
Open Forgot Password Page
    Open Browser  url=http://qc-tsb-admin.onlineasset.co.th/    browser=chrome 
    Wait Until Element Is Visible   //*[@id="root"]/main/div[2]/div/div[2]/div/div[1]/form/div[3]/a
    Click Element   //*[@id="root"]/main/div[2]/div/div[2]/div/div[1]/form/div[3]/a
    
*** Test Case ***
TC_FP_001-ข้อความหน้า Forgot Password
    Open Forgot Password Page
    
    #${check}    Get Text    //input[@name="email"]  
    #IF    $check == email
    #    &{Check_Lang}=EN
    #ELSE IF    $check == อีเมล
    #    &{Check_Lang}=TH
    #END

    Wait Until Element Is Visible    ${Title}
    Element Text Should Be  ${Title}    Forgot Your Password?
    Element Text Should Be    ${Text}    Enter your Email and instructions will be sent to you!
    Element Text Should Be    ${Label Email}    Email
    Element Text Should Be    ${Reset Button}    Send Recovery Email
    Element Text Should Be    ${Back_Signin_Text}    BACK TO SIGN IN


TC_FP_002-กรณีไม่กรอก Email
    Wait Until Element Is Visible   //*[@id="root"]/main/div/div/div[2]/div/div[1]/form/button
    Click Element   //*[@id="root"]/main/div/div/div[2]/div/div[1]/form/button
    Element Text Should Be  //*[@id="root"]/main/div/div/div[2]/div/div[1]/form/div/div[2]  Email is Required
    Sleep   5s

TC_FP_003-กรณีกรอก Email ที่ยังไม่ Verified
    Wait Until Element Is Visible    //*[@id="root"]/main/div/div/div[2]/div/div[1]/form/div/div/input
    Click Element    //*[@id="root"]/main/div/div/div[2]/div/div[1]/form/div/div/input
    Input Text    //*[@id="root"]/main/div/div/div[2]/div/div[1]/form/div/div/input    natanon001@gmail.com
    Click Element   //*[@id="root"]/main/div/div/div[2]/div/div[1]/form/button
    Sleep    2s
    Element Text Should Be  //div[@class='Toastify__toast-body']/div[2]  expected=User is currently disabled
    Sleep    5s
    [Teardown]

TC_FP_004-กรณีกรอก Email ที่ถูก Disabled
    Open Forgot Password Page
    Wait Until Element Is Visible    //*[@id="root"]/main/div/div/div[2]/div/div[1]/form/div/div/input
    Click Element    //*[@id="root"]/main/div/div/div[2]/div/div[1]/form/div/div/input
    Input Text    //*[@id="root"]/main/div/div/div[2]/div/div[1]/form/div/div/input    Nonverified@gmail.com
    Click Element   //*[@id="root"]/main/div/div/div[2]/div/div[1]/form/button
    Sleep    2s
    Element Text Should Be  //div[@class='Toastify__toast-body']/div[2]  expected=User is currently disabled
    Sleep    5s
    [Teardown]

TC_FP_005-กรณีกรอก Email ที่ไม่มีอยู่ในระบบ
    Wait Until Element Is Visible    //*[@id="root"]/main/div/div/div[2]/div/div[1]/form/div/div/input
    Click Element    //*[@id="root"]/main/div/div/div[2]/div/div[1]/form/div/div/input
    Sleep    2s
    Input Text    //*[@id="root"]/main/div/div/div[2]/div/div[1]/form/div/div/input    Nonregisted@gmail.com
    Click Element   //*[@id="root"]/main/div/div/div[2]/div/div[1]/form/button
    Element Text Should Be  //div[@class='Toastify__toast-body']/div[2]  expected=Warning : User is not verified
    Sleep    5s
    [Teardown]

TC_FP_006-กรณีกรอก Email ที่มีอยู่ในระบบ
    Wait Until Element Is Visible    //*[@id="root"]/main/div/div/div[2]/div/div[1]/form/div/div/input
    Click Element    //*[@id="root"]/main/div/div/div[2]/div/div[1]/form/div/div/input
    Sleep    2s
    Input Text    //*[@id="root"]/main/div/div/div[2]/div/div[1]/form/div/div/input    sakda@efinancethai.com
    Click Element   //*[@id="root"]/main/div/div/div[2]/div/div[1]/form/button
    Element Text Should Be  //div[@class='Toastify__toast-body']/div[2]  expected=Password Reset Email has been sent. Please check your email
    Sleep    5s
    [Teardown]

TC_FP_007-กรณีกดปุ่ม Back To Sign in
    Wait Until Element Is Visible    ${Back_Signin_Button}
    Click Element    ${Back_Signin_Button}
    Wait Until Element Is Visible    //*[@id="root"]/main/div[2]/div/div[2]/div/div[1]/div[2]/h4
    Element Text Should Be  //*[@id="root"]/main/div[2]/div/div[2]/div/div[1]/div[2]/h4     เข้าสู่ระบบ

TC_FP_008กรณี Login ด้วย Password เก่า
    
    Open Browser  url=http://qc-tsb-admin.onlineasset.co.th/    browser=chrome
    Wait Until Element Is Visible     //input[@name="email"]
    Click Element    //input[@name="email"]
    Input Text  //input[@name="email"]  sakda@efinancethai.com
    Wait Until Element Is Visible    //input[@name='password']
    Input Text  //input[@name='password']  text=EVEFT@cs2
    Wait Until Element Is Visible    //button[@class="btn btn-sm btn-dark block w-full text-center"]
    Click Button   //button[@class="btn btn-sm btn-dark block w-full text-center"]
    Wait Until Element Is Visible    //div[@class='Toastify__toast-body']/div[2]
    Element Text Should Be    //div[@class='Toastify__toast-body']/div[2]   expected=Invalid password
    [Teardown]
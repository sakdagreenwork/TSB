# Test Data ที่่ต้องเตรียมไว้ก่อนทำการ Automate Test
# 1.User (ไว้ทดสอบเปลี่ยนรหัส และ ล็อคอินด้วยรหัสเดิม)
    - sakda@efinancethai.com
    - EVEFT@cs (ทดสอบรหัสเก่า)
# 2. User
    - natanon001@gmail.com (ไว้ทดสอบ Email ที่ยังไม่ Veify)
    - mKwJ^iT_
# 3. User
    - Nonverified@gmail.com (ไว้ทดสอบ Email ที่ถูก Disable)
    - PQ6!l1Pa
# 4. User **(User นี้ต้องไม่ถูกสร้างในระบบ)**
    - Nonregisted@gmail.com

*** Settings ***
Library   SeleniumLibrary    screenshot_root_directory=/Users/sakda.l/Desktop/TSB Automate/Login/Failed Screenshot 
Library    String
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
${error_text0}    "Default ข้อมูล"

*** Keywords ***

## Keyword: Log In อยู่ที่ไฟล์ keyword.robot ##

find_word_since_should
    [Arguments]    ${text}
    
    ${length_text}    Get Length    ${text}

    Log To Console    ข้อความที่รับมา   ${text}
    Log To Console    ความยาวข้อความที่รับมา   ${text}
    FOR    ${index}    IN RANGE    0    ${length_text}   
        IF    '${text}[${index}]' == "s"
            #Log To Console    เจอ s ที่ ${index}
            ${index}    Set Variable    ${index+1}

            IF    '${text}[${index}]' == "h"
            #Log To Console    เจอ sh ที่ ${index}
            ${index}    Set Variable    ${index+1}
            
                IF    '${text}[${index}]' == "o"
                #Log To Console    เจอ sho ที่ ${index}
                ${index}    Set Variable    ${index+1}

                    IF    '${text}[${index}]' == "u"
                    #Log To Console    เจอ shou ที่ ${index}
                    ${index}    Set Variable    ${index+1}

                        IF    '${text}[${index}]' == "l"
                        #Log To Console    เจอ shoul ที่ ${index}
                        ${index}    Set Variable    ${index+1}

                            IF    '${text}[${index}]' == "d"
                            #Log To Console    เจอ should ที่ ${index}
                            ${index}    Set Variable    ${index-5}
                            Log To Console    should อยู่ที่ตำแหน่ง ${index}
                            Log To Console    ${text}[${index}:]
                            RETURN    ${text}[${index}:]
                            END
                        END
                    END
                END
            END
        END
    END



Open Forgot Password Page
    Open Browser  ${link}    browser=chrome
    Wait Until Element Is Visible    ${login_page}
    Wait Until Element Is Visible   ${forgot_pass_page_button}    20
    Sleep    1
    Click Element   ${forgot_pass_page_button}
    
*** Test Case ***
TC_LI_020-Sign in ด้วย Password เก่า
    Log In    sakda@efinancethai.com    EVEFT@cs
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    //div[@class='Toastify__toast-body']/div[2]
    Run Keyword And Continue On Failure    Element Text Should Be    //div[@class='Toastify__toast-body']/div[2]   expected=อีเมลหรือรหัสผ่านไม่ถูกต้อง
    Element Should Not Be Visible    ${dashboard_page}

TC_LI_027-ข้อความหน้า Forgot Your Password
    ${issue_message}    Set Variable    ISSUE : 
    Open Forgot Password Page
    Wait Until Element Is Visible    ${Title}    15
    # Run Keyword And Continue On Failure    Element Text Should Be  ${Title}    ลืมรหัสผ่าน?
    
    ${error_text0}    Run Keyword And Ignore Error    Element Text Should Be  ${Title}    ลืมรหัสผ่าน?
    IF    "${error_text0}[0]" == "FAIL"
        ${text}    Set Variable    ${error_text0}[1]
        
        ${text}    Replace String    ${text}    '    --
        ${text}    Replace String    ${text}    "    --
     
         Log To Console    ข้อความที่ตัด ${text}    
      
       ${length_text}    Get Length    ${text}
       Log To Console    ${length_text}
       Log To Console    ข้อความก่อนไปแยกส่วน ${text}


        FOR    ${index}    IN RANGE    0    ${length_text}   
            IF     "${text}[${index}]" == "s"
                Log To Console    เจอ s ที่ ${index}
                ${index}    Set Variable    ${index+1}

                IF    '${text}[${index}]' == "h"
                Log To Console    เจอ sh ที่ ${index}
                ${index}    Set Variable    ${index+1}
                
                    IF    '${text}[${index}]' == "o"
                    Log To Console    เจอ sho ที่ ${index}
                    ${index}    Set Variable    ${index+1}

                        IF    '${text}[${index}]' == "u"
                        Log To Console    เจอ shou ที่ ${index}
                        ${index}    Set Variable    ${index+1}

                            IF    '${text}[${index}]' == "l"
                            Log To Console    เจอ shoul ที่ ${index}
                            ${index}    Set Variable    ${index+1}

                                IF    '${text}[${index}]' == "d"
                                Log To Console    เจอ should ที่ ${index}
                                ${index}    Set Variable    ${index-5}
                                Log To Console    should อยู่ที่ตำแหน่ง ${index}
                                Log To Console    ${text}[${index}:]
                                END
                            END
                        END
                    END
                END
            END
        END

    END

    # Run Keyword And Continue On Failure    Element Text Should Be    ${Label Email}    อีเมล2    ต้องแสดงำว่า Email
    # Run Keyword And Continue On Failure    Element Text Should Be    ${send_email_button}    ส่งอีเมลเปลี่ยนรหัสผ่าน
    # Run Keyword And Continue On Failure    Element Text Should Be    ${Back_Signin_Text}   กลับ เข้าสู่ระบบ
    # [Teardown]    Set Test Documentation    ${issue_message}

TC_LI_028-Forgot Password ด้วย Email ที่ไม่มีอยู่ในระบบ
    Open Forgot Password Page
    Wait Until Element Is Visible    ${forgot_email_field}    15
    Click Element    ${forgot_email_field}
    Input Text    ${forgot_email_field}    Nonregisted@gmail.com
    Click Element   ${send_email_button}
    Wait Until Element Is Visible    ${top_right_alert}    10
    Element Text Should Be  ${top_right_alert}    อีเมลไม่ถูกต้อง

TC_LI_029-Forgot Password โดยไม่กรอก Email
    Open Forgot Password Page
    Wait Until Element Is Visible   ${send_email_button}    10
    Click Element   ${send_email_button}
    Element Text Should Be  ${email_field_alert}  โปรดระบุอีเมล

TC_LI_030-Forgot Password โดยกรอก Email ที่ผิดรูปแบบ
    Open Forgot Password Page
    Wait Until Element Is Visible    ${forgot_email_field}    15
    Click Element    ${forgot_email_field}
    Input Text    ${forgot_email_field}    @sakda.efinance@.
    Click Element   ${send_email_button}
    Wait Until Element Is Visible    ${email_field_alert}
    Element Text Should Be    ${email_field_alert}    อีเมลไม่ถูกต้อง

TC_LI_031-Forgot Password ด้วย Email ที่ยังไม่ Verified
    Open Forgot Password Page
    Wait Until Element Is Visible    ${forgot_email_field}    15
    Click Element    ${forgot_email_field}
    Input Text    ${forgot_email_field}    natanon001@gmail.com
    Click Element   ${send_email_button}
    Wait Until Element Is Visible    ${top_right_alert}    10
    Element Text Should Be  ${top_right_alert}  expected=ผู้ใช้งานยังไม่ได้ยืนยัน


TC_LI_034-Forgot Password ด้วย Email ที่ถูก Disabled
    Open Forgot Password Page
    Wait Until Element Is Visible    ${forgot_email_field}    15
    Click Element    ${forgot_email_field}
    Input Text    ${forgot_email_field}    Nonverified@gmail.com
    Click Element   ${send_email_button}
    Wait Until Element Is Visible    ${top_right_alert}    10
    Element Text Should Be  ${top_right_alert}    ผู้ใช้งานถูกปิดการใช้งาน

TC_LI_035-Forgot Password ด้วย Email ที่มีอยู่ในระบบ
    Open Forgot Password Page
    Wait Until Element Is Visible    ${forgot_email_field}    15
    Click Element    ${forgot_email_field}
    Sleep    2s
    Input Text    ${forgot_email_field}    sakda@efinancethai.com
    Click Element   ${send_email_button}
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    ${top_right_alert}
    Run Keyword And Continue On Failure    Element Text Should Be  ${top_right_alert}    ส่งอีเมลเปลี่ยนรหัสผ่านสำเร็จ โปรดตรวจสอบอีเมล
    Wait Until Element Is Visible    ${login_page}    10
    Element Text Should Be  ${login_page}     เข้าสู่ระบบ

TC_LI_036-กรณีกดปุ่ม Back To Sign in
    Open Forgot Password Page
    Wait Until Element Is Visible    ${Back_Signin_Button}    15
    Click Element    ${Back_Signin_Button}
    Wait Until Element Is Visible    ${login_page}    10
    Element Text Should Be  ${login_page}     เข้าสู่ระบบ
    Sleep    1


    

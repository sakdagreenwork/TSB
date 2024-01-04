*** Settings ***
Library    ExcelLibrary  
Library    String
Library    SeleniumLibrary    screenshot_root_directory=/Users/sakda.l/Desktop/TSB Automate/Login/Failed Screenshot
Library    DateTime
Library    Collections
Resource    keyword.robot

*** Keywords ***
Open Schedule Preset Menu
    Log In Valid
    Wait Until Element Is Visible    //*[@id="root"]/main/header/div/div/div[1]/div[2]//*[name()='svg']
    Click Element    //*[@id="root"]/main/header/div/div/div[1]/div[2]//*[name()='svg']
    Click Element    //*[@id="root"]/main/div[2]/div[3]/div[1]/div[2]/div/div/div/ul/li[4]
    Wait Until Element Is Visible    //*[@id="root"]/main/div[2]/div[3]/div[1]/div[2]/div/div/div/ul/li[4]/div[2]/div/ul/li[1]/a/span/span[2]
    Click Element    //*[@id="root"]/main/div[2]/div[3]/div[1]/div[2]/div/div/div/ul/li[4]/div[2]/div/ul/li[1]/a/span/span[2]
    Sleep    2

Open Schedule Approval
    Log In Valid
    Wait Until Element Is Visible    //*[@id="root"]/main/header/div/div/div[1]/div[2]//*[name()='svg']
    Click Element    //*[@id="root"]/main/header/div/div/div[1]/div[2]//*[name()='svg']
    Click Element    //*[@id="root"]/main/div[2]/div[3]/div[1]/div[2]/div/div/div/ul/li[4]
    Wait Until Element Is Visible    //*[@id="root"]/main/div[2]/div[3]/div[1]/div[2]/div/div/div/ul/li[4]/div[2]/div/ul/li[2]/a/span/span[2]
    Click Element    //*[@id="root"]/main/div[2]/div[3]/div[1]/div[2]/div/div/div/ul/li[4]/div[2]/div/ul/li[2]/a/span/span[2]
    Sleep    2

Select Schedule
    [Arguments]    ${schedule_name}
    Open Schedule Preset Menu
    Wait Until Element Is Visible    //*[@id="root"]/main/div[3]/div/div/div/div/div[1]/div/div[1]/div/main/div[1]/div[1]/input
    Input Text    //*[@id="root"]/main/div[3]/div/div/div/div/div[1]/div/div[1]/div/main/div[1]/div[1]/input    ${schedule_name}
    Click Element    //*[@id="root"]/main/div[3]/div/div/div/div/div[1]/div/div[1]/div/main/div[2]/div[1]/div[2]/div/div/div/div/div/div[1]

add_new_trip
    [Arguments]    ${start_hour}=0    ${start_min}=0    ${select_hour}=0    ${select_min}=0
    Sleep    1
    Click Element    //*[@id="timepicker"]
    Sleep    1
    Click Element    //*[@class="numInput flatpickr-hour"]
    Sleep    0.5
    Press Keys    //*[@class="numInput flatpickr-hour"]    DELETE
    Sleep    1
    Press Keys    //*[@class="numInput flatpickr-hour"]    ${start_hour}
    Click Element    //*[@class="numInput flatpickr-minute"]
    Press Keys    //*[@class="numInput flatpickr-minute"]    DELETE
    Press Keys    //*[@class="numInput flatpickr-minute"]    ${start_min}
    Sleep    0.5
    
    Click Element    //body/div[2]/div[3]/div[2]/div[2]/div/div[2]/div/div[2]/div[2]/div/div[2]
    Click Element    //body/div[2]/div[3]/div[2]/div[2]/div/div[2]/div/div[2]/div[1]/div/div[2]
    Sleep    0.5
    Wait Until Element Is Visible    //html/body//div[2]/div[1]/div[2]/div[1]/div/div[1]/div[2]/input
    Input Text    //html/body//div[2]/div[1]/div[2]/div[1]/div/div[1]/div[2]/input    ${select_hour}
    Sleep    0.5
    Wait Until Element Is Visible    //html/body/div[4]//*[text()[contains(.,'${select_hour}')]]
    Click Element    //html/body/div[4]//*[text()[contains(.,'${select_hour}')]]

    Click Element    //body/div[2]/div[3]/div[2]/div[2]/div/div[2]/div/div[2]/div[2]/div/div[2]
    Wait Until Element Is Visible    //html/body/div[2]/div[3]/div[2]/div[2]/div/div[2]/div[1]/div[2]/div[2]/div/div[1]/div[2]/input
    Input Text    //html/body/div[2]/div[3]/div[2]/div[2]/div/div[2]/div[1]/div[2]/div[2]/div/div[1]/div[2]/input    ${select_min}
    Wait Until Element Is Visible    //html/body/div[4]//*[text()[contains(.,'${select_min}')]]
    Click Element    //html/body/div[4]//*[text()[contains(.,'${select_min}')]]
    
    Sleep    0.5
    Click Element    //html/body/div[2]/div[3]/div[2]/div[3]/button[2]
    #Sleep    0.5

deploy_schedule_with_name
    [Arguments]    ${sche_name}
    Select Schedule    ${sche_name}
    Sleep    0.5
    Click Element    //*[@id="root"]/main//main/div/div/div[1]/div[3]/div[3]/button
    Double Click Element    //*[@id="root"]/main/div[3]//div[2]/div[2]/div/div[1]
    Click Element    //*[@id="root"]/main//div[3]/div[1]/button
    Click Element    //*[@id="headlessui-portal-root"]//div[3]/div/div/div[1]

save_schedule
    Click Element    //*[@id="root"]/main//main/div/div/div[1]/div[3]/div[2]/button
    Click Element    //*[@id="headlessui-portal-root"]//div[3]/div/div/div[1]

deploy-schedule_no_name
    [Arguments]    ${day}
    Sleep    1
    Click Element    //*[@id="root"]/main//main/div/div/div[1]/div[3]/div[3]/button
    Sleep    1
    Double Click Element    //*[@id="root"]/main/div[3]//div[2]//div[text()=${day}][@aria-pressed="true"]
    Click Element    //*[@id="root"]/main//div[3]/div[1]/button
    Click Element    //*[@id="headlessui-portal-root"]//div[3]/div/div/div[1]
    Sleep    1
    Click Element    //*[@id="headlessui-portal-root"]/div/div/div/div/div/div/div/div/button
    Click Element    //*[@id="root"]/main//div[3]/div[2]/button

get_day
    ${dmy}    Get Current Date
    ${day}    Set Variable    ${dmy[8:10]}
    ${int_day}    Convert To Integer    ${day}    
    RETURN    ${int_day}

create_schedule_preset
    [Arguments]    ${sche_name}
    Click Element    //*[@id="root"]/main//div[1]/div/div[1]/div/main/div[1]/div[2]/div/button
    Input Text    //*[@id="headlessui-portal-root"]/div//form/div/div/div/input    ${sche_name}

    Click Element    //button[@type="submit"]
    Wait Until Element Is Visible    //*[@id="headlessui-portal-root"]/div[2]/div/div/div/div/div/div/div/div/div[1]
    Click Element    //*[@id="headlessui-portal-root"]/div[2]/div/div/div/div/div/div/div/div/div[1]
    Sleep    10

delete_schedule_preset
    Wait Until Element Is Visible    //*[@id="root"]/main//main/div[2]/div[1]/div[2]//div[@class="m-0"][2]/div
    Click Element    //*[@id="root"]/main//main/div[2]/div[1]/div[2]//div[@class="m-0"][2]/div
    Wait Until Element Is Visible    //*[@id="headlessui-portal-root"]/div/div/div/div/div/div/div/div/div/div[1]
    Click Element    //*[@id="headlessui-portal-root"]/div/div/div/div/div/div/div/div/div/div[1]

*** Test Cases ***
Read Excel Until Empty Cell
    Open Excel Document    C:/Users/sakda.l/Desktop/จัดตารางเดินรถ/1-18E.xlsx    doc_id=doc1
    #Open Excel       C:\Users\sakda.l\Desktop\จัดตารางเดินรถ\1-18E.xlsx
    ${row}=    Set Variable    2
    ${column}=    Set Variable    2
    ${column_stop}=    Set Variable    5

    FOR    ${i}    IN RANGE    100
    
        ${a1}=  Read Excel Cell    ${row}    ${column}
        Run Keyword If    '${a1}' == 'None'    Exit For Loop  
        ${s_a1}    Convert To String    ${a1}
        ${a2}=    Get Substring    ${s_a1}    2 
        Log    Value from Excel: ${a1}
        Log    Value SubString: ${a2}
        

        FOR    ${j}    IN RANGE    100
            ${b1}=  Read Excel Cell    ${row}    ${column_stop}

            Run Keyword If    '${b1}' == 'None'    Exit For Loop  
            
            ${str_b1}    Convert To String    ${b1}
            ${hour}    Get Substring    ${str_b1}    0    2
            ${min}    Get Substring    ${str_b1}    3    5
            
            ${int_hour}    Convert To Integer    ${hour}
            ${int_min}    Convert To Integer    ${min}
            
             Log To Console    ชั่วโมงรถออก : ${int_hour} นาฬิกา ${int_min} นาที
            
            ${stop_time_plus}    Set Variable    1
            ${column_stop2}    Evaluate    ${column_stop} + ${stop_time_plus}

            ${b2}=  Read Excel Cell    ${row}    ${column_stop2}

            Run Keyword If    '${b2}' == 'None'    Exit For Loop  
            
            ${str_b2}    Convert To String    ${b2}
            ${hour2}    Get Substring    ${str_b2}    0    2
            ${min2}    Get Substring    ${str_b2}    3    5
            
            ${int_hour2}    Convert To Integer    ${hour2}
            ${int_min2}    Convert To Integer    ${min2}
        
            Log To Console    ชั่วโมงรถเข้า : ${int_hour2} นาฬิกา ${int_min2} นาที
           
            #${check_hour}=    Evaluate    type($int_hour)     
            #Log To Console     ${check_hour}
            #${check_hour2}=    Evaluate    type($int_hour2)     
            #Log To Console     ${check_hour2}


            #Log    Value from Excel: ${b1}
            #Log    Value SubString:   ${hour}
            #${type}=    Evaluate     type($b1)
            #Log To Console     ${type}


            ${diff_hour}    Evaluate    ${int_hour2} - ${int_hour}
            ${diff_min}    Evaluate    ${int_min2} - ${int_min}

            IF    ${diff_min} < 0
                ${minus}    Set Variable    1
                ${diff_hour}    Evaluate    ${diff_hour} - ${minus}
                ${diff_min}    Evaluate    60 + ${diff_min}
            ELSE
                Log    ""

            END

            Log To Console    เวลาที่ต้องใส่ ${diff_hour} ชม. ${diff_min} น.
             Log To Console    ""



            ${plus_column}    Set Variable    2
            ${column_stop} =    Evaluate    ${column_stop} + ${plus_column}
        END





        
        ${plus}    Set Variable    1
        ${row} =   Evaluate    ${row} + ${plus}
        ${column_stop}    Set Variable    5
    END

   Close Current Excel Document

เลือก Schedule
    Log In Valid
    Wait Until Element Is Visible    //*[@id="root"]/main/header/div/div/div[1]/div[2]//*[name()='svg']    10
    
เปิด
    Select Schedule    Schedule 12 Oct
    Sleep    2
    #Click Element    //*[@id="root"]/main/div[4]/div/div/div/div/div[1]/div/div[2]/div/div/div/main/div/div/div[2]/div[1]/div[2]/div/div/div/div/div[2]/div[2]/div[3]/div/div[4]/div[3]/div[3]/div/div[31]
    Click Element    //*[@id="root"]/main/div[3]/div/div/div/div/div[1]/div/div[2]/div/div/div/main/div/div/div[2]/div[1]/div[2]/div/div/div/div/div[2]/div[2]/div[3]/div/div[4]/div[4]/div[3]/div
    Sleep    2
    Click Element    //*[@id="timepicker"]
    #Click Element    //*[@id="timepicker"]
    Sleep    2
    Click Element    //*[@class="numInput flatpickr-hour"]
    Sleep    2
    Press Keys    //*[@class="numInput flatpickr-hour"]    DELETE
    Sleep    1
    Press Keys    //*[@class="numInput flatpickr-hour"]    9
    Click Element    //*[@class="numInput flatpickr-minute"]
    Press Keys    //*[@class="numInput flatpickr-minute"]    DELETE
    Press Keys    //*[@class="numInput flatpickr-minute"]    50
    Sleep    2
    
    Click Element    //body/div[2]/div[3]/div[2]/div[2]/div/div[2]/div/div[2]/div[2]/div/div[2]
    Click Element    //body/div[2]/div[3]/div[2]/div[2]/div/div[2]/div/div[2]/div[1]/div/div[2]
    Input Text    //*[@id="react-select-3-input"]    7
    Sleep    2
    Wait Until Element Is Visible    //html/body/div[4]
    Click Element    //html/body/div[4]//*[text()[contains(.,'7')]]

    Click Element    //body/div[2]/div[3]/div[2]/div[2]/div/div[2]/div/div[2]/div[2]/div/div[2]
    Input Text    //*[@id="react-select-4-input"]    50
    Wait Until Element Is Visible    //html/body/div[4]
    Click Element    //html/body/div[4]//*[text()[contains(.,'50')]]
    
    #Click Element    //html/body/div[4]//*[text()[contains(.,'50')]]
    #Wait Until Element Is Visible    //html/body/div[2]/div[3]/div[2]/div[2]/div/div[2]/div[1]/div[2]/div[1]/span[2]//*[text()[contains(.,'7')]]    10
    Sleep    3
    Click Element    //html/body/div[2]/div[3]/div[2]/div[3]/button[2]
    #Press Keys    //*[@id="react-select-3-input"]    ENTER
    
    #Click Element    //html/body/div[2]/div[3]/div[2]/div[2]/div/div[2]/div[1]/div[2]/div[1]/span[2]//*[text()[contains(.,'7')]]
    Sleep    1000
    #Click Element    /html/body/div[2]/div[3]/div[2]/div[2]/div/div[2]/div[1]/div[2]/div[1]/div/div[2]/div
    #Sleep    50


    

สร้างเที่ยวตาม Excel
    ${subline}    Set Variable    4-52L(146L)   
    ${file_name}    Set Variable    ${subline}_20231110.xlsx    
    Select Schedule    สาย ${subline}
    ${fail_all}    Set Variable    0
    ${sum}    Set Variable    1
    ${car}    Set Variable    7912
    
    ${table}    Set Variable    //*[@id="root"]/main/div[3]/div/div/div/div/div[1]/div/div[2]/div/div/div/main/div/div/div[2]/div[1]/div[2]/div/div/div/div/div[2]/div[2]/div[3]/div/div[4]/div[3]

    ${excel_license}    Set Variable    1
    ${row}=    Set Variable    2
    ${column}=    Set Variable    1
    ${column_stop}=    Set Variable    5
    Open Excel Document    C:/Users/sakda.l/Desktop/จัดตารางเดินรถ/${file_name}    doc_id=doc1

    Sleep    1
    FOR    ${i}    IN RANGE    100
    
        ${a1}=  Read Excel Cell    ${row}    ${column}
        Run Keyword If    '${a1}' == 'None'    Exit For Loop 
        Run Keyword If    '${a1}' == ''    Exit For Loop 
        ${s_a1}    Convert To String    ${a1}
        ${excel_license}=    Get Substring    ${s_a1}    4 
        #Log To Console   ทะเบียนปกติ: ${a1}
        #Log To Console   ทะเบียน: ${excel_license}
        
    
    
    

        ${count}    Set Variable    3


        FOR    ${i}    IN RANGE    100
            
            #Log To Console  รอบที่ ${i}
            #Sleep    1
            ${check}   Run Keyword And Return Status     Element Should Be Visible    //*[@id="root"]/main//div/div/div/div[1]/div/div[2]/div/div/div/main/div/div/div[2]/div[1]/div[2]/div/div/div/div/div[2]/div[2]/div[3]/div/div[1]/div[2]/div[${count}] 

            IF    ${check} == $False
                Log To Console    ไม่เจอรถแล้ว
                Exit For Loop
            ELSE

                ${license_plate}    Get Text    //*[@id="root"]/main//div/div/div/div[1]/div/div[2]/div/div/div/main/div/div/div[2]/div[1]/div[2]/div/div/div/div/div[2]/div[2]/div[3]/div/div[1]/div[2]/div[${count}]/div/div
                #Log To Console    ทะเบียน ${license_plate}
                

                ${found}    Run Keyword And Return Status    Element Should Be Visible    //*[@id="root"]/main//div/div/div/div[1]/div/div[2]/div/div/div/main/div/div/div[2]/div[1]/div[2]/div/div/div/div/div[2]/div[2]/div[3]/div/div[1]/div[2]/div[${count}]//*[text()[contains(.,'${excel_license}')]]
                
                #เจอรถที่ทะเบียนตรงกับใน Excel
                IF    ${found} == $True
                    #Log To Console    เจอแล้ว
                    
                    # loop column เพื่อหาเวลาออก และ เข้า
                    FOR    ${j}    IN RANGE    100
                        ${b1}=  Read Excel Cell    ${row}    ${column_stop}
                        
                        #ถ้าเลื่อน Column จนไปเจอค่าว่างจะหยุดและเลื่อนไป Row ถัดไป
                        Run Keyword If    '${b1}' == 'None'    Exit For Loop  
                        Run Keyword If    '${b1}' == ''    Exit For Loop 
                        ${str_b1}    Convert To String    ${b1}
                        ${hour}    Get Substring    ${str_b1}    0    2
                        ${min}    Get Substring    ${str_b1}    3    5
                        
                        ${int_hour}    Convert To Integer    ${hour}
                        ${int_min}    Convert To Integer    ${min}
                        
                        #Log To Console    ชั่วโมงรถออก : ${int_hour} นาฬิกา ${int_min} นาที
                        
                        ${stop_time_plus}    Set Variable    1
                        ${column_stop2}    Evaluate    ${column_stop} + ${stop_time_plus}

                        ${b2}=  Read Excel Cell    ${row}    ${column_stop2}

                        Run Keyword If    '${b2}' == 'None'    Exit For Loop  
                        
                        ${str_b2}    Convert To String    ${b2}
                        ${hour2}    Get Substring    ${str_b2}    0    2
                        ${min2}    Get Substring    ${str_b2}    3    5
                        
                        ${int_hour2}    Convert To Integer    ${hour2}
                        ${int_min2}    Convert To Integer    ${min2}
                    
                        #Log To Console    ชั่วโมงรถเข้า : ${int_hour2} นาฬิกา ${int_min2} นาที
                    
                    


                        ${diff_hour}    Evaluate    ${int_hour2} - ${int_hour}
                        ${diff_min}    Evaluate    ${int_min2} - ${int_min}

                        IF    ${diff_hour} < 0
                            ${twentyfour}    Set Variable    24
                            ${diff_hour}    Evaluate    ${diff_hour} + ${twentyfour}
                            
                        END    

                        IF    ${diff_min} < 0
                            ${minus}    Set Variable    1
                            ${diff_hour}    Evaluate    ${diff_hour} - ${minus}
                            ${diff_min}    Evaluate    60 + ${diff_min}
                        END

                        #Log To Console    เวลาที่ต้องใส่ ${diff_hour} ชม. ${diff_min} น.
                        #Log To Console    " "


                        #กดช่องที่พาหนะนั้น
                        Sleep    0.5
                        ${fail_click}    Run Keyword And Return Status    Click Element    //*[@id="root"]/main//div[2]/div/div/div/main/div/div/div[2]/div[1]/div[2]/div/div/div/div/div[2]/div[2]/div[3]/div/div[4]/div[${count}]/div[3]/div
                         
                        IF    ${fail_click}==$False
                            ${plus_column}    Set Variable    2
                            ${column_stop} =    Evaluate    ${column_stop} + ${plus_column}
                            Log To Console    ทะเบียน ${license_plate} ออกจากอู่เวลา : ${int_hour} นาฬิกา ${int_min} นาที เพิ่มไม่สำเร็จ --- ใช้เวลาทั้งหมด ${diff_hour} ชม. ${diff_min} น.
                             
                            ${fail_all}    Evaluate    ${fail_all} + ${sum}
                            Continue For Loop
                        END

                        add_new_trip    start_hour=${int_hour}    start_min=${int_min}    select_hour=${diff_hour}    select_min=${diff_min}    
                    

                        ${plus_column}    Set Variable    2
                        ${column_stop} =    Evaluate    ${column_stop} + ${plus_column}
                    END

                    #Click Element    //*[@id="root"]/main/div[3]/div/div/div/div/div[1]/div/div[2]/div/div/div/main/div/div/div[2]/div[1]/div[2]/div/div/div/div/div[2]/div[2]/div[3]/div/div[4]/div[${count}]/div[3]/div
                    
                    #Click Element    //html/body/div[2]/div[3]/div[2]/div[3]/button[2]
                    
                    Exit For Loop
                #ELSE
                    #Log To Console    ยังไม่เจอ
                END
                
                ${count}    Evaluate    ${count} + ${sum}
            END
    

        END

        ${plus}    Set Variable    1
        ${row} =   Evaluate    ${row} + ${plus}
        ${column_stop}    Set Variable    5
    END
    Close Current Excel Document
    Log To Console    เพิ่มไม่สำเร็จทั้งหมด ${fail_all} รายการ
    save_schedule
    Sleep    10000




สร้าง Schedule Preset
    Open Schedule Preset Menu
    create_schedule_preset    ตารางอัตโนมัติ
    Sleep    10

ลบ Schedule Preset
    Select Schedule    ตารางอัตโนมัติ
    #Sleep    1000
    delete_schedule_preset

Deploy ตารางการเดินทาง
    ${day}    get_day
    Open Schedule Preset Menu
    #Deploy Schedule 59 ตัวแรก
    #FOR    ${i}    IN RANGE    102    108
    FOR    ${i}    IN RANGE    2    109
        Log To Console    ${i}
        
        Click Element    //*[@id="root"]//main/div[2]/div[1]/div[2]/div/div/div/div[${i}]
        deploy-schedule_no_name    ${day}
        #Close Browser
    END

    Sleep    100
    #Click Element    //*[@id="root"]//main/div[2]/div[1]/div[2]/div/div/div/div[1]
    #deploy-schedule_no_name
    #Sleep    100

Approve ตารางการเดินทาง
    Open Schedule Approval
    ${day}    get_day
    #Click Element    //*[@id="root"]/main//div[2]//div[2]//div[2]//div[2]/div[2]//div[2]/div[1]/div[2]/div/div/span
    

    FOR    ${i}    IN RANGE    2    5    
        Log To Console    ${i}
        
        ${check}    Run Keyword And Return Status    Wait Until Element Is Visible    //*[@id="root"]/main//div[2]//div[2]//div[2]//div[.//div[text()="${day}"][@aria-pressed="true"]]/div[2]/div/div[./div/div/span[text()="รอตรวจทาน"]] 
        IF    ${check} == $False
            Exit For Loop
        END

        Click Element    //*[@id="root"]/main//div[2]//div[2]//div[2]//div[.//div[text()="${day}"][@aria-pressed="true"]]/div[2]/div/div[./div/div/span[text()="รอตรวจทาน"]]
        Wait Until Element Is Visible    //*[@id="root"]/main/div[3]//main//div[2]/div/div/div/div/div[2]/div[2]/div[3]/div/div[1]/div[2]/div[2]
        Sleep    2
        Click Element    //*[@id="root"]/main//div[1]/div[2]/div[2]/div/div/div/div[2]/div/div[1]/div/div/button
        Wait Until Element Is Visible    //*[@id="headlessui-portal-root"]//div[3]//div/div/div[1]
        Click Element    //*[@id="headlessui-portal-root"]//div[3]//div/div/div[1]
        Sleep    2
        Click Element    //*[@id="root"]/main//div[1]/div[3]/div/button
        Sleep    2
    END
   
    Sleep    1000

Get Day
    ${test}    get_day
    Log To Console    ${test}



    
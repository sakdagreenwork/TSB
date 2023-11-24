*** Settings ***
Library    SeleniumLibrary    screenshot_root_directory=/Users/sakda.l/Desktop/TSB Automate/Login/Failed Screenshot 
Test Teardown    Close Browser   
Resource    keyword.robot
#robot --outputdir "\Users\sakda.l\Desktop\TSB Automate\Login\Report" Vehicle.robot
*** Variables ***
${email_field}     //input[@name="email"]
${password_field}    //input[@name='password']
${login_button}    //button[@class="btn btn-sm btn-dark block w-full text-center"]

${status_label}    //div[@class="mb-3"][1]/div/div/div/div/span/div[1]/label
${veName_label}    //div[@class="mb-3"][1]//span/div[2]/div[1]/label
${motor_label}    //div[@class="mb-3"][1]//span/div[2]/div[2]/label
${model_label}    //div[@class="mb-3"][1]//span/div[3]/div[1]/label
${brand_label}    //div[@class="mb-3"][1]//span/div[3]/div[2]/label
${gps_label}    //div[@class="mb-3"][1]//span/div[4]/div[1]/label
${chassis_label}    //div[@class="mb-3"][1]//span/div[4]/div[2]/label
${license_label}    //div[@class="mb-3"][2]//span/div/label
${depot_label}    //div[@class="mb-3"][4]//span/div[1]/label
${subline_label}    //div[@class="mb-3"][4]//span/div[2]/div[1]/label
${company_label}    //div[@class="mb-3"][4]//span/div[2]/div[2]/label

${alert_status}    //div[@class="mb-3"][1]/div/div/div/div/span/div[1]/div[2]
${alert_veName}    //div[@class="mb-3"][1]//span/div[2]/div[1]/div/div[2]
${alert_motor}    //div[@class="mb-3"][1]//span/div[2]/div[2]/div/div[2]
${alert_model}    //div[@class="mb-3"][1]//span/div[3]/div[1]/div[2]
${alert_brand}    //div[@class="mb-3"][1]//span/div[3]/div[2]/div[2] 
${alert_gps}    //div[@class="mb-3"][1]//span/div[4]/div[1]/div/div[2]
${alert_chassis}    //div[@class="mb-3"][1]//span/div[4]/div[2]/div/div[2] 
${alert_license}    //div[@class="mb-3"][2]//span/div/div/div[2] 
${alert_depot}    //div[@class="mb-3"][4]//span/div[1]/div[2]
${alert_subline}    //div[@class="mb-3"][4]//span/div[2]/div[1]/div[2] 

${field_veName}    //div[@class="mb-3"][1]//span/div[2]/div[1]/div/div[1]/input
${field_status}    //div[@class="mb-3"][1]/div/div/div/div/span/div[1]/div[1]/div[2]
${field_motor}    //div[@class="mb-3"][1]//span/div[2]/div[2]/div/div[1]/input
${field_model}    //div[@class="mb-3"][1]//span/div[3]/div[1]/div[1]/div[2]
${field_brand}    //div[@class="mb-3"][1]//span/div[3]/div[2]/div[1]/div[2]
${field_gps}    //div[@class="mb-3"][1]//span/div[4]/div[1]/div/div[1]/input
${field_chassis}    //div[@class="mb-3"][1]//span/div[4]/div[2]/div/div[1]/input
${field_license}    //div[@class="mb-3"][2]//span/div/div/div[1]/input
${field_depot}    //div[@class="mb-3"][4]//span/div[1]/div/div[2]
${field_subline}    //div[@class="mb-3"][4]//span/div[2]/div[1]/div[1]/div[2]

${confirm_add}    //div[@class="flex justify-center w-full gap-2"]/div[1]

${button_+add}    //Button[@type="submit"]
*** Keywords ***

Open Vehicle Menu
    Log In Valid
    Wait Until Element Is Visible    //*[@id="root"]/main/header/div/div/div[1]/div[2]//*[name()='svg']    10
    Click Element    //*[@id="root"]/main/header/div/div/div[1]/div[2]//*[name()='svg']
    Wait Until Element Is Visible    //*[@id="root"]/main/div[2]/div[3]/div[1]/div[2]/div/div/div/ul/li[6]/div[1]/div[1]/div    10
    Click Element    //*[@id="root"]/main/div[2]/div[3]/div[1]/div[2]/div/div/div/ul/li[6]/div[1]/div[1]/div
    Wait Until Element Is Visible    //*[@id="root"]/main/div[2]/div[3]/div[1]/div[2]/div/div/div/ul/li[6]/div[2]/div/ul/li[4]/a/span/span[2]    10
    Click Element    //*[@id="root"]/main/div[2]/div[3]/div[1]/div[2]/div/div/div/ul/li[6]/div[2]/div/ul/li[4]/a/span/span[2]
    Wait Until Element Is Visible    //*[@id="root"]/main/header/div/div/div[1]/div[3]/h4    10

Open Add New Vehicle Page
    Open Vehicle Menu
    Wait Until Element Is Visible    //*[@id="root"]/main/div[3]/div/div/div/div[3]/div/div[1]/div/main/div[1]/div[2]/div/button    10
    Click Element    //*[@id="root"]/main/div[3]/div/div/div/div[3]/div/div[1]/div/main/div[1]/div[2]/div/button
    Wait Until Element Is Visible    css:div:nth-child(1) > div > div > div > div > span > div > label    10

add_new_vehicle
    [Arguments]    ${data_vename}
    Open Add New Vehicle Page
    Click Element    //div[@class="mb-3"][1]/div/div/div/div/span/div[1]/div[1]/div/div[2]
    Wait Until Element Is Visible    ${field_status}//*[text()[contains(.,'Active')]]    10
    Click Element     ${field_status}//*[text()[contains(.,'Active')]]
    Input Text    ${field_veName}    ${data_vename}
    Input Text    ${field_motor}    999666
    Click Element    //div[@class="mb-3"][1]//span/div[3]/div[1]/div[1]/div/div[2]
    Wait Until Element Is Visible    ${field_model}    10
    Click Element    ${field_model}//*[2]
    Click Element    //div[@class="mb-3"][1]//span/div[3]/div[2]/div[1]/div/div[2]
    Click Element    ${field_brand}//*[text()[contains(.,'MINE')]]
    Input Text    ${field_gps}    999666
    Input Text    //div[@class="mb-3"][1]//span/div[4]/div[2]/div/div[1]/input    999666
    Input Text    ${field_license}    999666
    Click Element    //div[@class="mb-3"][4]//span/div[1]/div/div/div[2]
    Wait Until Element Is Visible    ${field_depot}//*[text()[contains(.,'อู่แสมดำ')]]    10
    Click Element    ${field_depot}//*[text()[contains(.,'อู่แสมดำ')]]
    Click Element    //div[@class="mb-3"][4]//span/div[2]/div[1]/div/div/div[2]
    Click Element    ${field_subline}//*
    Sleep    2
    Click Element    ${button_+add}
    Click Element    ${confirm_add}
    Input Text    //*[@id="root"]/main/div[3]/div/div/div/div[3]/div/div[1]/div/main/div[1]/div[1]/div/input    999666
    Wait Until Element Is Visible    //span[text()[contains(.,'999666')]]    10



select_vehicle
    [Arguments]    ${correct_vename}
    Open Vehicle Menu
    Wait Until Element Is Visible    //*[@id="root"]/main/div[3]/div/div/div/div[3]/div/div[1]/div/main/div[1]/div[1]/div/input    10
    Input Text    //*[@id="root"]/main/div[3]/div/div/div/div[3]/div/div[1]/div/main/div[1]/div[1]/div/input    ${correct_vename}
    Wait Until Element Is Visible    //span[text()[contains(.,"${correct_vename}")]]    10
    Click Element    //*[@id="root"]/main/div[3]/div/div/div/div[3]/div/div[1]/div/main/div[2]/div[1]/div[2]/div/div/div/div[2]/div/div[1]/div
    Element Text Should Be    //form/div[1]/header/div[1]/h4    พาหนะ
    Wait Until Element Is Visible    ${field_veName}
    ${get_vename}    Get Element Attribute    ${field_veName}    value
    Should Be Equal    ${get_vename}    ${correct_vename}

delete_vehicle
    [Arguments]    ${data_vename}
    Open Vehicle Menu
    Wait Until Element Is Visible    //*[@id="root"]/main/div[3]/div/div/div/div[3]/div/div[1]/div/main/div[1]/div[1]/div/input    10
    Input Text    //*[@id="root"]/main/div[3]/div/div/div/div[3]/div/div[1]/div/main/div[1]/div[1]/div/input    ${data_vename}
    Wait Until Element Is Visible    //span[text()[contains(.,${data_vename})]]    10
    Click Element    //*[@id="root"]/main/div[3]/div/div/div/div[3]/div/div[1]/div/main/div[2]/div[1]/div[2]/div/div/div/div[2]/div/div[1]/div
    Click Element    //header/div[3]/div/button
    Click Element    //div[3]/div/div[@class="flex justify-center w-full gap-2"]/div[1]
    Input Text    //*[@id="root"]/main/div[3]/div/div/div/div[3]/div/div[1]/div/main/div[1]/div[1]/div/input    ${data_vename}
    Sleep    5s
    Element Should Not Be Visible    //span[text()[contains(.,${data_vename})]]

*** Test Cases ***

TC_VHC_001-หน้า Vehicle
    Open Vehicle Menu
    Sleep    5
    Run Keyword And Continue On Failure    Element Text Should Be    //*[@id="root"]/main/header/div/div/div[1]/div[3]/h4    พาหนะ
    Run Keyword And Continue On Failure    Element Should Contain   //*[@id="root"]/main/div[3]/div/div/div/div[2]/div/div/div/div/div[1]/div[2]/span    ทั้งหมด
    Run Keyword And Continue On Failure    Element Should Contain   //*[@id="root"]/main/div[3]/div/div/div/div[2]/div/div/div/div/div[1]/div[2]/span    รายการ
    Run Keyword And Continue On Failure    Element Should Contain    //*[@id="root"]/main/div[3]/div/div/div/div[2]/div/div/div/div/div[2]/div[2]/span    ใช้งาน
    Run Keyword And Continue On Failure    Element Should Contain    //*[@id="root"]/main/div[3]/div/div/div/div[2]/div/div/div/div/div[2]/div[2]/span    รายการ
    Run Keyword And Continue On Failure    Element Should Contain    //*[@id="root"]/main/div[3]/div/div/div/div[2]/div/div/div/div/div[3]/div[2]/span    ไม่มีการใช้งาน
    Run Keyword And Continue On Failure    Element Should Contain    //*[@id="root"]/main/div[3]/div/div/div/div[2]/div/div/div/div/div[3]/div[2]/span    รายการ
    Run Keyword And Continue On Failure    Element Should Contain    //*[@id="root"]/main/div[3]/div/div/div/div[2]/div/div/div/div/div[4]/div[2]/span    ปิดซ่อมบำรุง
    Run Keyword And Continue On Failure    Element Should Contain    //*[@id="root"]/main/div[3]/div/div/div/div[2]/div/div/div/div/div[4]/div[2]/span    รายการ
    Run Keyword And Continue On Failure    Element Text Should Be    //*[@id="root"]/main/div[3]/div/div/div/div[3]/div/div[2]/div/div/div/main/div[3]/h4    เลือกยานพาหนะเพื่อดูข้อมูล


TC_VHC_002-กดปุ่ม Add New Vehicle
    Open Vehicle Menu
    Wait Until Element Is Visible    //*[@id="root"]/main/div[3]/div/div/div/div[3]/div/div[1]/div/main/div[1]/div[2]/div/button    10
    Click Element    //*[@id="root"]/main/div[3]/div/div/div/div[3]/div/div[1]/div/main/div[1]/div[2]/div/button

TC_VHC_003-กดเลือก Vehicle
    Open Vehicle Menu
    Wait Until Element Is Visible    //*[@id="root"]/main/div[3]/div/div/div/div[3]/div/div[1]/div/main/div[2]/div[1]/div[2]/div/div/div/div[2]/div/div[1]    10
    Click Element    //*[@id="root"]/main/div[3]/div/div/div/div[3]/div/div[1]/div/main/div[2]/div[1]/div[2]/div/div/div/div[2]/div/div[1]
    
TC_VHC_004-กรณีค้นหาข้อมูลที่ไม่มี
    Open Vehicle Menu
    Wait Until Element Is Visible    //*[@id="root"]/main/div[3]/div/div/div/div[3]/div/div[1]/div/main/div[1]/div[1]/div/input    10
    Input Text    //*[@id="root"]/main/div[3]/div/div/div/div[3]/div/div[1]/div/main/div[1]/div[1]/div/input    ไม่มีข้อมูล
    Wait Until Element Is Visible    //*[@id="root"]/main/div[3]/div/div/div/div[3]/div/div[1]/div/main/div[2]/div[1]/div[2]/div/div/div/div[1]/text/tspan    10
    Element Text Should Be    //*[@id="root"]/main/div[3]/div/div/div/div[3]/div/div[1]/div/main/div[2]/div[1]/div[2]/div/div/div/div[1]/text/tspan    No matching records found.
        
TC_VHC_005-หน้า Add New Vehicle
    Open Add New Vehicle Page
    Run Keyword And Continue On Failure    Element Text Should Be    //*[@id="root"]/main/div[3]/div/div/div/div[3]/div/div[2]/div/div/div/main/div[1]/div/div[1]/header/div/h4    เพิ่มพาหนะ
    Wait Until Element Is Visible    //div[3]//div[1]/button/span[1]
    Run Keyword And Continue On Failure    Element Text Should Be    //div[3]//div[1]/button/span[1]    ข้อมูลโรงงาน
    Run Keyword And Continue On Failure    Element Text Should Be    //div[3]//div[2]/button/span[1]    ทะเบียนรถ - รับประกัน
    Run Keyword And Continue On Failure    Element Text Should Be    //div[3]//div[3]/button/span[1]    อุปกรณ์
    Run Keyword And Continue On Failure    Element Text Should Be    //div[3]//div[4]/button/span[1]    ข้อมูลการดำเนินงาน

TC_VHC_006-Drop down Factory data
    Open Add New Vehicle Page
    Run Keyword And Continue On Failure    Element Text Should Be    ${status_label}    สถานะ *
    Run Keyword And Continue On Failure    Element Text Should Be    css:div:nth-child(1) > div > div > div > div > span > div > div > div > div > div    Select...
    Run Keyword And Continue On Failure    Element Text Should Be    ${veName_label}    ชื่อพาหนะ *
    ${place_ve_name}    Run Keyword And Continue On Failure    Get Element Attribute    ${field_veName}    placeholder
    Run Keyword And Continue On Failure    Should Be Equal    ${place_ve_name}    ชื่อพาหนะ
    Run Keyword And Continue On Failure    Element Text Should Be    ${motor_label}    หมายเลขมอเตอร์*
    ${place_motor}    Run Keyword And Continue On Failure    Get Element Attribute    ${field_motor}    placeholder
    Run Keyword And Continue On Failure    Should Be Equal    ${place_motor}    หมายเลขมอเตอร์
    Run Keyword And Continue On Failure    Element Text Should Be    ${model_label}    รุ่น *
    Run Keyword And Continue On Failure    Element Text Should Be    css:span > div:nth-child(3) > div:nth-child(1) > div > div > div > div:nth-child(1)    Select...
    Run Keyword And Continue On Failure    Element Text Should Be    ${brand_label}    ยี่ห้อ *
    Run Keyword And Continue On Failure    Element Text Should Be    css:span > div:nth-child(3) > div:nth-child(2) > div > div > div > div:nth-child(1)    Select...
    Run Keyword And Continue On Failure    Element Text Should Be    ${gps_label}    GPS IMEI *
    ${place_GPS}    Run Keyword And Continue On Failure    Get Element Attribute    ${field_gps}    placeholder
    Run Keyword And Continue On Failure    Should Be Equal    ${place_GPS}    GPS IMEI
    Run Keyword And Continue On Failure    Element Text Should Be    ${chassis_label}    เลขตัวถังรถ *
    ${place_chassis}    Run Keyword And Continue On Failure    Get Element Attribute    ${field_chassis}    placeholder
    Run Keyword And Continue On Failure    Should Be Equal    ${place_chassis}    เลขตัวถังรถ

    #Click Element    css: span > div:nth-child(3) > div:nth-child(1) > div:nth-child(2)

TC_VHC_007-Drop down License plate - Guarantee
    Open Add New Vehicle Page
    Run Keyword And Continue On Failure    Element Text Should Be    ${license_label}    ทะเบียนรถ *
    ${place_License}    Run Keyword And Continue On Failure    Get Element Attribute    ${field_license}    placeholder
    Run Keyword And Continue On Failure    Should Be Equal    ${place_License}    ทะเบียนรถ

TC_VHC_008-Drop down Equipment
    Open Add New Vehicle Page
    Element Text Should Be    css:span:nth-child(2) > div > text > tspan    ไม่มีข้อมูลอุปกรณ์

TC_VHC_009-Drop down Operation data
    Open Add New Vehicle Page
    Run Keyword And Continue On Failure    Element Text Should Be    ${depot_label}    อู่รถ *
    Run Keyword And Continue On Failure    Element Text Should Be    css:div:nth-child(4) > div > div > div > div > span >div:nth-child(1) > div > div > div:nth-child(1) > div:nth-child(1)    Select...
    Run Keyword And Continue On Failure    Element Text Should Be    ${subline_label}    สายย่อย *
    Run Keyword And Continue On Failure    Element Text Should Be    css:div:nth-child(4) > div > div > div > div > span > div:nth-child(2) > div:nth-child(1) > div > div > div > div:nth-child(1)    Select...
    Run Keyword And Continue On Failure    Element Text Should Be    ${company_label}    บริษัท *

#TC_VHC_010-กรณีค้นหาข้อมูลใน Drop down สถานะ, รุ่น, ยี่ห้อ, อู่, สายย่อย ด้วยข้อมูลที่ไม่มีอยู่ในระบบ


TC_VHC_011-กรณีเพิ่มโดยไม่กรอกข้อมูล
    Open Add New Vehicle Page
    Click Element    //Button[@type="submit"]
    Run Keyword And Continue On Failure    Element Text Should Be    ${alert_status}    กรอกสถานะ
    Run Keyword And Continue On Failure    Element Text Should Be    ${alert_veName}    กรอกชื่อพาหนะ
    Run Keyword And Continue On Failure    Element Text Should Be    ${alert_motor}    กรอกหมายเลขมอเตอร์
    Run Keyword And Continue On Failure    Element Text Should Be    ${alert_model}    กรอกรุ่น
    Run Keyword And Continue On Failure    Element Text Should Be    ${alert_brand}   กรอกยี่ห้อ
    Run Keyword And Continue On Failure    Element Text Should Be    ${alert_gps}    กรอก GPS IMEI
    Run Keyword And Continue On Failure    Element Text Should Be    ${alert_chassis}    กรอก Chassis No
    Run Keyword And Continue On Failure    Element Text Should Be    ${alert_license}   กรอกทะเบียนรถ
    Run Keyword And Continue On Failure    Element Text Should Be    ${alert_depot}   กรอกอู่รถ
    Run Keyword And Continue On Failure    Element Text Should Be    ${alert_subline}    กรอกสายย่อย

TC_VHC_012-กรณีเพิ่มโดยกรอก Vehical Name 2 ตัวอักษร
    Open Add New Vehicle Page
    Input Text    ${field_veName}    QA
    Click Element    ${button_+add}
    Element Text Should Be    ${alert_veName}    ต้องมีอักขระ 3 ถึง 20 ตัว

TC_VHC_013-เพิ่มโดยกรอกข้อมูลครบถ้วนและถูกต้อง
    add_new_vehicle    999670

ลบ Vehicle
    delete_vehicle    999670


TC_VHC_0xx-กรณีเพิ่มโดยกรอก Vehical Name ซ้ำกับที่มีอยู่
    Open Add New Vehicle Page
    Input Text    ${field_veName}    35-11
    Sleep    2
    Click Element    ${button_+add}
    Element Should Be Visible    ${alert_veName}
    Element Text Should Be    ${alert_veName}    ชื่อนี้ถูกใช้ไปแล้ว

TC_VHC_0xx-กรณีเพิ่มโดยกรอก Motor Number ซ้ำกับที่มีอยู่
    Open Add New Vehicle Page
    Input Text    ${field_motor}    MCS20111214
    Sleep    2
    Click Element    ${button_+add}
    Element Should Be Visible    ${alert_motor}
    Element Text Should Be    ${alert_motor}    หมายเลขมอเตอร์นี้ถูกใช้ไปแล้ว

TC_VHC_0xx-กรณีเพิ่มโดยกรอก GPS ซ้ำกับที่มีอยู่
    Open Add New Vehicle Page
    Input Text    ${field_gps}    868998030639021
    Sleep    2
    Click Element    ${button_+add}
    Element Should Be Visible    ${alert_gps}
    Element Text Should Be    ${alert_gps}    หมายเลขจีพีเอสนี้ถูกใช้ไปแล้ว

TC_VHC_0xx-กรณีเพิ่มโดยกรอก Chassis ซ้ำกับที่มีอยู่
    Open Add New Vehicle Page
    Input Text    ${field_chassis}    MRSBCREM6MZM00008
    Sleep    2
    Click Element    ${button_+add}
    Element Should Be Visible    ${alert_chassis}
    Element Text Should Be    ${alert_chassis}    หมายเลขคัสซีนี้ถูกใช้ไปแล้ว

TC_VHC_0xx-กรณีเพิ่มโดยกรอก License ซ้ำกับที่มีอยู่
    Open Add New Vehicle Page
    Input Text    ${field_license}    16-5841
    Sleep    2
    Click Element    ${button_+add}
    Element Should Be Visible    ${alert_license}
    Element Text Should Be    ${alert_license}    ทะเบียนรถนี้ถูกใช้ไปแล้ว

TC_VHC_014-หน้าต่างยืนยันการ Add
    Open Add New Vehicle Page
    Click Element    //div[@class="mb-3"][1]/div/div/div/div/span/div[1]/div[1]/div/div[2]
    Wait Until Element Is Visible    ${field_status}//*[text()[contains(.,'Active')]]    10
    Click Element     ${field_status}//*[text()[contains(.,'Active')]]
    Input Text    ${field_veName}    999671
    Input Text    ${field_motor}    999666
    Click Element    //div[@class="mb-3"][1]//span/div[3]/div[1]/div[1]/div/div[2]
    Wait Until Element Is Visible    ${field_model}    10
    Click Element    ${field_model}//*[2]
    Click Element    //div[@class="mb-3"][1]//span/div[3]/div[2]/div[1]/div/div[2]
    Click Element    ${field_brand}//*[text()[contains(.,'MINE')]]
    Input Text    ${field_gps}    999666
    Input Text    //div[@class="mb-3"][1]//span/div[4]/div[2]/div/div[1]/input    999666
    Input Text    ${field_license}    999666
    Click Element    //div[@class="mb-3"][4]//span/div[1]/div/div/div[2]
    Wait Until Element Is Visible    ${field_depot}//*[text()[contains(.,'อู่แสมดำ')]]    10
    Click Element    ${field_depot}//*[text()[contains(.,'อู่แสมดำ')]]
    Click Element    //div[@class="mb-3"][4]//span/div[2]/div[1]/div/div/div[2]
    Click Element    ${field_subline}//*
    Click Element    ${button_+add}
    Sleep    1
    Run Keyword And Continue On Failure    Element Text Should Be    //div[@role="dialog"]/div[2]/div/div/div/h2    เพิ่มพาหนะ
    Run Keyword And Continue On Failure    Element Text Should Be    //div[@role="dialog"]/div[2]/div/div/div[2]/div    คุณแน่ใจหรือไม่ที่จะเพิ่มยานพาหนะใหม่ ?
    Run Keyword And Continue On Failure    Element Text Should Be    //div[@role="dialog"]/div[2]/div/div/div[3]/div/div/div[1]    ยืนยัน
    Run Keyword And Continue On Failure    Element Text Should Be    //div[@role="dialog"]/div[2]/div/div/div[3]/div/div/div[2]    ยกเลิก

TC_VHC_016-หน้ารายละเอียด Vehicle (ข้อมูล)
    select_vehicle    35-11
    
TC_VHC_017-หน้ารายละเอียด Vehicle (คำ)
    Run Keyword And Continue On Failure    select_vehicle    35-11
    Wait Until Element Is Visible    //div[3]//div[1]/button/span[1]    10
    Run Keyword And Continue On Failure    Element Text Should Be    //div[3]//div[1]/button/span[1]    ข้อมูลโรงงาน
    Run Keyword And Continue On Failure    Element Text Should Be    //div[3]//div[2]/button/span[1]    ทะเบียนรถ - รับประกัน
    Run Keyword And Continue On Failure    Element Text Should Be    //div[3]//div[3]/button/span[1]    อุปกรณ์
    Run Keyword And Continue On Failure    Element Text Should Be    //div[3]//div[4]/button/span[1]    ข้อมูลการดำเนินงาน
    Run Keyword And Continue On Failure    Element Text Should Be    ${status_label}    สถานะ *
    Run Keyword And Continue On Failure    Element Text Should Be    ${veName_label}    ชื่อพาหนะ *
    Run Keyword And Continue On Failure    Element Text Should Be    ${motor_label}    หมายเลขมอเตอร์ *
    Run Keyword And Continue On Failure    Element Text Should Be    ${model_label}    รุ่น *
    Run Keyword And Continue On Failure    Element Text Should Be    ${brand_label}    ยี่ห้อ *
    Run Keyword And Continue On Failure    Element Text Should Be    ${gps_label}    GPS IMEI *
    Run Keyword And Continue On Failure    Element Text Should Be    ${chassis_label}    เลขตัวถังรถ *
    Run Keyword And Continue On Failure    Element Text Should Be    ${license_label}    ทะเบียนรถ *
    Run Keyword And Continue On Failure    Element Text Should Be    ${depot_label}    อู่รถ *
    Run Keyword And Continue On Failure    Element Text Should Be    ${subline_label}    สายย่อย *
    Run Keyword And Continue On Failure    Element Text Should Be    ${company_label}    บริษัท *
    ${place_ve_name}    Run Keyword And Continue On Failure    Get Element Attribute    ${field_veName}    placeholder
    Run Keyword And Continue On Failure    Should Be Equal    ${place_ve_name}    ชื่อพาหนะ
    ${place_motor}     Run Keyword And Continue On Failure    Get Element Attribute    ${field_motor}    placeholder
    Run Keyword And Continue On Failure    Should Be Equal    ${place_motor}    หมายเลขมอเตอร์
    ${place_GPS}     Run Keyword And Continue On Failure    Get Element Attribute    ${field_gps}    placeholder
    Run Keyword And Continue On Failure    Should Be Equal    ${place_GPS}    GPS IMEI
    ${place_chassis}     Run Keyword And Continue On Failure    Get Element Attribute    ${field_chassis}    placeholder
    Run Keyword And Continue On Failure    Should Be Equal    ${place_chassis}    เลขตัวถังรถ
    ${place_License}     Run Keyword And Continue On Failure    Get Element Attribute    ${field_license}    placeholder
    Run Keyword And Continue On Failure    Should Be Equal    ${place_License}    ทะเบียนรถ
TC
    select_vehicle    35-13

#TC_VHC_015-กรณีกดปุ่ม Confirm การ Add

#TC_VHC_017-
#TC_VHC_018-
#TC_VHC_019-
#TC_VHC_020-
#TC_VHC_021-
#TC_VHC_022-
#TC_VHC_023-
#TC_VHC_024-
#TC_VHC_025-
#TC_VHC_026-
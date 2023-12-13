*** Settings ***
Library    SeleniumLibrary    screenshot_root_directory=/Users/sakda.l/Desktop/TSB Automate/Login/Failed Screenshot 
Library    Collections
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
${factory_edit_button}    //div[@class="mb-3"][1]//div[@class="custom-tippy"]/button
${license_edit_button}    //div[@class="mb-3"][2]//div[@class="custom-tippy"]/button
${operation_edit_button}    //div[@class="mb-3"][4]//div[@class="custom-tippy"]/button
${factory_cancel_button}    //div[@class="mb-3"][1]//div[@class="custom-tippy"][2]/button
${factory_save_button}    //div[@class="mb-3"][1]//div[@class="custom-tippy"][1]/button
${license_cancel_button}    //div[@class="mb-3"][2]//div[@class="custom-tippy"][2]/button
${license_save_button}    //div[@class="mb-3"][2]//div[@class="custom-tippy"][1]/button
${operation_cancel_button}    //div[@class="mb-3"][4]//div[@class="custom-tippy"][2]/button
${operation_save_button}    //div[@class="mb-3"][4]//div[@class="custom-tippy"][1]/button
${confirm_edit_button}    //header/div[2]/div/button
${delete_button}    //header/div[3]/div/button
${confirm_delete_button}    //div[3]/div/div[@class="flex justify-center w-full gap-2"]/div[1]


${search_box}    //*[@id="root"]/main//main/div/div/div/input

${confirm_edit_title}    //div[@role="dialog"]/div[2]/div/div/div/h2
${confirm_edit_detail}    //div[@role="dialog"]/div[2]/div/div/div[2]/div
${confirm_confirm_edit_button}    //div[@class="flex justify-center w-full gap-2"]/div[1]
${confirm_edit_cancel_button}    //div[@role="dialog"]/div[2]/div/div/div[3]/div/div/div[2]

${top_right_alert}    //main[@class='App${SPACE}${SPACE}relative']/div[1]/div/div/div/div[2]


*** Keywords ***

Open Vehicle Menu
    Log In Valid
    Wait Until Element Is Visible    //*[@id="root"]/main/header/div/div/div[1]/div[2]//*[name()='svg']    20
    Click Element    //*[@id="root"]/main/header/div/div/div[1]/div[2]//*[name()='svg']
    Wait Until Element Is Visible    //*[@id="root"]/main/div[2]/div[3]/div[1]/div[2]/div/div/div/ul/li[6]/div[1]/div[1]/div    20
    Click Element    //*[@id="root"]/main/div[2]/div[3]/div[1]/div[2]/div/div/div/ul/li[6]/div[1]/div[1]/div
    Wait Until Element Is Visible    //*[@id="root"]/main/div[2]/div[3]/div[1]/div[2]/div/div/div/ul/li[6]/div[2]/div/ul/li[4]/a/span/span[2]    20
    Click Element    //*[@id="root"]/main/div[2]/div[3]/div[1]/div[2]/div/div/div/ul/li[6]/div[2]/div/ul/li[4]/a/span/span[2]
    Wait Until Element Is Visible    //*[@id="root"]/main/header/div/div/div[1]/div[3]/h4    20

Open Add New Vehicle Page
    Open Vehicle Menu
    Wait Until Element Is Visible    //*[@id="root"]/main/div[3]/div/div/div/div[3]/div/div[1]/div/main/div[1]/div[2]/div/button    20
    Click Element    //*[@id="root"]/main/div[3]/div/div/div/div[3]/div/div[1]/div/main/div[1]/div[2]/div/button
    Wait Until Element Is Visible    css:div:nth-child(1) > div > div > div > div > span > div > label    20

add_new_vehicle
    [Arguments]    ${data_status}=Active    ${data_vename}=999680    ${data_motor}=999680    ${data_brand}=MINE   
    ...            ${data_gps}=999680       ${data_chassis}=999680   ${data_license}=999680  ${data_depot}=อู่แสมดำ    
    #Argument ขาด Model อยู่
    Open Add New Vehicle Page
    Click Element    //div[@class="mb-3"][1]/div/div/div/div/span/div[1]/div[1]/div/div[2]
    Wait Until Element Is Visible    ${field_status}//*[text()[contains(.,'${data_status}')]]    20
    Click Element     ${field_status}//*[text()[contains(.,'${data_status}')]]
    Input Text    ${field_veName}    ${data_vename}
    Input Text    ${field_motor}    ${data_motor}
    Click Element    //div[@class="mb-3"][1]//span/div[3]/div[1]/div[1]/div/div[2]
    Wait Until Element Is Visible    ${field_model}    10
    Click Element    ${field_model}//*[text()[contains(.,'Benz')]]
    Click Element    //div[@class="mb-3"][1]//span/div[3]/div[2]/div[1]/div/div[2]
    Click Element    ${field_brand}//*[text()[contains(.,'${data_brand}')]]
    Input Text    ${field_gps}    ${data_gps}
    Input Text    ${field_chassis}    ${data_chassis}
    Input Text    ${field_license}    ${data_license}
    Click Element    //div[@class="mb-3"][4]//span/div[1]/div/div/div[2]
    Wait Until Element Is Visible    ${field_depot}//*[text()[contains(.,'${data_depot}')]]    10
    Click Element    ${field_depot}//*[text()[contains(.,'${data_depot}')]]
    Click Element    //div[@class="mb-3"][4]//span/div[2]/div[1]/div/div/div[2]
    Click Element    ${field_subline}//*
    Sleep    5
    Click Element    ${button_+add}



select_vehicle
    [Arguments]    ${correct_license}=4646544
    Open Vehicle Menu
    Wait Until Element Is Visible    ${search_box}    20
    Input Text    ${search_box}    ${correct_license}
    Wait Until Element Is Visible    //span[text()[contains(.,"${correct_license}")]]    25
    Sleep    2
    #คำสั่งกดที่ผลลัพธ์ตัวแรกที่ค้นหาาเจอ
    Wait Until Element Is Visible    //*[@id="root"]/main/div[3]/div/div/div/div[3]/div/div[1]/div/main/div[2]/div[1]/div[2]/div/div/div/div[2]/div/div[1]/div
    Click Element    //*[@id="root"]/main/div[3]/div/div/div/div[3]/div/div[1]/div/main/div[2]/div[1]/div[2]/div/div/div/div[2]/div/div[1]/div
    Element Text Should Be    //form/div[1]/header/div[1]/h4    พาหนะ
    Wait Until Element Is Visible    ${field_veName}
    ${get_license}    Get Element Attribute    ${field_license}    value
    Should Be Equal    ${get_license}    ${correct_license}

edit_vehicle_name
    [Arguments]    ${old_license}=4646544    ${new_veName}=6465642
    select_vehicle    ${old_license}
    Click Element    ${factory_edit_button}
    Input Text    ${field_veName}    ${new_veName}
    Click Element    ${factory_save_button}
    Click Element    ${factory_save_button}


delete_vehicle
    [Arguments]    ${data_license}
    Open Vehicle Menu
    Wait Until Element Is Visible    ${search_box}    20
    Input Text    ${search_box}    ${data_license}
    Wait Until Element Is Visible    //span[text()[contains(.,'${data_license}')]]    15
    Click Element    //*[@id="root"]/main/div[3]/div/div/div/div[3]/div/div[1]/div/main/div[2]/div[1]/div[2]/div/div/div/div[2]/div/div[1]/div
    Click Element    ${delete_button}
    Click Element    ${confirm_delete_button}
    Input Text    ${search_box}    ${data_license}
    #ถ้าไม่ตั้งดีเลย์ไว้อย่างต่ำที่ 5 วิ ระบบจะแสดงแจ้งเตือนที่ข้อความไม่ทันกรณีกรอกข้อมูลผิดหรือไม่ถูกต้อง
    Sleep    5s
    Element Should Not Be Visible    //span[2][text()[contains(.,'${data_license}')]]

*** Test Cases ***

TC_VHC_001-หน้า Vehicle
    Open Vehicle Menu
    Wait Until Element Is Visible    //*[@id="root"]/main/header/div/div/div[1]/div[3]/h4
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
    Wait Until Element Is Visible    //*[@id="root"]/main/div[3]/div/div/div/div[3]/div/div[1]/div/main/div[1]/div[2]/div/button    20
    Click Element    //*[@id="root"]/main/div[3]/div/div/div/div[3]/div/div[1]/div/main/div[1]/div[2]/div/button

TC_VHC_003-กดเลือก Vehicle
    Open Vehicle Menu
    Wait Until Element Is Visible    //*[@id="root"]/main/div[3]/div/div/div/div[3]/div/div[1]/div/main/div[2]/div[1]/div[2]/div/div/div/div[2]/div/div[1]    20
    Click Element    //*[@id="root"]/main/div[3]/div/div/div/div[3]/div/div[1]/div/main/div[2]/div[1]/div[2]/div/div/div/div[2]/div/div[1]
    
TC_VHC_004-กรณีค้นหาข้อมูลที่ไม่มี
    Open Vehicle Menu
    Wait Until Element Is Visible    //*[@id="root"]/main/div[3]/div/div/div/div[3]/div/div[1]/div/main/div[1]/div[1]/div/input    20
    Input Text    //*[@id="root"]/main/div[3]/div/div/div/div[3]/div/div[1]/div/main/div[1]/div[1]/div/input    ไม่มีข้อมูล
    Wait Until Element Is Visible    //*[@id="root"]/main/div[3]/div/div/div/div[3]/div/div[1]/div/main/div[2]/div[1]/div[2]/div/div/div/div[1]/text/tspan    10
    Element Text Should Be    //*[@id="root"]/main/div[3]/div/div/div/div[3]/div/div[1]/div/main/div[2]/div[1]/div[2]/div/div/div/div[1]/text/tspan    ไม่พบข้อมูล
        
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
    add_new_vehicle    data_vename=QA
    Element Text Should Be    ${alert_veName}    ต้องมีอักขระ 3 ถึง 20 ตัว


TC_VHC_013-กรณีเพิ่มโดยกรอก Vehical Name ซ้ำกับที่มีอยู่
    add_new_vehicle    data_vename=35-11
    Element Should Be Visible    ${alert_veName}
    Element Text Should Be    ${alert_veName}    ชื่อพาหนะนี้ถูกใช้งานแล้ว

TC_VHC_014-กรณีเพิ่มโดยกรอก Motor Number ซ้ำกับที่มีอยู่
    add_new_vehicle    data_motor=MCS20111214
    Element Should Be Visible    ${alert_motor}
    Element Text Should Be    ${alert_motor}    หมายเลขมอเตอร์นี้ถูกใช้งานแล้ว

TC_VHC_015-กรณีเพิ่มโดยกรอก GPS ซ้ำกับที่มีอยู่
    add_new_vehicle    data_gps=868998030639021
    Element Should Be Visible    ${alert_gps}
    Element Text Should Be    ${alert_gps}     หมายเลข GPS นี้ถูกใช้งานแล้ว

TC_VHC_016-กรณีเพิ่มโดยกรอก Chassis ซ้ำกับที่มีอยู่
    add_new_vehicle    data_chassis=MRSBCREM6MZM00008
    Element Should Be Visible    ${alert_chassis}
    Element Text Should Be    ${alert_chassis}    หมายเลขตัวถังนี้ถูกใช้งานแล้ว
TC_VHC_017-กรณีเพิ่มโดยกรอก License ซ้ำกับที่มีอยู่
    add_new_vehicle    data_license=16-5841
    
    Element Should Be Visible    ${alert_license}
    Element Text Should Be    ${alert_license}    หมายเลขทะเบียนนี้ถูกใช้งานแล้ว

TC_VHC_18-ตรวจสอบจำนวนตัวอักษรสูงสุดกรณีเพิ่ม Vehical Name, Motot No, GPS IMEI, Chassis No, License plate
    Open Add New Vehicle Page
    ${max_vename}    Get Element Attribute    ${field_veName}    maxlength
    Run Keyword And Continue On Failure    Should Be Equal    ${max_vename}    50
    ${max_motor}    Get Element Attribute    ${field_motor}    maxlength
    Run Keyword And Continue On Failure    Should Be Equal    ${max_motor}    30
    ${max_gps}    Get Element Attribute    ${field_gps}    maxlength
    Run Keyword And Continue On Failure    Should Be Equal    ${max_gps}    15    
    ${max_chassis}    Get Element Attribute    ${field_chassis}    maxlength
    Run Keyword And Continue On Failure    Should Be Equal    ${max_chassis}    20    
    ${max_license}    Get Element Attribute    ${field_license}    maxlength
    Run Keyword And Continue On Failure    Should Be Equal    ${max_license}    20
TC_VHC_019-หน้าต่างยืนยันการ Add
    add_new_vehicle    data_vename=999681
    Sleep    1
    Run Keyword And Continue On Failure    Element Text Should Be    //div[@role="dialog"]/div[2]/div/div/div/h2    เพิ่มพาหนะ
    Run Keyword And Continue On Failure    Element Text Should Be    //div[@role="dialog"]/div[2]/div/div/div[2]/div    คุณยืนยันที่จะเพิ่มพาหนะใช่หรือไม่?
    Run Keyword And Continue On Failure    Element Text Should Be    //div[@role="dialog"]/div[2]/div/div/div[3]/div/div/div[1]    ยืนยัน
    Run Keyword And Continue On Failure    Element Text Should Be    //div[@role="dialog"]/div[2]/div/div/div[3]/div/div/div[2]    ยกเลิก

TC_VHC_020-กรณีเพิ่มโดยกรอกข้อมูลครบถ้วนและถูกต้อง
    #ใส่ข้อมูลทั้งหมดทีต้องการเพิ่มถ้าไม่ใส่จะ Dafault ให้ใน Function add_new_vehicle
    
    ${data_status}    Set Variable    Active
    ${data_vename}    Set Variable    999680
    ${data_motor}    Set Variable    999680
    ${data_brand}    Set Variable    MINE
    ${data_gps}    Set Variable    999680
    ${data_chassis}    Set Variable    999680
    ${data_license}    Set Variable    999680
    ${data_depot}    Set Variable    อู่แสมดำ

    add_new_vehicle    data_license=${data_license}
    Sleep    1
    Click Element    ${confirm_add}
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    ${top_right_alert}
    Run Keyword And Continue On Failure    Element Text Should Be    ${top_right_alert}    เพิ่มพาหนะสำเร็จ

    #Step นี้จะเช็คว่าข้อมูลที่เพิ่มปรากฎในรายการไหม เช็คด้วย Vehicle Name ที่เพิ่ม
    
    Input Text    ${search_box}    ${data_license}
    Wait Until Element Is Visible    //span[text()[contains(.,${data_license})]]    20
    Sleep    2
    #คำสั่งกดที่ผลลัพธ์ตัวแรกที่ค้นหาาเจอ
    Wait Until Element Is Visible    //*[@id="root"]/main/div[3]/div/div/div/div[3]/div/div[1]/div/main/div[2]/div[1]/div[2]/div/div/div/div[2]/div/div[1]/div
    Click Element    //*[@id="root"]/main/div[3]/div/div/div/div[3]/div/div[1]/div/main/div[2]/div[1]/div[2]/div/div/div/div[2]/div/div[1]/div
    Wait Until Element Is Visible    ${field_veName}
    ${get_license}    Get Element Attribute    ${field_license}    value
    Should Be Equal    ${get_license}    ${data_license}
    
    [Teardown]    delete_vehicle    ${data_license}
TC_VHC_021-หน้ารายละเอียด Vehicle
    Run Keyword And Continue On Failure    select_vehicle    4646544
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

TC_VHC_022-กรณีกดปุ่ม Edit
    select_vehicle
    Click Element    ${factory_edit_button}
    Run Keyword And Continue On Failure    Element Should Be Visible    ${factory_save_button}
    Run Keyword And Continue On Failure    Element Should Be Visible    ${factory_cancel_button}
    Click Element    ${license_edit_button}
    Run Keyword And Continue On Failure    Element Should Be Visible    ${license_save_button}
    Run Keyword And Continue On Failure    Element Should Be Visible    ${license_cancel_button}
    Click Element    ${operation_edit_button}
    Run Keyword And Continue On Failure    Element Should Be Visible    ${operation_save_button}
    Run Keyword And Continue On Failure    Element Should Be Visible    ${operation_cancel_button}
    
TC_VHC_023-กรณี Edit โดยข้อมูลว่าง
    select_vehicle
    Click Element    ${factory_edit_button}
    Clear Element Text    ${field_veName}
    Clear Element Text    ${field_motor}
    Clear Element Text    ${field_gps}
    Clear Element Text    ${field_chassis}
    Click Element    ${license_edit_button}
    Clear Element Text    ${field_license}
    Click Element    ${factory_save_button}
    Click Element    ${license_save_button}
    
    Run Keyword And Continue On Failure    Element Text Should Be    ${alert_veName}    กรอกชื่อพาหนะ
    Run Keyword And Continue On Failure    Element Text Should Be    ${alert_motor}    กรอกหมายเลขมอเตอร์
    Run Keyword And Continue On Failure    Element Text Should Be    ${alert_gps}    กรอก GPS IMEI
    Run Keyword And Continue On Failure    Element Text Should Be    ${alert_chassis}    กรอก Chassis No
    Run Keyword And Continue On Failure    Element Text Should Be    ${alert_license}   กรอกทะเบียนรถ

TC_VHC_024-กรณี Edit โดย Vehicle Name 2 ตัวอักษร
    ${license}    Set Variable    4646544
    edit_vehicle_name    ${license}    84
    Element Text Should Be    ${alert_veName}    ต้องมีอักขระ 3 ถึง 20 ตัว

TC_VHC_025-กรณี Edit โดย Vehicle Name ซ้ำกับที่มีอยู่
    ${license}    Set Variable    4646544
    edit_vehicle_name    ${license}    646564
    
    Click Element    ${confirm_edit_button}
    Click Element    ${confirm_confirm_edit_button}
    #Sleep    100
    Wait Until Element Is Visible    ${top_right_alert}    10
    Element Text Should Be    ${top_right_alert}   ชื่อพาหนะนี้ถูกใช้งานแล้ว

TC_VHC_026-กรณี Edit โดย motor number ซ้ำกับที่มีอยู่
    ${license}    Set Variable    4646544
    ${motor_number}    Set Variable    DPPC9U0018        
    #${motor_number}    Set Variable    66546333    
    select_vehicle    ${license}
    Click Element    ${factory_edit_button}
    Input Text    ${field_motor}    ${motor_number} 
    Click Element    ${factory_save_button}
    Click Element    ${factory_save_button}
    Wait Until Element Is Visible    ${alert_motor}
    Element Text Should Be    ${alert_motor}    หมายเลขมอเตอร์นี้ถูกใช้งานแล้ว    
    #Sleep    100
   
TC_VHC_027-กรณี Edit GPS IMEI ซ้ำกับที่มีอยู่
    ${license}    Set Variable    4646544
    ${GPS}    Set Variable    100223167173
    #${GPS}    Set Variable    465656653        
    select_vehicle    ${license}
    Click Element    ${factory_edit_button}
    Input Text    ${field_gps}    ${GPS}
    Click Element    ${factory_save_button}
    Click Element    ${factory_save_button}
    Wait Until Element Is Visible    ${alert_gps}
    Element Text Should Be    ${alert_gps}    หมายเลขจีพีเอสนี้ถูกใช้งานแล้ว

TC_VHC_028-กรณี Edit chassis number ซ้ำกับที่มีอยู่
    ${license}    Set Variable    4646544
    ${chassis}    Set Variable    MRSBCREMXNZM00918
    #${chassis}    Set Variable    45654633         
    select_vehicle    ${license}
    Click Element    ${factory_edit_button}
    Input Text    ${field_chassis}    ${chassis}
    Click Element    ${factory_save_button}
    Click Element    ${factory_save_button}
    Wait Until Element Is Visible    ${alert_chassis}
    Element Text Should Be    ${alert_chassis}    หมายเลขตัวถังนี้ถูกใช้งานแล้ว

TC_VHC_029-ตรวจสอบจำนวนตัวอักษรสูงสุดกรณี Edit Vehical Name, Motot No, GPS IMEI, Chassis No, License plate
    select_vehicle
    ${max_vename}    Get Element Attribute    ${field_veName}    maxlength
    Run Keyword And Continue On Failure    Should Be Equal    ${max_vename}    50
    ${max_motor}    Get Element Attribute    ${field_motor}    maxlength
    Run Keyword And Continue On Failure    Should Be Equal    ${max_motor}    30
    ${max_gps}    Get Element Attribute    ${field_gps}    maxlength
    Run Keyword And Continue On Failure    Should Be Equal    ${max_gps}    15    
    ${max_chassis}    Get Element Attribute    ${field_chassis}    maxlength
    Run Keyword And Continue On Failure    Should Be Equal    ${max_chassis}    20    
    ${max_license}    Get Element Attribute    ${field_license}    maxlength
    Run Keyword And Continue On Failure    Should Be Equal    ${max_license}    20

TC_VHC_030-หน้าต่างยืนยันการแก้ไข
    edit_vehicle_name
    Click Element    ${confirm_edit_button}
    Sleep    1
    Run Keyword And Continue On Failure    Element Text Should Be    ${confirm_edit_title}    แก้ไขพาหนะ
    Run Keyword And Continue On Failure    Element Text Should Be    ${confirm_edit_detail}    คุณยืนยันที่จะแก้ไขพาหนะใช่หรือไม่?
    Run Keyword And Continue On Failure    Element Text Should Be    ${confirm_confirm_edit_button}    ยืนยัน 
    Run Keyword And Continue On Failure    Element Text Should Be    ${confirm_edit_cancel_button}    ยกเลิก


TC_VHC_031-กรณี Edit vehicle name
    ${new_vename}    Set Variable    6465642
    ${old_vename}    Set Variable    64656423
    edit_vehicle_name    old_license=4646544    new_veName=${new_vename}
    Click Element    ${confirm_edit_button}
    Click Element    ${confirm_confirm_edit_button}
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    ${top_right_alert}
    Run Keyword And Continue On Failure    Element Text Should Be    ${top_right_alert}    อัปเดตพาหนะสำเร็จ 
    Run Keyword And Continue On Failure    Element Text Should Be    ${field_veName}    ${new_vename}
    Sleep    5
    Close Browser

    edit_vehicle_name    old_license=4646544    new_veName=${old_vename}
    Click Element    ${confirm_edit_button}
    Click Element    ${confirm_confirm_edit_button}
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    ${top_right_alert}
    Run Keyword And Continue On Failure    Element Text Should Be    ${top_right_alert}    อัปเดตพาหนะสำเร็จ
    Run Keyword And Continue On Failure    Element Text Should Be    ${field_veName}    ${old_vename}   
    Sleep    5 
    #แก้ไขข้อมูลให้กลับมาเป็นค่าเดิม
    #[Teardown]
    #edit_vehicle    old_license=46465    new_veName=646564
    #Click Element    ${confirm_edit_button}
    #Click Element    ${confirm_confirm_edit_button}



TC_VHC_032-กรณี Edit status
    ${license}    Set Variable    4646544
    ${status}    Set Variable    Active
    #${status}    Set Variable    InActive            
    select_vehicle    ${license}
    Click Element    ${factory_edit_button}
    Click Element    //div[@class="mb-3"][1]/div/div/div/div/span/div[1]/div[1]/div/div[2]
    Wait Until Element Is Visible    ${field_status}//*[text()[contains(.,'${status}')]]    10
    Click Element     ${field_status}//*[text()[contains(.,'${status}')]]    
    Click Element    ${factory_save_button}
    Click Element    ${confirm_edit_button}
    Click Element    ${confirm_confirm_edit_button}
    #Wait Until Element Is Visible   //*[@class="Toastify"]//*[text()="อัปเดตพาหนะสำเร็จ"]
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    ${top_right_alert}
    Run Keyword And Continue On Failure    Element Text Should Be    ${top_right_alert}    อัปเดตพาหนะสำเร็จ 
    Run Keyword And Continue On Failure    Element Text Should Be    //div[@class="mb-3"][1]/div/div/div/div/span/div[1]/div[1]/div/div[1]/div[1]    ${status}
TC_VHC_033-กรณี Edit motor number
    ${license}    Set Variable    4646544
    ${motor_number}    Set Variable    6654633        
    #${motor_number}    Set Variable    66546333    
    select_vehicle    ${license}
    Click Element    ${factory_edit_button}
    Input Text    ${field_motor}    ${motor_number} 
    Click Element    ${factory_save_button}
    Click Element    ${factory_save_button}
    Click Element    ${confirm_edit_button}
    Click Element    ${confirm_confirm_edit_button}
    #Wait Until Element Is Visible   //*[@class="Toastify"]//*[text()="อัปเดตพาหนะสำเร็จ"]
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    ${top_right_alert}
    Run Keyword And Continue On Failure    Element Text Should Be    ${top_right_alert}    อัปเดตพาหนะสำเร็จ     
    #Element Text Should Be    ${field_motor}    ${motor_number} เช็คไม่ได้เพราะ Element ไม่มีค่าให้เช็ค

TC_VHC_034-กรณี Edit model
    ${license}    Set Variable    4646544
    ${model}    Set Variable    scania  
    #${model}    Set Variable    Benz             
    select_vehicle    ${license}
    Click Element    ${factory_edit_button}
    Click Element    //div[@class="mb-3"][1]//span/div[3]/div[1]/div[1]/div/div[2]
    Wait Until Element Is Visible    ${field_model}    10
    Click Element    ${field_model}//*[text()[contains(.,'${model}')]]
    Click Element    ${factory_save_button}
    Click Element    ${confirm_edit_button}
    Click Element    ${confirm_confirm_edit_button}
    #Wait Until Element Is Visible   //*[@class="Toastify"]//*[text()="อัปเดตพาหนะสำเร็จ"]
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    ${top_right_alert}
    Run Keyword And Continue On Failure    Element Text Should Be    ${top_right_alert}    อัปเดตพาหนะสำเร็จ 
    Element Text Should Be    //div[@class="mb-3"][1]//span/div[3]/div[1]/div[1]/div/div[1]/div[1]    ${model}

TC_VHC_035-กรณี Edit brand
    ${license}    Set Variable    4646544
    ${brand}    Set Variable    NISSAN 
    #${brand}    Set Variable    ISUZU       
    select_vehicle    ${license}
    Click Element    ${factory_edit_button}
    Click Element    //div[@class="mb-3"][1]//span/div[3]/div[2]/div[1]/div/div[2]
    Click Element    ${field_brand}//*[text()[contains(.,'${brand}')]]
    Click Element    ${factory_save_button}
    Click Element    ${confirm_edit_button}
    Click Element    ${confirm_confirm_edit_button}
    #Wait Until Element Is Visible   //*[@class="Toastify"]//*[text()="อัปเดตพาหนะสำเร็จ"]  
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    ${top_right_alert}
    Run Keyword And Continue On Failure    Element Text Should Be    ${top_right_alert}    อัปเดตพาหนะสำเร็จ   
    Element Text Should Be    //div[@class="mb-3"][1]//span/div[3]/div[2]/div[1]/div/div[1]/div[1]    ${brand}

TC_VHC_036-กรณี Edit GPS IMEI
    ${license}    Set Variable    4646544
    ${GPS}    Set Variable    46565665
    #${GPS}    Set Variable    465656653        
    select_vehicle    ${license}
    Click Element    ${factory_edit_button}
    Input Text    ${field_gps}    ${GPS}
    Click Element    ${factory_save_button}
    Click Element    ${factory_save_button}
    Click Element    ${confirm_edit_button}
    Click Element    ${confirm_confirm_edit_button}
    #Wait Until Element Is Visible   //*[@class="Toastify"]//*[text()="อัปเดตพาหนะสำเร็จ"]
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    ${top_right_alert}
    Run Keyword And Continue On Failure    Element Text Should Be    ${top_right_alert}    อัปเดตพาหนะสำเร็จ    
    ${check_GPS}    Get Element Attribute    ${field_gps}    value 
    Should Be Equal    ${check_GPS}    ${GPS}
    
TC_VHC_037-กรณี Edit chassis number
    ${license}    Set Variable    4646544
    ${chassis}    Set Variable    4565463
    #${chassis}    Set Variable    45654633         
    select_vehicle    ${license}
    Click Element    ${factory_edit_button}
    Input Text    ${field_chassis}    ${chassis}
    Click Element    ${factory_save_button}
    Click Element    ${factory_save_button}
    Click Element    ${confirm_edit_button}
    Click Element    ${confirm_confirm_edit_button}
    #Wait Until Element Is Visible   //*[@class="Toastify"]//*[text()="อัปเดตพาหนะสำเร็จ"]
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    ${top_right_alert}
    Run Keyword And Continue On Failure    Element Text Should Be    ${top_right_alert}    อัปเดตพาหนะสำเร็จ   
    ${check_chassis}    Get Element Attribute    ${field_chassis}    value 
    Should Be Equal    ${check_chassis}    ${chassis}

#TC_VHC กรณี Edit license plate
#    Open Add New Vehicle Page

TC_VHC_038-กรณี Edit depot
    ${license}    Set Variable    4646544
    ${depot}    Set Variable    อู่เคหะธนบุรี
    #${depot}    Set Variable    อู่เคหะบางพลี         
    select_vehicle    ${license}
    Click Element    ${operation_edit_button}
    Click Element    //div[@class="mb-3"][4]//span/div[1]/div/div/div[2]
    Wait Until Element Is Visible    ${field_depot}//*[text()[contains(.,'${depot}')]]    10
    Click Element    ${field_depot}//*[text()[contains(.,'${depot}')]]
    Click Element    //div[@class="mb-3"][4]//span/div[2]/div[1]/div/div/div[2]
    Click Element    ${field_subline}//*
    Click Element    ${operation_save_button}
    Click Element    ${confirm_edit_button}
    Click Element    ${confirm_confirm_edit_button}
    #Wait Until Element Is Visible   //*[@class="Toastify"]//*[text()="อัปเดตพาหนะสำเร็จ"]   
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    ${top_right_alert}
    Run Keyword And Continue On Failure    Element Text Should Be    ${top_right_alert}    อัปเดตพาหนะสำเร็จ 
    Element Text Should Be    //div[@class="mb-3"][4]//span/div[1]/div/div/div[1]/div[1]    ${depot}

TC_VHC_039-กรณี Edit sub line
    ${license}    Set Variable    4646544
    ${depot}    Set Variable    อู่เคหะธนบุรี  
    #${subline}    Set Variable    99-99(3)
    ${subline}    Set Variable    99-99(4)       
    select_vehicle    ${license}
    Click Element    ${operation_edit_button}
    
    #ตอนนี้มี ISSUE ที่ถ้าไม่เลือก depot ใหม่จะไม่แสดง subline ให้เลือก จึงต้องใช้ 3 คำสั่งด้านล่างนี้เพื่อเลือก depot 
    Click Element    //div[@class="mb-3"][4]//span/div[1]/div/div/div[2]
    Wait Until Element Is Visible    ${field_depot}//*[text()[contains(.,'${depot}')]]    10
    Click Element    ${field_depot}//*[text()[contains(.,'${depot}')]]
    ###

    Click Element    //div[@class="mb-3"][4]//span/div[2]/div[1]/div/div/div[2]
    Element Text Should Not Be    ${field_subline}//*    No options
    Click Element    //div[@class="mb-3"][4]//span/div[2]/div[1]/div[1]/div//*[text()="${subline}"]


    Click Element    ${operation_save_button}
    Click Element    ${confirm_edit_button}
    Click Element    ${confirm_confirm_edit_button}
    #Wait Until Element Is Visible   //*[@class="Toastify"]//*[text()="อัปเดตพาหนะสำเร็จ"]  
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    ${top_right_alert}
    Run Keyword And Continue On Failure    Element Text Should Be    ${top_right_alert}    อัปเดตพาหนะสำเร็จ  
    Element Text Should Be    //div[@class="mb-3"][4]//span/div[2]/div[1]/div[1]/div/div[1]/div[1]    ${subline}


TC_VHC_040-หน้าต่างยืนยันการ Delete Vehicle
    select_vehicle
    Click Element    ${delete_button}
    Sleep    1
    Run Keyword And Continue On Failure    Element Text Should Be    ${confirm_edit_title}    ลบพาหนะ
    Run Keyword And Continue On Failure    Element Text Should Be    ${confirm_edit_detail}     คุณยืนยันที่จะลบพาหนะ: 46446544 ใช่หรือไม่?
    Run Keyword And Continue On Failure    Element Text Should Be    ${confirm_confirm_edit_button}    ยืนยัน
    Run Keyword And Continue On Failure    Element Text Should Be    ${confirm_edit_cancel_button}    ยกเลิก

TC_VHC_041-กรณีลบ Vehicle
    #ใส่ License Plate ที่ต้องการลบ
    #License Plate ที่เลือกลบจะใช้ตัวเดียวกับที่ Add ใหม่
    ${delete_license}    Set Variable    6666(1)
    delete_vehicle    ${delete_license}
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    ${top_right_alert}
    Run Keyword And Continue On Failure    Element Text Should Be    ${top_right_alert}    ลบพาหนะสำเร็จ
    Input Text    ${search_box}    ${delete_license}
    Element Should Not Be Visible    //span[text()[contains(.,"${delete_license}")]]    10

TC_VHC_042-กรณีลบ Vehicle ที่ถูกใช้งานอยู่

    #ยังใช้งานไม่ได้
    ${delete_license}    Set Variable    98-Test
    delete_vehicle    ${delete_license}
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    ${top_right_alert}
    Run Keyword And Continue On Failure    Element Text Should Be    ${top_right_alert}    ข้อผิดพลาด : พาหนะถูกใช้งานอยู่ ไม่สามารถลบได้
    Input Text    ${search_box}    ${delete_license}
    Wait Until Element Is Visible    //span[text()[contains(.,"${delete_license}")]]    10




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
    [Arguments]    ${data_status}=Active    ${data_vename}=999680    ${data_motor}=999680    ${data_brand}=MINE   
    ...            ${data_gps}=999680       ${data_chassis}=999680   ${data_license}=999680  ${data_depot}=อู่แสมดำ    
    Open Add New Vehicle Page
    Click Element    //div[@class="mb-3"][1]/div/div/div/div/span/div[1]/div[1]/div/div[2]
    Wait Until Element Is Visible    ${field_status}//*[text()[contains(.,'${data_status}')]]    10
    Click Element     ${field_status}//*[text()[contains(.,'${data_status}')]]
    Input Text    ${field_veName}    ${data_vename}
    Input Text    ${field_motor}    ${data_motor}
    Click Element    //div[@class="mb-3"][1]//span/div[3]/div[1]/div[1]/div/div[2]
    Wait Until Element Is Visible    ${field_model}    10
    Click Element    ${field_model}//*[2]
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
    Sleep    10
    Click Element    ${button_+add}



select_vehicle
    [Arguments]    ${correct_license}=46465
    Open Vehicle Menu
    Wait Until Element Is Visible    ${search_box}    10
    Input Text    ${search_box}    ${correct_license}
    Wait Until Element Is Visible    //span[text()[contains(.,"${correct_license}")]]    13
    Sleep    2
    #คำสั่งกดที่ผลลัพธ์ตัวแรกที่ค้นหาาเจอ
    Wait Until Element Is Visible    //*[@id="root"]/main/div[3]/div/div/div/div[3]/div/div[1]/div/main/div[2]/div[1]/div[2]/div/div/div/div[2]/div/div[1]/div
    Click Element    //*[@id="root"]/main/div[3]/div/div/div/div[3]/div/div[1]/div/main/div[2]/div[1]/div[2]/div/div/div/div[2]/div/div[1]/div
    Element Text Should Be    //form/div[1]/header/div[1]/h4    พาหนะ
    Wait Until Element Is Visible    ${field_veName}
    ${get_license}    Get Element Attribute    ${field_license}    value
    Should Be Equal    ${get_license}    ${correct_license}

edit_vehicle
    [Arguments]    ${old_license}=46465    ${new_veName}=6465642
    select_vehicle    ${old_license}
    Click Element    ${factory_edit_button}
    Input Text    ${field_veName}    ${new_veName}
    Click Element    ${factory_save_button}
    Click Element    ${factory_save_button}


delete_vehicle
    [Arguments]    ${data_license}
    Open Vehicle Menu
    Wait Until Element Is Visible    ${search_box}    10
    Input Text    ${search_box}    ${data_license}
    Wait Until Element Is Visible    //span[text()[contains(.,'${data_license}')]]    10
    Click Element    //*[@id="root"]/main/div[3]/div/div/div/div[3]/div/div[1]/div/main/div[2]/div[1]/div[2]/div/div/div/div[2]/div/div[1]/div
    Click Element    ${delete_button}
    Click Element    ${confirm_delete_button}
    Input Text    ${search_box}    ${data_license}
    Sleep    5s
    Element Should Not Be Visible    //span[2][text()[contains(.,'${data_license}')]]

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
    add_new_vehicle    data_vename=QA
    Element Text Should Be    ${alert_veName}    ต้องมีอักขระ 3 ถึง 20 ตัว

TC_VHC_013-เพิ่มโดยกรอกข้อมูลครบถ้วนและถูกต้อง
    #ใส่ข้อมูลทั้งหมดทีต้องการเพิ่มถ้าไม่ใส่จะ Dafault ให้ใน Function add_new_vehicle
    add_new_vehicle    data_vename=6666(1)
    Sleep    5
    Click Element    ${confirm_add}

    #Step นี้จะเช็คว่าข้อมูลที่เพิ่มปรากฎในรายการไหม เช็คด้วย Vehicle Name ที่เพิ่ม
    Input Text    ${search_box}    6666(1)
    Sleep    5
    Wait Until Element Is Visible    //span[text()[contains(.,'6666(1)')]]    10
ลบ Vehicle
    #ใส่ License Plate ที่ต้องการลบ
    delete_vehicle    98-Test


TC_VHC_0xx-กรณีเพิ่มโดยกรอก Vehical Name ซ้ำกับที่มีอยู่
    add_new_vehicle    data_vename=35-11
    Element Should Be Visible    ${alert_veName}
    Element Text Should Be    ${alert_veName}    ชื่อนี้ถูกใช้ไปแล้ว

TC_VHC_0xx-กรณีเพิ่มโดยกรอก Motor Number ซ้ำกับที่มีอยู่
    add_new_vehicle    data_motor=MCS20111214
    Element Should Be Visible    ${alert_motor}
    Element Text Should Be    ${alert_motor}    หมายเลขมอเตอร์นี้ถูกใช้ไปแล้ว

TC_VHC_0xx-กรณีเพิ่มโดยกรอก GPS ซ้ำกับที่มีอยู่
    add_new_vehicle    data_gps=868998030639021
    Element Should Be Visible    ${alert_gps}
    Element Text Should Be    ${alert_gps}    หมายเลขจีพีเอสนี้ถูกใช้ไปแล้ว

TC_VHC_0xx-กรณีเพิ่มโดยกรอก Chassis ซ้ำกับที่มีอยู่
    add_new_vehicle    data_chassis=MRSBCREM6MZM00008
    Element Should Be Visible    ${alert_chassis}
    Element Text Should Be    ${alert_chassis}    หมายเลขคัสซีนี้ถูกใช้ไปแล้ว

TC_VHC_0xx-กรณีเพิ่มโดยกรอก License ซ้ำกับที่มีอยู่
    add_new_vehicle    data_license=16-5841
    Element Should Be Visible    ${alert_license}
    Element Text Should Be    ${alert_license}    ทะเบียนรถนี้ถูกใช้ไปแล้ว

TC_VHC_014-หน้าต่างยืนยันการ Add
    add_new_vehicle    data_vename=999681
    Sleep    1
    Run Keyword And Continue On Failure    Element Text Should Be    //div[@role="dialog"]/div[2]/div/div/div/h2    เพิ่มพาหนะ
    Run Keyword And Continue On Failure    Element Text Should Be    //div[@role="dialog"]/div[2]/div/div/div[2]/div    คุณแน่ใจหรือไม่ที่จะเพิ่มยานพาหนะใหม่ ?
    Run Keyword And Continue On Failure    Element Text Should Be    //div[@role="dialog"]/div[2]/div/div/div[3]/div/div/div[1]    ยืนยัน
    Run Keyword And Continue On Failure    Element Text Should Be    //div[@role="dialog"]/div[2]/div/div/div[3]/div/div/div[2]    ยกเลิก

TC_VHC_016-หน้ารายละเอียด Vehicle (ข้อมูล)
    select_vehicle
    
TC_VHC_017-หน้ารายละเอียด Vehicle (คำ)
    Run Keyword And Continue On Failure    select_vehicle    46465
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

TC_VHC กรณีกดปุ่ม Edit
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
    
TC_VHC กรณี Edit ด้วยข้อมูลที่ถูกต้อง
    edit_vehicle
    Click Element    ${confirm_edit_button}
    Click Element    ${confirm_confirm_edit_button}

    #แก้ไขข้อมูลให้กลับมาเป็นค่าเดิม
    #[Teardown]
    #edit_vehicle    old_license=46465    new_veName=646564
    #Click Element    ${confirm_edit_button}
    #Click Element    ${confirm_confirm_edit_button}


TC_VHC_หน้าต่างยืนยันการแก้ไข
    edit_vehicle
    Click Element    ${confirm_edit_button}
    Sleep    1
    Run Keyword And Continue On Failure    Element Text Should Be    ${confirm_edit_title}    แก้ไขพาหนะ
    Run Keyword And Continue On Failure    Element Text Should Be    ${confirm_edit_detail}    คุณแน่ใจหรือไม่ว่าต้องการบันทึกการเปลี่ยนแปลง?
    Run Keyword And Continue On Failure    Element Text Should Be    ${confirm_confirm_edit_button}    ยืนยัน 
    Run Keyword And Continue On Failure    Element Text Should Be    ${confirm_edit_cancel_button}    ยกเลิก
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
*** Settings ***
Library    SeleniumLibrary    screenshot_root_directory=/Users/sakda.l/Desktop/TSB Automate/Login/Failed Screenshot    
#robot --outputdir "\Users\sakda.l\Desktop\TSB Automate\Login\Report" Depot.robot
*** Variables ***
${email_field}     //input[@name="email"]
${password_field}    //input[@name='password']
${login_button}    //button[@class="btn btn-sm btn-dark block w-full text-center"]

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
Log In
    [Arguments]    ${email}    ${password}
    #Open Browser  url=http://qc-tsb-admin.onlineasset.co.th/    browser=chrome
    Open Browser  url=https://fleet.tsbcloud.co/    browser=chrome
    Wait Until Element Is Visible     ${email_field}    10s
    Click Element    ${email_field}
    Input Text  ${email_field}  text=${email}
    Wait Until Element Is Visible     ${password_field}
    Input Text  ${password_field}  text=${password}
    Wait Until Element Is Visible    ${login_button}
    Click Button   ${login_button}

Open Vehicle Menu
    Log In    phonarun@efinancethai.com    EVEFT@cs
    Wait Until Element Is Visible    //*[@id="root"]/main/header/div/div/div[1]/div[2]//*[name()='svg']
    Click Element    //*[@id="root"]/main/header/div/div/div[1]/div[2]//*[name()='svg']
    Wait Until Element Is Visible    //*[@id="root"]/main/div[2]/div[3]/div[1]/div[2]/div/div/div/ul/li[6]/div[1]/div[1]/div
    Click Element    //*[@id="root"]/main/div[2]/div[3]/div[1]/div[2]/div/div/div/ul/li[6]/div[1]/div[1]/div
    Wait Until Element Is Visible    //*[@id="root"]/main/div[2]/div[3]/div[1]/div[2]/div/div/div/ul/li[6]/div[2]/div/ul/li[4]/a/span/span[2]
    Click Element    //*[@id="root"]/main/div[2]/div[3]/div[1]/div[2]/div/div/div/ul/li[6]/div[2]/div/ul/li[4]/a/span/span[2]
    Wait Until Element Is Visible    //*[@id="root"]/main/header/div/div/div[1]/div[3]/h4

Open Add New Vehicle Page
    Open Vehicle Menu
    Wait Until Element Is Visible    //*[@id="root"]/main/div[3]/div/div/div/div[3]/div/div[1]/div/main/div[1]/div[2]/div/button
    Click Element    //*[@id="root"]/main/div[3]/div/div/div/div[3]/div/div[1]/div/main/div[1]/div[2]/div/button
    Wait Until Element Is Visible    css:div:nth-child(1) > div > div > div > div > span > div > label

add_new_vehicle
    [Arguments]    ${data_vename}
    Open Add New Vehicle Page
    Click Element    //div[@class="mb-3"][1]/div/div/div/div/span/div[1]/div[1]/div/div[2]
    Wait Until Element Is Visible    ${field_status}//*[text()[contains(.,'Active')]]
    Click Element     ${field_status}//*[text()[contains(.,'Active')]]
    Input Text    ${field_veName}    ${data_vename}
    Input Text    ${field_motor}    999666
    Click Element    //div[@class="mb-3"][1]//span/div[3]/div[1]/div[1]/div/div[2]
    Wait Until Element Is Visible    ${field_model}
    Click Element    ${field_model}//*[2]
    Click Element    //div[@class="mb-3"][1]//span/div[3]/div[2]/div[1]/div/div[2]
    Click Element    ${field_brand}//*[text()[contains(.,'MINE')]]
    Input Text    ${field_gps}    999666
    Input Text    //div[@class="mb-3"][1]//span/div[4]/div[2]/div/div[1]/input    999666
    Input Text    ${field_license}    999666
    Click Element    //div[@class="mb-3"][4]//span/div[1]/div/div/div[2]
    Wait Until Element Is Visible    ${field_depot}//*[text()[contains(.,'อู่แสมดำ')]]
    Click Element    ${field_depot}//*[text()[contains(.,'อู่แสมดำ')]]
    Click Element    //div[@class="mb-3"][4]//span/div[2]/div[1]/div/div/div[2]
    Click Element    ${field_subline}//*
    Click Element    ${button_+add}
    Click Element    ${confirm_add}
    Input Text    //*[@id="root"]/main/div[3]/div/div/div/div[3]/div/div[1]/div/main/div[1]/div[1]/div/input    999666
    Wait Until Element Is Visible    //span[text()[contains(.,'999666')]]

delete_vehicle
    [Arguments]    ${data_vename}
    Open Vehicle Menu
    Wait Until Element Is Visible    //*[@id="root"]/main/div[3]/div/div/div/div[3]/div/div[1]/div/main/div[1]/div[1]/div/input
    Input Text    //*[@id="root"]/main/div[3]/div/div/div/div[3]/div/div[1]/div/main/div[1]/div[1]/div/input    ${data_vename}
    Wait Until Element Is Visible    //span[text()[contains(.,${data_vename})]]
    Click Element    //*[@id="root"]/main/div[3]/div/div/div/div[3]/div/div[1]/div/main/div[2]/div[1]/div[2]/div/div/div/div[2]/div/div[1]/div
    Click Element    //header/div[3]/div/button
    Click Element    //div[3]/div/div[@class="flex justify-center w-full gap-2"]/div[1]
    Input Text    //*[@id="root"]/main/div[3]/div/div/div/div[3]/div/div[1]/div/main/div[1]/div[1]/div/input    ${data_vename}
    Sleep    5s
    Element Should Not Be Visible    //span[text()[contains(.,${data_vename})]]

*** Test Cases ***

TC_VHC_001-หน้า Vehicle
    Open Vehicle Menu
    Sleep    5s
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
    Wait Until Element Is Visible    //*[@id="root"]/main/div[3]/div/div/div/div[3]/div/div[1]/div/main/div[1]/div[2]/div/button
    Click Element    //*[@id="root"]/main/div[3]/div/div/div/div[3]/div/div[1]/div/main/div[1]/div[2]/div/button

TC_VHC_003-กดเลือก Vehicle
    Open Vehicle Menu
    Wait Until Element Is Visible    //*[@id="root"]/main/div[3]/div/div/div/div[3]/div/div[1]/div/main/div[2]/div[1]/div[2]/div/div/div/div[2]/div/div[1]
    Click Element    //*[@id="root"]/main/div[3]/div/div/div/div[3]/div/div[1]/div/main/div[2]/div[1]/div[2]/div/div/div/div[2]/div/div[1]
    
TC_VHC_004-กรณีค้นหาข้อมูลที่ไม่มี
    Open Vehicle Menu
    Wait Until Element Is Visible    //*[@id="root"]/main/div[3]/div/div/div/div[3]/div/div[1]/div/main/div[1]/div[1]/div/input    10s
    Input Text    //*[@id="root"]/main/div[3]/div/div/div/div[3]/div/div[1]/div/main/div[1]/div[1]/div/input    ไม่มีข้อมูล
    Wait Until Element Is Visible    //*[@id="root"]/main/div[3]/div/div/div/div[3]/div/div[1]/div/main/div[2]/div[1]/div[2]/div/div/div/div[1]/text/tspan
    Element Text Should Be    //*[@id="root"]/main/div[3]/div/div/div/div[3]/div/div[1]/div/main/div[2]/div[1]/div[2]/div/div/div/div[1]/text/tspan    No matching records found.
        
TC_VHC_005-หน้า Add New Vehicle
    Open Add New Vehicle Page
    Run Keyword And Continue On Failure    Element Text Should Be    //*[@id="root"]/main/div[3]/div/div/div/div[3]/div/div[2]/div/div/div/main/div[1]/div/div[1]/header/div/h4    เพิ่มพาหนะ
    Sleep    2s
    Run Keyword And Continue On Failure    Element Text Should Be    css:div.simplebar-mask>div>div>div>form>div:nth-child(1)>button>span:nth-child(1)    ข้อมูลโรงงาน
    Run Keyword And Continue On Failure    Element Text Should Be    css:div.simplebar-mask > div > div > div > form > div:nth-child(2) > button > span    ทะเบียนรถ - รับประกัน
    Run Keyword And Continue On Failure    Element Text Should Be    css:div.simplebar-mask > div > div > div > form > div:nth-child(3) > button > span    อุปกรณ์
    Run Keyword And Continue On Failure    Element Text Should Be    css:div.simplebar-mask > div > div > div > form > div:nth-child(4) > button > span    ข้อมูลการดำเนินงาน

TC_VHC_006-Drop down Factory data
    Open Add New Vehicle Page
    Element Text Should Be    css:div:nth-child(1) > div > div > div > div > span > div > label    สถานะ *
    Element Text Should Be    css:div:nth-child(1) > div > div > div > div > span > div > div > div > div > div    Select...
    Element Text Should Be    css:div:nth-child(1) > div > div > div > div > span > div:nth-child(2) > div:nth-child(1) > label    ชื่อพาหนะ *
    ${place_ve_name}    Get Element Attribute    css:div:nth-child(2) > div:nth-child(1) > div > div > input    placeholder
    Should Be Equal    ${place_ve_name}    ชื่อพาหนะ
    Element Text Should Be    css:div:nth-child(1) > div > div > div > div > span > div:nth-child(2) > div:nth-child(2)>label    หมายเลขมอเตอร์*
    ${place_motor}    Get Element Attribute    css:div:nth-child(2) > div:nth-child(2) > div > div > input    placeholder
    Should Be Equal    ${place_motor}    หมายเลขมอเตอร์
    Element Text Should Be    css:div:nth-child(1) > div > div > div > div > span > div:nth-child(3) > div:nth-child(1)>label    รุ่น *
    Element Text Should Be    css:span > div:nth-child(3) > div:nth-child(1) > div > div > div > div:nth-child(1)    Select...
    Element Text Should Be    css:div:nth-child(1) > div > div > div > div > span > div:nth-child(3) > div:nth-child(2)>label    ยี่ห้อ *
    Element Text Should Be    css:span > div:nth-child(3) > div:nth-child(2) > div > div > div > div:nth-child(1)    Select...
    Element Text Should Be    css:div:nth-child(1) > div > div > div > div > span > div:nth-child(4) > div:nth-child(1)>label    GPS IMEI *
    ${place_GPS}    Get Element Attribute    css:div:nth-child(4) > div:nth-child(1) > div > div > input    placeholder
    Should Be Equal    ${place_GPS}    GPS IMEI
    Element Text Should Be    css:div:nth-child(1) > div > div > div > div > span > div:nth-child(4) > div:nth-child(2)>label    เลขตัวถังรถ *
    ${place_GPS}    Get Element Attribute    css:div:nth-child(4) > div:nth-child(2) > div > div > input    placeholder
    Should Be Equal    ${place_GPS}    เลขตัวถังรถ

    #Click Element    css: span > div:nth-child(3) > div:nth-child(1) > div:nth-child(2)

TC_VHC_007-Drop down License plate - Guarantee
    Open Add New Vehicle Page
    Element Text Should Be    css:div:nth-child(2) > div > div > div > div > span >div > label    ทะเบียนรถ *
    ${place_License}    Get Element Attribute    css:div:nth-child(2) > div > div > div > div > span >div > div > div > input    placeholder
    Should Be Equal    ${place_License}    ทะเบียนรถ

TC_VHC_008-Drop down Equipment
    Open Add New Vehicle Page
    Element Text Should Be    css:span:nth-child(2) > div > text > tspan    ไม่มีข้อมูลอุปกรณ์

TC_VHC_009-Drop down Operation data
    Open Add New Vehicle Page
    Element Text Should Be    css:div:nth-child(4) > div > div > div > div > span >div > label    อู่รถ *
    Element Text Should Be    css:div:nth-child(4) > div > div > div > div > span >div:nth-child(1) > div > div > div:nth-child(1) > div:nth-child(1)    Select...
    Element Text Should Be    css:div:nth-child(4) > div > div > div > div > span > div:nth-child(2) >div:nth-child(1) > label    สายย่อย *
    Element Text Should Be    css:div:nth-child(4) > div > div > div > div > span > div:nth-child(2) > div:nth-child(1) > div > div > div > div:nth-child(1)    Select...
    Element Text Should Be    css:div:nth-child(4) > div > div > div > div > span > div:nth-child(2) >div:nth-child(2) > label    บริษัท *

#TC_VHC_010-กรณีค้นหาข้อมูลใน Drop down สถานะ, รุ่น, ยี่ห้อ, อู่, สายย่อย ด้วยข้อมูลที่ไม่มีอยู่ในระบบ


TC_VHC_011-กรณีไม่กรอกข้อมูล
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

TC_VHC_012-กรณีกรอก Vehical Name 2 ตัวอักษร
    Open Add New Vehicle Page
    Input Text    ${field_veName}    QA
    Click Element    ${button_+add}
    Element Text Should Be    ${alert_veName}    ต้องมีอักขระ 3 ถึง 20 ตัว

TC_VHC_013-กรอกข้อมูลครบถ้วนและถูกต้อง
    add_new_vehicle    999670

ลบ Vehicle
    delete_vehicle    999670

#TC_VHC_014-หน้าต่างยืนยันการ Add
#TC_VHC_015-กรณีกดปุ่ม Confirm การ Add
#TC_VHC_016-หน้ารายละเอียด Vehicle
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
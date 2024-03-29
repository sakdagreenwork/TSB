# Test Data ที่่ต้องเตรียมไว้ก่อนทำการ Automate Test

# 1. Vehicle
    - Status : InActive
    - Vehicle Name : 64656429
    - Motor No. : 66546339
    - Model : Benz
    - Brand : ISUZU
    - GPS : 465656659
    - Chassis : 45654639
    - Veicle License : 4646544
    - Depot : อู่เคหะบางพลี
    - Sub Line : 99-99(4)
    - Company : บริษัท ไทย สมายล์ บัส จำกัด

เช็ค Add ซ้ำ ข้อมูลอยู่กันคนละคันได้
# 2.Vehicle Name : 35-11
# 3.Motor : MCS20111214
# 4.GPS : 868998030639021
# 5.Chassis : MRSBCREM6MZM00008
# 6.License : 16-5841

ที่เหลือคือเช็ค Edit ซ้ำ ข้อมูลอยู่กันคนละคันได้
# 8.Vehicle Name : 646564
# 9.Motor : DPPC9U0018
# 10.GPS : 100223167173
# 11.Chassis : MRSBCREMXNZM00918

# 12.Depot (เมนู Depot) (เมนู Sub Line)
    - อู่บึงกุ่ม
        - Sub Line (เมนู Sub Line)
            - 3-3(11)_อู่รามคำแหง
    - อู่แสมดำ (สำหรับเพิ่ม Vehicle)
        - Sub Line (เมนู Sub Line)
            - 2-34R_อู่มีนบุรี-หนองจอก>อู่รามคำแหง 74
    - อู่เคหะธนบุรี (สำหรับ Test การกด Save)
        - Sub Line (เมนู Sub Line)
            - 3-53_อู่รามคำแหง 74

# 13.License : 998-Test (สำหรับ Test การลบ Vehicle ที่ถูกใช้อยู่)

#*** InActive เมนูนี้ A เป็นตัวใหญ่ ***


*** Settings ***
Library    SeleniumLibrary    screenshot_root_directory=/Users/sakda.l/Desktop/TSB Automate/Login/Failed Screenshot 
Library    Collections
Test Teardown    Close Browser   
Resource    keyword.robot
#robot --outputdir "\Users\sakda.l\Desktop\TSB Automate\Login\Report" Vehicle.robot
*** Variables ***

${hamburger_button}     //*[@id="root"]/main/header/div/div/div[1]/div[2]//*[name()='svg']
${data_manage_button}    //*[@id="root"]/main/div[2]//div[1]/div[2]/div/div/div/ul/li[6]/div[1]/div[1]/div
${vehicle_menu}    //*[@id="root"]/main/div[2]/div[3]/div[1]/div[2]/div/div/div/ul/li[6]/div[2]/div/ul/li[4]/a/span/span[2]
${depot_menu_button}    //*[@id="root"]/main/div[2]//div[1]/div[2]/div/div/div/ul/li[6]/div[2]/div/ul/li[7]/a/span/span[2]

${total}    //*[@id="root"]/main//div[2]/div/div/div/div/div[1]/div[2]/span
${active}    //*[@id="root"]/main//div[2]/div/div/div/div/div[2]/div[2]/span
${inactive}    //*[@id="root"]/main//div[2]/div/div/div/div/div[3]/div[2]/span
${maintaince}    //*[@id="root"]/main//div[2]/div/div/div/div/div[4]/div[2]/span
${select_to_view_text}    //*[@id="root"]/main//div[3]/div/div[2]/div/div/div/main/div[3]/h4

${add_new_ve_button}    //*[@id="root"]/main//div[3]/div/div[1]/div/main/div[1]/div[2]/div/button

${title}    //*[@id="root"]/main/header/div/div/div[1]//h4
${add_new_ve_title}    //*[@id="root"]/main//main/div[1]/div/div[1]/header/div/h4
${edit_ve_title}    //form/div[1]/header/div[1]/h4



${first_ve_result}    //*[@id="root"]/main//main/div[2]/div[1]/div[2]/div/div/div/div[2]/div/div[1]/div

${email_field}     //input[@name="email"]
${password_field}    //input[@name='password']
${login_button}    //button[@class="btn btn-sm btn-dark block w-full text-center"]

${factory_data_dropdown_text}    //div[3]//div[1]/button/span[1]
${license_plate_dropdown_text}    //div[3]//div[2]/button/span[1]
${equipment_dropdown_text}    //div[3]//div[3]/button/span[1]
${operation_data_dropdown_text}    //div[3]//div[4]/button/span[1]

${add_edit_status_placeholder}    //div[1]/div/div/div/div/span/div[1]/div/div/div[1]/div[1]
${add_edit_model_placeholder}    //div[1]/div/div/div/div/span/div[3]/div[1]/div/div/div[1]/div[1]
${add_edit_brand_placeholder}    //div[1]/div/div/div/div/span/div[3]/div[2]/div/div/div[1]/div[1]

${add_edit_depot_placeholder}    //div[4]/div/div/div/div/span/div[1]/div/div/div[1]/div[1]
${add_edit_subline_placeholder}    //div[4]/div/div/div/div/span/div[2]/div/div/div[1]/div[1]/div[1]

${no_equipment_data_text}    //span[2]/div/text/tspan

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

${dropdown_status_button}    //div[@class="mb-3"][1]/div/div/div/div/span/div[1]/div[1]/div/div[2]
${drodown_model_button}    //div[@class="mb-3"][1]//span/div[3]/div[1]/div[1]/div/div[2]
${dropdown_brand_button}    //div[@class="mb-3"][1]//span/div[3]/div[2]/div[1]/div/div[2]
${drop_down_depot_button}    //div[@class="mb-3"][4]//span/div[1]/div/div/div[2]
${drop_down_subline_button}    //div[@class="mb-3"][4]//span/div[2]/div[1]/div/div/div[2]

${confirm_add_edit_title}    //div[@role="dialog"]/div[2]/div/div/div/h2
${confirm_add_edit_text}    //div[@role="dialog"]/div[2]/div/div/div[2]/div
${confirm_add}    //div[@class="flex justify-center w-full gap-2"]/div[1]
${cancel_confirm_add}    //div[@class="flex justify-center w-full gap-2"]/div[2]    
${close_confirm_add}    //div[@role="dialog"]/div[2]/div/div/div/button    

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

${no_data_text}    //*[@id="root"]/main//main/div[2]/div[1]/div[2]/div/div/div/div[1]/text/tspan    

${confirm_edit_title}    //div[@role="dialog"]/div[2]/div/div/div/h2
${confirm_edit_detail}    //div[@role="dialog"]/div[2]/div/div/div[2]/div
${confirm_confirm_edit_button}    //div[@class="flex justify-center w-full gap-2"]/div[1]
${confirm_edit_cancel_button}    //div[@role="dialog"]/div[2]/div/div/div[3]/div/div/div[2]
${close_confirm_edit_button}    //div[@role="dialog"]/div[2]/div/div/div/button

${confirm_delete_title}    //div[@role="dialog"]/div[2]/div/div/div/h2
${confirm_delete_text}    //div[@role="dialog"]/div[2]/div/div/div[2]/div
${confirm_delete}    //div[@class="flex justify-center w-full gap-2"]/div[1]
${cancel_confirm_delete}    //div[@class="flex justify-center w-full gap-2"]/div[2]    
${close_confirm_delete}    //div[@role="dialog"]/div[2]/div/div/div/button


${top_right_alert}    //main[@class='App${SPACE}${SPACE}relative']/div[1]/div/div/div/div[2]


*** Keywords ***

Open Vehicle Menu
    Log In Valid
    Wait Until Element Is Visible    ${hamburger_button}    20
    
    Click Element    ${hamburger_button}
    Wait Until Element Is Visible    ${data_manage_button}    20
    Click Element    ${data_manage_button}
    Wait Until Element Is Visible    ${vehicle_menu}    20
    Click Element    ${vehicle_menu}
    Wait Until Element Is Visible    ${add_new_ve_button}    20

Open Add New Vehicle Page
    Open Vehicle Menu
    Wait Until Element Is Visible    ${add_new_ve_button}    20
    Click Element    ${add_new_ve_button}
    Wait Until Element Is Visible    css:div:nth-child(1) > div > div > div > div > span > div > label    20

add_new_vehicle
    [Arguments]    ${data_status}=Active    ${data_vename}=999680    ${data_motor}=999680    ${data_brand}=MINE    ${data_model}=Benz   
    ...            ${data_gps}=999680       ${data_chassis}=999680   ${data_license}=999680  ${data_depot}=อู่แสมดำ    ${data_subline}=2-34R_อู่มีนบุรี-หนองจอก>อู่รามคำแหง 74   
    #Argument ขาด Model อยู่
    Open Add New Vehicle Page
    Click Element    ${dropdown_status_button}
    Wait Until Element Is Visible    ${field_status}//*[text()[contains(.,'${data_status}')]]    20
    Click Element     ${field_status}//*[text()[contains(.,'${data_status}')]]
    Input Text    ${field_veName}    ${data_vename}
    Input Text    ${field_motor}    ${data_motor}
    Click Element    ${drodown_model_button}
    Wait Until Element Is Visible    ${field_model}    10
    Click Element    ${field_model}//*[text()[contains(.,'${data_model}')]]
    Click Element    ${dropdown_brand_button}
    Wait Until Element Is Visible    ${field_brand}//*[text()[contains(.,'${data_brand}')]]
    Click Element    ${field_brand}//*[text()[contains(.,'${data_brand}')]]
    Input Text    ${field_gps}    ${data_gps}
    Input Text    ${field_chassis}    ${data_chassis}
    Input Text    ${field_license}    ${data_license}
    Click Element    ${drop_down_depot_button}
    Wait Until Element Is Visible    ${field_depot}//*[text()[contains(.,'${data_depot}')]]    10
    Click Element    ${field_depot}//*[text()[contains(.,'${data_depot}')]]
    Click Element    ${drop_down_subline_button}
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
    Wait Until Element Is Visible    ${first_ve_result}
    Click Element    ${first_ve_result}
    Wait Until Element Is Visible    ${edit_ve_title}    
    Wait Until Element Is Visible    ${field_veName}
    ${get_license}    Get Element Attribute    ${field_license}    value
    Should Be Equal    ${get_license}    ${correct_license}

edit_vehicle_name
    [Arguments]    ${license}=4646544    ${new_veName}=6465642
    select_vehicle    ${license}
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
    Click Element    ${first_ve_result}
    Click Element    ${delete_button}
    Click Element    ${confirm_delete_button}
    Input Text    ${search_box}    ${data_license}
    #ถ้าไม่ตั้งดีเลย์ไว้อย่างต่ำที่ 5 วิ ระบบจะแสดงแจ้งเตือนที่ข้อความไม่ทันกรณีกรอกข้อมูลผิดหรือไม่ถูกต้อง
    Sleep    5
    Wait Until Element Is Not Visible    //span[2][text()[contains(.,'${data_license}')]]

*** Test Cases ***

TC_VHC_001-หน้า Vehicle
    Open Vehicle Menu
    Wait Until Element Is Visible    ${title}
    Sleep    1
    Run Keyword And Continue On Failure    Element Text Should Be    ${title}    พาหนะ
    Run Keyword And Continue On Failure    Element Should Contain   ${total}    ทั้งหมด
    Run Keyword And Continue On Failure    Element Should Contain   ${total}    รายการ
    Run Keyword And Continue On Failure    Element Should Contain    ${active}    ใช้งาน
    Run Keyword And Continue On Failure    Element Should Contain    ${active}    รายการ
    Run Keyword And Continue On Failure    Element Should Contain    ${inactive}    ไม่มีการใช้งาน
    Run Keyword And Continue On Failure    Element Should Contain    ${inactive}    รายการ
    Run Keyword And Continue On Failure    Element Should Contain    ${maintaince}    ปิดซ่อมบำรุง
    Run Keyword And Continue On Failure    Element Should Contain    ${maintaince}    รายการ
    Run Keyword And Continue On Failure    Element Text Should Be    ${select_to_view_text}    เลือกยานพาหนะเพื่อดูข้อมูล
    Mouse Over    ${add_new_ve_button}
    Wait Until Element Is Enabled    //*[@id="tippy-1"]//*[text()="เพิ่มพาหนะ"]    

TC_VHC_002-กดปุ่ม Add New Vehicle
    Open Add New Vehicle Page
    Wait Until Element Is Visible    ${button_+add}

TC_VHC_003-กดเลือก Vehicle
    Open Vehicle Menu
    Wait Until Element Is Visible    ${first_ve_result}    20
    Click Element    ${first_ve_result}
    Wait Until Element Is Visible    ${delete_button}
    
TC_VHC_004-กรณีค้นหาข้อมูลที่มี
    ${license}    Set Variable    4646544
    Open Vehicle Menu
    Wait Until Element Is Visible    ${search_box}    20
    Input Text    ${search_box}    ${license}
    Wait Until Element Is Visible    //span[text()="${license}"]    25

TC_VHC_005-กรณีค้นหาข้อมูลที่ไม่มี
    Open Vehicle Menu
    Wait Until Element Is Visible    ${search_box}    20
    Input Text    ${search_box}    ไม่มีข้อมูล
    Wait Until Element Is Visible    ${no_data_text}    10
    Element Text Should Be    ${no_data_text}    ไม่พบข้อมูล
        
TC_VHC_006-กรณีค้นหาข้อมูลที่ไม่มีอยู่ในตาราง > กดไปเมนูอื่น > กดมาเมนู Vehicle
    Open Vehicle Menu
    Wait Until Element Is Visible    ${first_ve_result}    10
    Input Text    ${search_box}    พาหนะไม่มี
    Click Element    ${hamburger_button}
    Wait Until Element Is Visible    ${depot_menu_button}
    Click Element    ${depot_menu_button}
    Wait Until Element Is Visible    ${add_new_ve_button}
    Sleep    0.5
    Click Element    ${hamburger_button}
    Wait Until Element Is Visible    ${vehicle_menu}
    Click Element    ${vehicle_menu}
    Wait Until Element Is Visible   ${first_ve_result}    10

TC_VHC_007-หน้า Add New Vehicle
    Open Add New Vehicle Page
    Run Keyword And Continue On Failure    Element Text Should Be    ${add_new_ve_title}    เพิ่มพาหนะ
    Wait Until Element Is Visible    ${factory_data_dropdown_text}
    Run Keyword And Continue On Failure    Element Text Should Be    ${factory_data_dropdown_text}    ข้อมูลโรงงาน
    Run Keyword And Continue On Failure    Element Text Should Be    ${license_plate_dropdown_text}    ทะเบียนรถ - รับประกัน
    Run Keyword And Continue On Failure    Element Text Should Be    ${equipment_dropdown_text}    อุปกรณ์
    Run Keyword And Continue On Failure    Element Text Should Be    ${operation_data_dropdown_text}    ข้อมูลการดำเนินงาน

TC_VHC_008-Drop down Factory data
    Open Add New Vehicle Page
    Run Keyword And Continue On Failure    Element Text Should Be    ${status_label}    สถานะ *
    Run Keyword And Continue On Failure    Element Text Should Be    ${add_edit_status_placeholder}    เลือก...
    Run Keyword And Continue On Failure    Element Text Should Be    ${veName_label}    ชื่อพาหนะ *
    ${place_ve_name}    Run Keyword And Continue On Failure    Get Element Attribute    ${field_veName}    placeholder
    Run Keyword And Continue On Failure    Should Be Equal    ${place_ve_name}    ชื่อพาหนะ
    Run Keyword And Continue On Failure    Element Text Should Be    ${motor_label}    หมายเลขมอเตอร์ *
    ${place_motor}    Run Keyword And Continue On Failure    Get Element Attribute    ${field_motor}    placeholder
    Run Keyword And Continue On Failure    Should Be Equal    ${place_motor}    หมายเลขมอเตอร์
    Run Keyword And Continue On Failure    Element Text Should Be    ${model_label}    รุ่น *
    Run Keyword And Continue On Failure    Element Text Should Be    ${add_edit_model_placeholder}    เลือก...
    Run Keyword And Continue On Failure    Element Text Should Be    ${brand_label}    ยี่ห้อ *
    Run Keyword And Continue On Failure    Element Text Should Be    ${add_edit_brand_placeholder}    เลือก...
    Run Keyword And Continue On Failure    Element Text Should Be    ${gps_label}    GPS IMEI *
    ${place_GPS}    Run Keyword And Continue On Failure    Get Element Attribute    ${field_gps}    placeholder
    Run Keyword And Continue On Failure    Should Be Equal    ${place_GPS}    GPS IMEI
    Run Keyword And Continue On Failure    Element Text Should Be    ${chassis_label}    เลขตัวถังรถ *
    ${place_chassis}    Run Keyword And Continue On Failure    Get Element Attribute    ${field_chassis}    placeholder
    Run Keyword And Continue On Failure    Should Be Equal    ${place_chassis}    เลขตัวถังรถ

    #Click Element    css: span > div:nth-child(3) > div:nth-child(1) > div:nth-child(2)

TC_VHC_009-Drop down License plate - Guarantee
    Open Add New Vehicle Page
    Run Keyword And Continue On Failure    Element Text Should Be    ${license_label}    ทะเบียนรถ *
    ${place_License}    Run Keyword And Continue On Failure    Get Element Attribute    ${field_license}    placeholder
    Run Keyword And Continue On Failure    Should Be Equal    ${place_License}    ทะเบียนรถ

TC_VHC_010-Drop down Equipment
    Open Add New Vehicle Page
    Element Text Should Be    ${no_equipment_data_text}    ไม่มีข้อมูลอุปกรณ์

TC_VHC_011-Drop down Operation data
    Open Add New Vehicle Page
    Run Keyword And Continue On Failure    Element Text Should Be    ${depot_label}    อู่รถ *
    Run Keyword And Continue On Failure    Element Text Should Be    ${add_edit_depot_placeholder}    เลือก...
    Run Keyword And Continue On Failure    Element Text Should Be    ${subline_label}    สายย่อย *
    Run Keyword And Continue On Failure    Element Text Should Be    ${add_edit_subline_placeholder}    เลือก...
    Run Keyword And Continue On Failure    Element Text Should Be    ${company_label}    บริษัท *

#TC_VHC_010-กรณีค้นหาข้อมูลใน Drop down สถานะ, รุ่น, ยี่ห้อ, อู่, สายย่อย ด้วยข้อมูลที่ไม่มีอยู่ในระบบ


TC_VHC_016_017_018_019_20_21_22_23_28_31_32-กรณีเพิ่มโดยไม่กรอกข้อมูล
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

TC_VHC_024-กรณีเพิ่มโดยกรอก Vehical Name ซ้ำกับที่มีอยู่
    add_new_vehicle    data_vename=35-11
    Element Should Be Visible    ${alert_veName}
    Element Text Should Be    ${alert_veName}    ชื่อพาหนะนี้ถูกใช้งานแล้ว

TC_VHC_025-กรณีเพิ่มโดยกรอก Motor Number ซ้ำกับที่มีอยู่
    add_new_vehicle    data_motor=MCS20111214
    Element Should Be Visible    ${alert_motor}
    Element Text Should Be    ${alert_motor}    หมายเลขมอเตอร์นี้ถูกใช้งานแล้ว

TC_VHC_026-กรณีเพิ่มโดยกรอก GPS ซ้ำกับที่มีอยู่
    add_new_vehicle    data_gps=868998030639021
    Element Should Be Visible    ${alert_gps}
    Element Text Should Be    ${alert_gps}     หมายเลข GPS นี้ถูกใช้งานแล้ว

TC_VHC_027-กรณีเพิ่มโดยกรอก Chassis ซ้ำกับที่มีอยู่
    add_new_vehicle    data_chassis=MRSBCREM6MZM00008
    Element Should Be Visible    ${alert_chassis}
    Element Text Should Be    ${alert_chassis}    หมายเลขตัวถังนี้ถูกใช้งานแล้ว
TC_VHC_029-กรณีเพิ่มโดยกรอก License ซ้ำกับที่มีอยู่
    add_new_vehicle    data_license=16-5841
    
    Element Should Be Visible    ${alert_license}
    Element Text Should Be    ${alert_license}    หมายเลขทะเบียนนี้ถูกใช้งานแล้ว


TC_VHC_034-กรณีเพิ่มโดยกรอก Vehical Name 2 ตัวอักษร
    add_new_vehicle    data_vename=QA
    Element Text Should Be    ${alert_veName}    ต้องมีอักขระ 3 ถึง 20 ตัว

TC_VHC_036_037_038_039_040_041_042_043_044_045-ตรวจสอบจำนวนตัวอักษรสูงสุดกรณีเพิ่ม Vehical Name, Motot No, GPS IMEI, Chassis No, License plate
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
TC_VHC_046_047-หน้าต่างยืนยันการ Add
    add_new_vehicle    data_vename=999681
    Sleep    1
    Wait Until Element Is Visible    ${confirm_add}
    Run Keyword And Continue On Failure    Element Text Should Be    ${confirm_add_edit_title}    เพิ่มพาหนะ
    Run Keyword And Continue On Failure    Element Text Should Be    ${confirm_add_edit_text}    คุณยืนยันที่จะเพิ่มพาหนะใช่หรือไม่?
    Run Keyword And Continue On Failure    Element Text Should Be    ${confirm_add}    ยืนยัน
    Run Keyword And Continue On Failure    Element Text Should Be    ${cancel_confirm_add}    ยกเลิก
    Wait Until Element Is Visible   ${close_confirm_add}

TC_VHC_048-กรณีเพิ่มโดยกรอกข้อมูลครบถ้วนและถูกต้อง
    #ใส่ข้อมูลทั้งหมดทีต้องการเพิ่มถ้าไม่ใส่จะ Dafault ให้ใน Function add_new_vehicle
    
    ${data_status}    Set Variable    Active
    ${data_vename}    Set Variable    999680
    ${data_motor}    Set Variable    999680
    ${data_model}    Set Variable    Benz
    ${data_brand}    Set Variable    MINE
    ${data_gps}    Set Variable    999680
    ${data_chassis}    Set Variable    999680
    ${data_license}    Set Variable    999680
    ${data_depot}    Set Variable    อู่แสมดำ
    ${data_subline}    Set Variable    2-34R_อู่มีนบุรี-หนองจอก>อู่รามคำแหง 74

    add_new_vehicle    data_status=${data_status}    data_vename=${data_vename}    data_motor=${data_motor}
    ...                data_brand=${data_brand}      data_model=${data_model}      data_gps=${data_gps}     
    ...                data_chassis=${data_chassis}  data_license=${data_license}  data_depot=${data_depot}  
    ...                data_subline=${data_subline}

    Sleep    1
    Click Element    ${confirm_add}
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    ${top_right_alert}
    Run Keyword And Continue On Failure    Element Text Should Be    ${top_right_alert}    เพิ่มพาหนะสำเร็จ

    #Step นี้จะเช็คว่าข้อมูลที่เพิ่มปรากฎในรายการไหม
    Input Text    ${search_box}    ${data_license}
    Wait Until Element Is Visible    //span[text()[contains(.,${data_license})]]    20
    Sleep    2
    #คำสั่งกดที่ผลลัพธ์ตัวแรกที่ค้นหาาเจอ
    Wait Until Element Is Visible    ${first_ve_result}
    Click Element    ${first_ve_result}
    Wait Until Element Is Visible    ${field_veName}
    ${get_license}    Get Element Attribute    ${field_license}    value
    Should Be Equal    ${get_license}    ${data_license}
    Element Text Should Be    //div[@class="mb-3"][1]/div/div/div/div/span/div[1]/div[1]/div/div[1]/div[1]    ${data_status}
    ${check_vename}    Get Element Attribute    ${field_veName}    value 
    Should Be Equal    ${check_vename}    ${data_vename}
    # motor number เป็น case เดียวที่เช็คค่าในช่องไม่ได้
    Element Text Should Be    //div[@class="mb-3"][1]//span/div[3]/div[1]/div[1]/div/div[1]/div[1]    ${data_model}
    ${check_GPS}    Get Element Attribute    ${field_gps}    value 
    Should Be Equal    ${check_GPS}    ${data_GPS}
    ${check_chassis}    Get Element Attribute    ${field_chassis}    value 
    Should Be Equal    ${check_chassis}    ${data_chassis}
    Element Text Should Be    //div[@class="mb-3"][4]//span/div[1]/div/div/div[1]/div[1]    ${data_depot}
    Element Text Should Be    //div[@class="mb-3"][4]//span/div[2]/div[1]/div[1]/div/div[1]/div[1]    ${data_subline}
    #ตัวที่สร้างใหม่จะไปลบออกตอน case delete

TC_VHC_050-หน้าต่างยืนยันการ Add กรณีกดปุ่ม Cancel
    add_new_vehicle
    Wait Until Element Is Visible    ${confirm_add}
    Click Element    ${cancel_confirm_add}
    Wait Until Element Is Not Visible    ${cancel_confirm_add}
    Wait Until Element Is Visible    ${title}

TC_VHC_051-หน้าต่างยืนยันการ Add กรณีกดปุ่ม x
    add_new_vehicle
    Wait Until Element Is Visible    ${confirm_add}
    Click Element    ${close_confirm_add}
    Wait Until Element Is Not Visible    ${close_confirm_add}
    Wait Until Element Is Visible    ${title}

TC_VHC_053-หน้ารายละเอียด Vehicle
    Run Keyword And Continue On Failure    select_vehicle    4646544
    Run Keyword And Continue On Failure    Element Text Should Be    ${edit_ve_title}    พาหนะ
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

TC_VHC_058_059_060_061-กรณีกดปุ่ม Edit
    select_vehicle
    Element Should Be Disabled    //div[@class="mb-3"][1]/div/div/div/div/span/div[1]/div[1]/div[1]/div/div/input
    Element Should Be Disabled    ${field_veName}
    Element Should Be Disabled     ${field_motor}
    Element Should Be Disabled     //div[@class="mb-3"][1]//span/div[3]/div[1]/div[1]/div/div/div/Input
    Element Should Be Disabled     //div[@class="mb-3"][1]//span/div[3]/div[2]/div[1]/div/div/div/Input
    Element Should Be Disabled     ${field_gps}
    Element Should Be Disabled     ${field_chassis}
    Element Should Be Disabled     ${field_license}
    Element Should Be Disabled    //div[@class="mb-3"][4]/div/div/div/div[1]/span/div[1]/div//input
    Click Element    ${factory_edit_button}
    Run Keyword And Continue On Failure    Wait Until Element Is Not Visible    //*[@class="mb-3"][1]/div/div/div/div[2]/span/div/div[@class="m-0"]
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    //*[@class="mb-3"][1]/div/div/div/div[2]/span/div/div[@class="custom-tippy"][1]
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    //*[@class="mb-3"][1]/div/div/div/div[2]/span/div/div[@class="custom-tippy"][2]
    Run Keyword And Continue On Failure    Element Should Be Disabled    //*[@class="mb-3"][1]/div/div/div/div[2]/span/div/div[@class="custom-tippy"][1]/button
    Click Element    ${license_edit_button}
    Run Keyword And Continue On Failure    Wait Until Element Is Not Visible    //*[@class="mb-3"][2]/div/div/div/div[2]/span/div/div[@class="m-0"]
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    //*[@class="mb-3"][2]/div/div/div/div[2]/span/div/div[@class="custom-tippy"][1]
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    //*[@class="mb-3"][2]/div/div/div/div[2]/span/div/div[@class="custom-tippy"][2]
    Run Keyword And Continue On Failure    Element Should Be Disabled    //*[@class="mb-3"][2]/div/div/div/div[2]/span/div/div[@class="custom-tippy"][1]/button
    Click Element    ${operation_edit_button}
    Run Keyword And Continue On Failure    Wait Until Element Is Not Visible    //*[@class="mb-3"][4]/div/div/div/div[2]/span/div/div[@class="m-0"]
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    //*[@class="mb-3"][4]/div/div/div/div[2]/span/div/div[@class="custom-tippy"][1]
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    //*[@class="mb-3"][4]/div/div/div/div[2]/span/div/div[@class="custom-tippy"][2]
    Run Keyword And Continue On Failure    Element Should Be Disabled    //*[@class="mb-3"][4]/div/div/div/div[2]/span/div/div[@class="custom-tippy"][1]/button
    Element Should Be Enabled    //div[@class="mb-3"][1]/div/div/div/div/span/div[1]/div[1]/div[1]/div/div/input
    Element Should Be Enabled    ${field_veName}
    Element Should Be Enabled     ${field_motor}
    Element Should Be Enabled     //div[@class="mb-3"][1]//span/div[3]/div[1]/div[1]/div/div/div/Input
    Element Should Be Enabled    //div[@class="mb-3"][1]//span/div[3]/div[2]/div[1]/div/div/div/Input
    Element Should Be Enabled     ${field_gps}
    Element Should Be Enabled     ${field_chassis}
    Element Should Be Enabled     ${field_license}
    Element Should Be Enabled    //div[@class="mb-3"][4]/div/div/div/div[1]/span/div[1]/div//input

TC_VHC_062_063_064_065-ปุ่ม Save กรณีมีการแก้ไขข้อมูล
    select_vehicle
    Click Element    ${factory_edit_button}
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    //*[@class="mb-3"][1]/div/div/div/div[2]/span/div/div[@class="custom-tippy"][1]
    Run Keyword And Continue On Failure    Element Should Be Disabled    ${factory_save_button}
    Click Element    ${license_edit_button}
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    //*[@class="mb-3"][2]/div/div/div/div[2]/span/div/div[@class="custom-tippy"][1]
    Run Keyword And Continue On Failure    Element Should Be Disabled    ${license_save_button}
    Click Element    ${operation_edit_button}
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    //*[@class="mb-3"][4]/div/div/div/div[2]/span/div/div[@class="custom-tippy"][1]
    Run Keyword And Continue On Failure    Element Should Be Disabled    ${operation_save_button}
    Input Text    ${field_veName}    TestVehicleName
    Input Text    ${field_license}    TestLicense
    Click Element    ${drop_down_depot_button}
    Wait Until Element Is Visible    ${field_depot}//*[text()[contains(.,'อู่เคหะธนบุรี')]]    10
    Click Element    ${field_depot}//*[text()[contains(.,'อู่เคหะธนบุรี')]]
    Click Element    ${drop_down_subline_button}
    Element Text Should Not Be    ${field_subline}//*    No options
    Click Element    //div[@class="mb-3"][4]//span/div[2]/div[1]/div[1]/div//*[text()="3-53_อู่รามคำแหง 74"]

    Run Keyword And Continue On Failure    Element Should Be Enabled    ${operation_save_button}
    Run Keyword And Continue On Failure    Element Should Be Enabled    ${license_save_button}
    Run Keyword And Continue On Failure    Element Should Be Enabled    ${factory_save_button}

TC_VHC_067-กรณีกดปุ่ม Cancel ส่วน Factory Data
    #จะดึงข้อมูลเดิมมาเก็บไว้ก่อนแล้วแก้ไขข้อมูล และ Cancel เรียงไป 3 case และดูช่องทั้งหมดว่าข้อมูลยังเป็นค่าเดิม หรือ หายไปไหม
    #เช็ค Motor Number ไม่ได้
    #ยังไม่เขียน Case License
    select_vehicle

    Click Element    ${factory_edit_button}
    Click Element    ${license_edit_button}
    Click Element    ${operation_edit_button}
    
    ${check_vename}    Get Element Attribute    ${field_veName}    value
    ${check_status}    Get Text    //div[@class="mb-3"][1]/div/div/div/div/span/div[1]/div[1]/div/div[1]/div[1]
    ${check_model}    Get Text    //div[@class="mb-3"][1]//span/div[3]/div[1]/div[1]/div/div[1]/div[1]
    ${check_brand}    Get Text    //div[@class="mb-3"][1]//span/div[3]/div[2]/div[1]/div/div[1]/div[1]
    ${check_GPS}    Get Element Attribute    ${field_gps}    value 
    ${check_chassis}    Get Element Attribute    ${field_chassis}    value 
    ${check_license}    Get Element Attribute    ${field_license}    value
    ${check_depot}    Get Text    //div[@class="mb-3"][4]//span/div[1]/div/div/div[1]/div[1]
    ${check_subline}    Get Text    //div[@class="mb-3"][4]//span/div[2]/div[1]/div[1]/div/div[1]/div[1]
    ${check_company}    Get Element Attribute    //div[@class="mb-3"][4]//span/div[2]/div[2]/div/div/input    value

    #ส่วนนี้จะเปลี่ยนข้อมูลเดิมก่อนที่จะทำการกด Cancel โดยจะเปลี่ยนข้อมูลโดยใช้ข้อมูลเดิมและเติม 1 ด้าน
    # Click Element    ${dropdown_status_button}
    # Wait Until Element Is Visible    ${field_status}//*[text()[contains(.,'Active')]]    10
    # Click Element     ${field_status}//*[text()[contains(.,'Active')]] 
    # Input Text    ${field_veName}    ${check_vename}1
    # Input Text    ${field_gps}    ${check_GPS}1
    # Input Text    ${field_chassis}    ${check_chassis}1
    # Click Element    ${drodown_model_button}    
    # Wait Until Element Is Visible    ${field_model}    10
    # Click Element    ${field_model}//*[text()[contains(.,'scania')]]
    # Click Element    ${dropdown_brand_button}
    # Click Element    ${field_brand}//*[text()[contains(.,'BENZ')]]
    # Input Text    ${field_license}    ${check_license}
    # Click Element    ${drop_down_depot_button}
    # Wait Until Element Is Visible    ${field_depot}//*[text()[contains(.,'อู่บึงกุ่ม')]]    10
    # Click Element    ${field_depot}//*[text()[contains(.,'อู่บึงกุ่ม')]]
    # Click Element    ${drop_down_subline_button}
    # Element Text Should Not Be    ${field_subline}//*    No options
    # Click Element    //div[@class="mb-3"][4]//span/div[2]/div[1]/div[1]/div//*[text()="3-3(11)_อู่รามคำแหง 2"]
   
    Click Element    ${factory_cancel_button}
    Element Should Be Disabled    //div[@class="mb-3"][1]/div/div/div/div/span/div[1]/div[1]/div[1]/div/div/input
    Element Should Be Disabled    ${field_veName}
    Element Should Be Disabled     ${field_motor}
    Element Should Be Disabled     //div[@class="mb-3"][1]//span/div[3]/div[1]/div[1]/div/div/div/Input
    Element Should Be Disabled     //div[@class="mb-3"][1]//span/div[3]/div[2]/div[1]/div/div/div/Input
    Element Should Be Disabled     ${field_gps}
    Element Should Be Disabled     ${field_chassis}
    #Element Should Be Disabled     ${field_license}
    #Element Should Be Disabled    //div[@class="mb-3"][4]/div/div/div/div[1]/span/div[1]/div//input


    Wait Until Element Is Not Visible    //*[@class="mb-3"][1]/div/div/div/div[2]/span/div/div[@class="custom-tippy"][1]
    Wait Until Element Is Not Visible    //*[@class="mb-3"][1]/div/div/div/div[2]/span/div/div[@class="custom-tippy"][2]
    Wait Until Element Is Visible    //*[@class="mb-3"][1]/div/div/div/div[2]/span/div/div[@class="m-0"]
    ${vename_after_cancel}    Get Element Attribute    ${field_veName}    value
    ${status_after_cancel}    Get Text    //div[@class="mb-3"][1]/div/div/div/div/span/div[1]/div[1]/div/div[1]/div[1]
    ${model_after_cancel}    Get Text    //div[@class="mb-3"][1]//span/div[3]/div[1]/div[1]/div/div[1]/div[1]
    ${brand_after_cancel}    Get Text    //div[@class="mb-3"][1]//span/div[3]/div[2]/div[1]/div/div[1]/div[1]
    ${GPS_after_cancel}    Get Element Attribute    ${field_gps}    value
    ${chassisS_after_cancel}    Get Element Attribute    ${field_chassis}    value 
    ${license_after_cancel}    Get Element Attribute    ${field_license}    value
    ${depot_after_cancel}    Get Text    //div[@class="mb-3"][4]//span/div[1]/div/div/div[1]/div[1]
    ${subline_after_cancel}    Get Text    //div[@class="mb-3"][4]//span/div[2]/div[1]/div[1]/div/div[1]/div[1]
    ${company_after_cancel}    Get Element Attribute    //div[@class="mb-3"][4]//span/div[2]/div[2]/div/div/input    value
    Run Keyword And Continue On Failure    Should Be Equal    ${check_vename}    ${vename_after_cancel}
    Run Keyword And Continue On Failure    Should Be Equal    ${check_status}    ${status_after_cancel}
    Run Keyword And Continue On Failure    Should Be Equal    ${check_model}    ${model_after_cancel}
    Run Keyword And Continue On Failure    Should Be Equal    ${check_brand}    ${brand_after_cancel}
    Run Keyword And Continue On Failure    Should Be Equal    ${check_GPS}    ${GPS_after_cancel}
    Run Keyword And Continue On Failure    Should Be Equal    ${check_chassis}    ${chassisS_after_cancel}
    Run Keyword And Continue On Failure    Should Be Equal    ${check_license}    ${license_after_cancel}
    Run Keyword And Continue On Failure    Should Be Equal    ${check_depot}    ${depot_after_cancel}
    Run Keyword And Continue On Failure    Should Be Equal    ${check_subline}    ${subline_after_cancel}
    Run Keyword And Continue On Failure    Should Be Equal    ${check_company}    ${company_after_cancel}
    
#กด Cancel เวลาไม่แก้ข้อมูลบางช่องจะข้อมูลหาย
#กด Cancel เวลามีการแก้ข้อมูลส่วนอื่นที่ไม่เกี่ยวบางช่องโดนเปลี่ยนค่ากลับ

TC_VHC_068-กรณีกดปุ่ม Cancel ส่วน License
    #จะดึงข้อมูลเดิมมาเก็บไว้ก่อนแล้วแก้ไขข้อมูล และ Cancel เรียงไป 3 case และดูช่องทั้งหมดว่าข้อมูลยังเป็นค่าเดิม หรือ หายไปไหม
    #เช็ค Motor Number ไม่ได้
    #ยังไม่เขียน Case License
    select_vehicle
    Click Element    ${factory_edit_button}
    Click Element    ${license_edit_button}
    Click Element    ${operation_edit_button}
    ${check_vename}    Get Element Attribute    ${field_veName}    value
    ${check_status}    Get Text    //div[@class="mb-3"][1]/div/div/div/div/span/div[1]/div[1]/div/div[1]/div[1]
    ${check_model}    Get Text    //div[@class="mb-3"][1]//span/div[3]/div[1]/div[1]/div/div[1]/div[1]
    ${check_brand}    Get Text    //div[@class="mb-3"][1]//span/div[3]/div[2]/div[1]/div/div[1]/div[1]
    ${check_GPS}    Get Element Attribute    ${field_gps}    value 
    ${check_chassis}    Get Element Attribute    ${field_chassis}    value 
    ${check_license}    Get Element Attribute    ${field_license}    value
    ${check_depot}    Get Text    //div[@class="mb-3"][4]//span/div[1]/div/div/div[1]/div[1]
    ${check_subline}    Get Text    //div[@class="mb-3"][4]//span/div[2]/div[1]/div[1]/div/div[1]/div[1]
    ${check_company}    Get Element Attribute    //div[@class="mb-3"][4]//span/div[2]/div[2]/div/div/input    value

    #ส่วนนี้จะเปลี่ยนข้อมูลเดิมก่อนที่จะทำการกด Cancel โดยจะเปลี่ยนข้อมูลโดยใช้ข้อมูลเดิมและเติม 1 ด้าน
    # Click Element    ${dropdown_status_button}
    # Wait Until Element Is Visible    ${field_status}//*[text()[contains(.,'Active')]]    10
    # Click Element     ${field_status}//*[text()[contains(.,'Active')]] 
    # Input Text    ${field_veName}    ${check_vename}1
    # Input Text    ${field_gps}    ${check_GPS}1
    # Input Text    ${field_chassis}    ${check_chassis}1
    # Click Element    ${drodown_model_button}    
    # Wait Until Element Is Visible    ${field_model}    10
    # Click Element    ${field_model}//*[text()[contains(.,'scania')]]
    # Click Element    ${dropdown_brand_button}
    # Click Element    ${field_brand}//*[text()[contains(.,'BENZ')]]
    # Input Text    ${field_license}    ${check_license}
    # Click Element    ${drop_down_depot_button}
    # Wait Until Element Is Visible    ${field_depot}//*[text()[contains(.,'อู่บึงกุ่ม')]]    10
    # Click Element    ${field_depot}//*[text()[contains(.,'อู่บึงกุ่ม')]]
    # Click Element    ${drop_down_subline_button}
    # Element Text Should Not Be    ${field_subline}//*    No options
    # Click Element    //div[@class="mb-3"][4]//span/div[2]/div[1]/div[1]/div//*[text()="3-3(11)_อู่รามคำแหง 2"]
    # Click Element    ${license_cancel_button}

    Click Element    ${license_cancel_button}
    # Element Should Be Disabled    //div[@class="mb-3"][1]/div/div/div/div/span/div[1]/div[1]/div[1]/div/div/input
    # Element Should Be Disabled    ${field_veName}
    # Element Should Be Disabled     ${field_motor}
    # Element Should Be Disabled     //div[@class="mb-3"][1]//span/div[3]/div[1]/div[1]/div/div/div/Input
    # Element Should Be Disabled     //div[@class="mb-3"][1]//span/div[3]/div[2]/div[1]/div/div/div/Input
    # Element Should Be Disabled     ${field_gps}
    # Element Should Be Disabled     ${field_chassis}
    Element Should Be Disabled     ${field_license}
    #Element Should Be Disabled    //div[@class="mb-3"][4]/div/div/div/div[1]/span/div[1]/div//input
    Wait Until Element Is Not Visible    //*[@class="mb-3"][2]/div/div/div/div[2]/span/div/div[@class="custom-tippy"][1]
    Wait Until Element Is Not Visible    //*[@class="mb-3"][2]/div/div/div/div[2]/span/div/div[@class="custom-tippy"][2]
    Wait Until Element Is Visible    //*[@class="mb-3"][2]/div/div/div/div[2]/span/div/div[@class="m-0"]
    ${vename_after_cancel}    Get Element Attribute    ${field_veName}    value
    ${status_after_cancel}    Get Text    //div[@class="mb-3"][1]/div/div/div/div/span/div[1]/div[1]/div/div[1]/div[1]
    ${model_after_cancel}    Get Text    //div[@class="mb-3"][1]//span/div[3]/div[1]/div[1]/div/div[1]/div[1]
    ${brand_after_cancel}    Get Text    //div[@class="mb-3"][1]//span/div[3]/div[2]/div[1]/div/div[1]/div[1]
    ${GPS_after_cancel}    Get Element Attribute    ${field_gps}    value
    ${chassisS_after_cancel}    Get Element Attribute    ${field_chassis}    value 
    ${license_after_cancel}    Get Element Attribute    ${field_license}    value
    ${depot_after_cancel}    Get Text    //div[@class="mb-3"][4]//span/div[1]/div/div/div[1]/div[1]
    ${subline_after_cancel}    Get Text    //div[@class="mb-3"][4]//span/div[2]/div[1]/div[1]/div/div[1]/div[1]
    ${company_after_cancel}    Get Element Attribute    //div[@class="mb-3"][4]//span/div[2]/div[2]/div/div/input    value
    Run Keyword And Continue On Failure    Should Be Equal    ${check_vename}    ${vename_after_cancel}
    Run Keyword And Continue On Failure    Should Be Equal    ${check_status}    ${status_after_cancel}
    Run Keyword And Continue On Failure    Should Be Equal    ${check_model}    ${model_after_cancel}
    Run Keyword And Continue On Failure    Should Be Equal    ${check_brand}    ${brand_after_cancel}
    Run Keyword And Continue On Failure    Should Be Equal    ${check_GPS}    ${GPS_after_cancel}
    Run Keyword And Continue On Failure    Should Be Equal    ${check_chassis}    ${chassisS_after_cancel}
    Run Keyword And Continue On Failure    Should Be Equal    ${check_license}    ${license_after_cancel}
    Run Keyword And Continue On Failure    Should Be Equal    ${check_depot}    ${depot_after_cancel}
    Run Keyword And Continue On Failure    Should Be Equal    ${check_subline}    ${subline_after_cancel}
    Run Keyword And Continue On Failure    Should Be Equal    ${check_company}    ${company_after_cancel}

#กด Cancel เวลาไม่แก้ข้อมูลบางช่องจะข้อมูลหาย
#กด Cancel เวลามีการแก้ข้อมูลส่วนอื่นที่ไม่เกี่ยวบางช่องโดนเปลี่ยนค่ากลับ

TC_VHC_070-กรณีกดปุ่ม Cancel ส่วน Operation Data
    #จะดึงข้อมูลเดิมมาเก็บไว้ก่อนแล้วแก้ไขข้อมูล และ Cancel เรียงไป 3 case และดูช่องทั้งหมดว่าข้อมูลยังเป็นค่าเดิม หรือ หายไปไหม
    #เช็ค Motor Number ไม่ได้
    #ยังไม่เขียน Case License
    select_vehicle
    Click Element    ${factory_edit_button}
    Click Element    ${license_edit_button}
    Click Element    ${operation_edit_button}
    ${check_vename}    Get Element Attribute    ${field_veName}    value
    ${check_status}    Get Text    //div[@class="mb-3"][1]/div/div/div/div/span/div[1]/div[1]/div/div[1]/div[1]
    ${check_model}    Get Text    //div[@class="mb-3"][1]//span/div[3]/div[1]/div[1]/div/div[1]/div[1]
    ${check_brand}    Get Text    //div[@class="mb-3"][1]//span/div[3]/div[2]/div[1]/div/div[1]/div[1]
    ${check_GPS}    Get Element Attribute    ${field_gps}    value 
    ${check_chassis}    Get Element Attribute    ${field_chassis}    value 
    ${check_license}    Get Element Attribute    ${field_license}    value
    ${check_depot}    Get Text    //div[@class="mb-3"][4]//span/div[1]/div/div/div[1]/div[1]
    ${check_subline}    Get Text    //div[@class="mb-3"][4]//span/div[2]/div[1]/div[1]/div/div[1]/div[1]
    ${check_company}    Get Element Attribute    //div[@class="mb-3"][4]//span/div[2]/div[2]/div/div/input    value

    #ส่วนนี้จะเปลี่ยนข้อมูลเดิมก่อนที่จะทำการกด Cancel โดยจะเปลี่ยนข้อมูลโดยใช้ข้อมูลเดิมและเติม 1 ด้าน
    # Click Element    ${dropdown_status_button}
    # Wait Until Element Is Visible    ${field_status}//*[text()[contains(.,'Active')]]    10
    # Click Element     ${field_status}//*[text()[contains(.,'Active')]] 
    # Input Text    ${field_veName}    ${check_vename}1
    # Input Text    ${field_gps}    ${check_GPS}1
    # Input Text    ${field_chassis}    ${check_chassis}1
    # Click Element    ${drodown_model_button}    
    # Wait Until Element Is Visible    ${field_model}    10
    # Click Element    ${field_model}//*[text()[contains(.,'scania')]]
    # Click Element    ${dropdown_brand_button}
    # Click Element    ${field_brand}//*[text()[contains(.,'BENZ')]]
    # Input Text    ${field_license}    ${check_license}
    # Click Element    ${drop_down_depot_button}
    # Wait Until Element Is Visible    ${field_depot}//*[text()[contains(.,'อู่บึงกุ่ม')]]    10
    # Click Element    ${field_depot}//*[text()[contains(.,'อู่บึงกุ่ม')]]
    # Click Element    ${drop_down_subline_button}
    # Element Text Should Not Be    ${field_subline}//*    No options
    # Click Element    //div[@class="mb-3"][4]//span/div[2]/div[1]/div[1]/div//*[text()="3-3(11)_อู่รามคำแหง 2"]


    Click Element    ${operation_cancel_button}
    # Element Should Be Disabled    //div[@class="mb-3"][1]/div/div/div/div/span/div[1]/div[1]/div[1]/div/div/input
    # Element Should Be Disabled    ${field_veName}
    # Element Should Be Disabled     ${field_motor}
    # Element Should Be Disabled     //div[@class="mb-3"][1]//span/div[3]/div[1]/div[1]/div/div/div/Input
    # Element Should Be Disabled     //div[@class="mb-3"][1]//span/div[3]/div[2]/div[1]/div/div/div/Input
    # Element Should Be Disabled     ${field_gps}
    # Element Should Be Disabled     ${field_chassis}
    #Element Should Be Disabled     ${field_license}
    Element Should Be Disabled    //div[@class="mb-3"][4]/div/div/div/div[1]/span/div[1]/div//input

    Wait Until Element Is Not Visible    //*[@class="mb-3"][4]/div/div/div/div[2]/span/div/div[@class="custom-tippy"][1]
    Wait Until Element Is Not Visible    //*[@class="mb-3"][4]/div/div/div/div[2]/span/div/div[@class="custom-tippy"][2]
    Wait Until Element Is Visible    //*[@class="mb-3"][4]/div/div/div/div[2]/span/div/div[@class="m-0"]
    ${vename_after_cancel}    Get Element Attribute    ${field_veName}    value
    ${status_after_cancel}    Get Text    //div[@class="mb-3"][1]/div/div/div/div/span/div[1]/div[1]/div/div[1]/div[1]
    ${model_after_cancel}    Get Text    //div[@class="mb-3"][1]//span/div[3]/div[1]/div[1]/div/div[1]/div[1]
    ${brand_after_cancel}    Get Text    //div[@class="mb-3"][1]//span/div[3]/div[2]/div[1]/div/div[1]/div[1]
    ${GPS_after_cancel}    Get Element Attribute    ${field_gps}    value
    ${chassisS_after_cancel}    Get Element Attribute    ${field_chassis}    value 
    ${license_after_cancel}    Get Element Attribute    ${field_license}    value
    ${depot_after_cancel}    Get Text    //div[@class="mb-3"][4]//span/div[1]/div/div/div[1]/div[1]
    ${subline_after_cancel}    Get Text    //div[@class="mb-3"][4]//span/div[2]/div[1]/div[1]/div/div[1]/div[1]
    ${company_after_cancel}    Get Element Attribute    //div[@class="mb-3"][4]//span/div[2]/div[2]/div/div/input    value
    Run Keyword And Continue On Failure    Should Be Equal    ${check_vename}    ${vename_after_cancel}
    Run Keyword And Continue On Failure    Should Be Equal    ${check_status}    ${status_after_cancel}
    Run Keyword And Continue On Failure    Should Be Equal    ${check_model}    ${model_after_cancel}
    Run Keyword And Continue On Failure    Should Be Equal    ${check_brand}    ${brand_after_cancel}
    Run Keyword And Continue On Failure    Should Be Equal    ${check_GPS}    ${GPS_after_cancel}
    Run Keyword And Continue On Failure    Should Be Equal    ${check_chassis}    ${chassisS_after_cancel}
    Run Keyword And Continue On Failure    Should Be Equal    ${check_license}    ${license_after_cancel}
    Run Keyword And Continue On Failure    Should Be Equal    ${check_depot}    ${depot_after_cancel}
    Run Keyword And Continue On Failure    Should Be Equal    ${check_subline}    ${subline_after_cancel}
    Run Keyword And Continue On Failure    Should Be Equal    ${check_company}    ${company_after_cancel}

#กด Cancel เวลาไม่แก้ข้อมูลบางช่องจะข้อมูลหาย
#กด Cancel เวลามีการแก้ข้อมูลส่วนอื่นที่ไม่เกี่ยวบางช่องโดนเปลี่ยนค่ากลับ

TC_VHC_082-หน้าต่างยืนยันการแก้ไข
    edit_vehicle_name
    Click Element    ${confirm_edit_button}
    Sleep    1
    Run Keyword And Continue On Failure    Element Text Should Be    ${confirm_edit_title}    แก้ไขพาหนะ
    Run Keyword And Continue On Failure    Element Text Should Be    ${confirm_edit_detail}    คุณยืนยันที่จะแก้ไขพาหนะใช่หรือไม่?
    Run Keyword And Continue On Failure    Element Text Should Be    ${confirm_confirm_edit_button}    ยืนยัน 
    Run Keyword And Continue On Failure    Element Text Should Be    ${confirm_edit_cancel_button}    ยกเลิก
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    ${close_confirm_edit_button}

TC_VHC_083.1-กรณี Edit vehicle name
    ${new_vename}    Set Variable    6465642
    ${old_vename}    Set Variable    64656429
    ${license}    Set Variable    4646544
    edit_vehicle_name    ${license}    new_veName=${new_vename}
    Click Element    ${confirm_edit_button}
    Click Element    ${confirm_confirm_edit_button}
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    ${top_right_alert}
    Run Keyword And Continue On Failure    Element Text Should Be    ${top_right_alert}    อัปเดตพาหนะสำเร็จ 
    ${check_vename}    Get Element Attribute    ${field_veName}    value 
    Should Be Equal    ${check_vename}    ${new_vename}
    Sleep    3
    Close Browser


    #ส่วนนี้จะแก้ไขข้อมูลกลับมาเป็นค่าเดิม
    select_vehicle    ${license}
    ${check_vename}    Get Element Attribute    ${field_veName}    value 
    #คำสั่งนี้จะเช็คว่าค่าที่เปลี่ยนยังแสดงถูกต้องอยู่ไหม
    Should Be Equal    ${check_vename}    ${new_vename}
    Click Element    ${factory_edit_button}
    Input Text    ${field_veName}    ${old_veName}
    Click Element    ${factory_save_button}
    Click Element    ${factory_save_button}
    Click Element    ${confirm_edit_button}
    Click Element    ${confirm_confirm_edit_button}
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    ${top_right_alert}
    Run Keyword And Continue On Failure    Element Text Should Be    ${top_right_alert}    อัปเดตพาหนะสำเร็จ
    ${check_vename}    Get Element Attribute    ${field_veName}    value 
    Should Be Equal    ${check_vename}    ${old_vename}
    Sleep    3 
    


TC_VHC_083.2-กรณี Edit status
    ${license}    Set Variable    4646544
    ${new_status}    Set Variable    Active
    ${old_status}    Set Variable    InActive
    #${status}    Set Variable    InActive            
    select_vehicle    ${license}
    Click Element    ${factory_edit_button}
    Click Element    ${dropdown_status_button}
    Wait Until Element Is Visible    ${field_status}//*[text()[contains(.,'${new_status}')]]    10
    Click Element     ${field_status}//*[text()[contains(.,'${new_status}')]]    
    Click Element    ${factory_save_button}
    Click Element    ${confirm_edit_button}
    Click Element    ${confirm_confirm_edit_button}
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    ${top_right_alert}
    Run Keyword And Continue On Failure    Element Text Should Be    ${top_right_alert}    อัปเดตพาหนะสำเร็จ 
    Element Text Should Be    //div[@class="mb-3"][1]/div/div/div/div/span/div[1]/div[1]/div/div[1]/div[1]    ${new_status}
    Sleep    3
    Close Browser

    #ส่วนนี้จะแก้ไขข้อมูลกลับมาเป็นค่าเดิม
    select_vehicle    ${license}
    Click Element    ${factory_edit_button}
    #คำสั่งนี้จะเช็คว่าค่าที่เปลี่ยนยังแสดงถูกต้องอยู่ไหม
    Element Text Should Be    //div[@class="mb-3"][1]/div/div/div/div/span/div[1]/div[1]/div/div[1]/div[1]    ${new_status}
    Click Element    ${dropdown_status_button}
    Wait Until Element Is Visible    ${field_status}//*[text()[contains(.,'${old_status}')]]    10
    Click Element     ${field_status}//*[text()[contains(.,'${old_status}')]]    
    Click Element    ${factory_save_button}
    Click Element    ${confirm_edit_button}
    Click Element    ${confirm_confirm_edit_button}
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    ${top_right_alert}
    Run Keyword And Continue On Failure    Element Text Should Be    ${top_right_alert}    อัปเดตพาหนะสำเร็จ 
    Element Text Should Be    //div[@class="mb-3"][1]/div/div/div/div/span/div[1]/div[1]/div/div[1]/div[1]    ${old_status}
    Sleep    3
    Close Browser



TC_VHC_083.3-กรณี Edit motor number
    # motor number เป็น case เดียวที่เช็คค่าในช่องไม่ได้
    ${license}    Set Variable    4646544
    ${new_motor_number}    Set Variable    6654633        
    ${old_motor_number}    Set Variable    66546339    
    select_vehicle    ${license}
    Click Element    ${factory_edit_button}
    Input Text    ${field_motor}    ${new_motor_number} 
    Click Element    ${factory_save_button}
    Click Element    ${factory_save_button}
    Click Element    ${confirm_edit_button}
    Click Element    ${confirm_confirm_edit_button}
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    ${top_right_alert}
    Run Keyword And Continue On Failure    Element Text Should Be    ${top_right_alert}    อัปเดตพาหนะสำเร็จ     
    #Element Text Should Be    ${field_motor}    ${motor_number} เช็คไม่ได้เพราะ Element ไม่มีค่าให้เช็ค
    Sleep    3
    Close Browser

    #ส่วนนี้จะแก้ไขข้อมูลกลับมาเป็นค่าเดิม
    select_vehicle    ${license}
    Click Element    ${factory_edit_button}
    Input Text    ${field_motor}    ${old_motor_number} 
    Click Element    ${factory_save_button}
    Click Element    ${factory_save_button}
    Click Element    ${confirm_edit_button}
    Click Element    ${confirm_confirm_edit_button}
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    ${top_right_alert}
    Run Keyword And Continue On Failure    Element Text Should Be    ${top_right_alert}    อัปเดตพาหนะสำเร็จ     
    #Element Text Should Be    ${field_motor}    ${motor_number} เช็คไม่ได้เพราะ Element ไม่มีค่าให้เช็ค
    Sleep    3
    Close Browser



TC_VHC_083.4-กรณี Edit model
    ${license}    Set Variable    4646544
    ${new_model}    Set Variable    scania  
    ${old_model}    Set Variable    Benz             
    select_vehicle    ${license}
    Click Element    ${factory_edit_button}
    Click Element    ${drodown_model_button}    
    Wait Until Element Is Visible    ${field_model}    10
    Click Element    ${field_model}//*[text()[contains(.,'${new_model}')]]
    Click Element    ${factory_save_button}
    Click Element    ${confirm_edit_button}
    Click Element    ${confirm_confirm_edit_button}
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    ${top_right_alert}
    Run Keyword And Continue On Failure    Element Text Should Be    ${top_right_alert}    อัปเดตพาหนะสำเร็จ 
    Element Text Should Be    //div[@class="mb-3"][1]//span/div[3]/div[1]/div[1]/div/div[1]/div[1]    ${new_model}
    Sleep    3
    Close Browser

    #ส่วนนี้จะแก้ไขข้อมูลกลับมาเป็นค่าเดิม
    select_vehicle    ${license}
    #คำสั่งนี้จะเช็คว่าค่าที่เปลี่ยนยังแสดงถูกต้องอยู่ไหม
    Element Text Should Be    //div[@class="mb-3"][1]//span/div[3]/div[1]/div[1]/div/div[1]/div[1]    ${new_model}
    Click Element    ${factory_edit_button}
    Click Element    ${drodown_model_button}
    Wait Until Element Is Visible    ${field_model}    10
    Click Element    ${field_model}//*[text()[contains(.,'${old_model}')]]
    Click Element    ${factory_save_button}
    Click Element    ${confirm_edit_button}
    Click Element    ${confirm_confirm_edit_button}
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    ${top_right_alert}
    Run Keyword And Continue On Failure    Element Text Should Be    ${top_right_alert}    อัปเดตพาหนะสำเร็จ 
    Element Text Should Be    //div[@class="mb-3"][1]//span/div[3]/div[1]/div[1]/div/div[1]/div[1]    ${old_model}
    Sleep    3
    Close Browser



TC_VHC_083.5-กรณี Edit brand
    ${license}    Set Variable    4646544
    ${new_brand}    Set Variable    NISSAN 
    ${old_brand}    Set Variable    ISUZU       
    select_vehicle    ${license}
    Click Element    ${factory_edit_button}
    Click Element    ${dropdown_brand_button}
    Click Element    ${field_brand}//*[text()[contains(.,'${new_brand}')]]
    Click Element    ${factory_save_button}
    Click Element    ${confirm_edit_button}
    Click Element    ${confirm_confirm_edit_button}
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    ${top_right_alert}
    Run Keyword And Continue On Failure    Element Text Should Be    ${top_right_alert}    อัปเดตพาหนะสำเร็จ   
    Element Text Should Be    //div[@class="mb-3"][1]//span/div[3]/div[2]/div[1]/div/div[1]/div[1]    ${new_brand}
    Close Browser

    #ส่วนนี้จะแก้ไขข้อมูลกลับมาเป็นค่าเดิม
    select_vehicle    ${license}
    #คำสั่งนี้จะเช็คว่าค่าที่เปลี่ยนยังแสดงถูกต้องอยู่ไหม
    Element Text Should Be    //div[@class="mb-3"][1]//span/div[3]/div[2]/div[1]/div/div[1]/div[1]    ${new_brand}
    Click Element    ${factory_edit_button}
    Click Element    ${dropdown_brand_button}
    Click Element    ${field_brand}//*[text()[contains(.,'${old_brand}')]]
    Click Element    ${factory_save_button}
    Click Element    ${confirm_edit_button}
    Click Element    ${confirm_confirm_edit_button}
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    ${top_right_alert}
    Run Keyword And Continue On Failure    Element Text Should Be    ${top_right_alert}    อัปเดตพาหนะสำเร็จ   
    Element Text Should Be    //div[@class="mb-3"][1]//span/div[3]/div[2]/div[1]/div/div[1]/div[1]    ${old_brand}
    Close Browser



TC_VHC_083.6-กรณี Edit GPS IMEI
    ${license}    Set Variable    4646544
    ${new_GPS}    Set Variable    46565665
    ${old_GPS}    Set Variable    465656659        
    select_vehicle    ${license}
    Click Element    ${factory_edit_button}
    Input Text    ${field_gps}    ${new_GPS}
    Click Element    ${factory_save_button}
    Click Element    ${factory_save_button}
    Click Element    ${confirm_edit_button}
    Click Element    ${confirm_confirm_edit_button}
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    ${top_right_alert}
    Run Keyword And Continue On Failure    Element Text Should Be    ${top_right_alert}    อัปเดตพาหนะสำเร็จ    
    ${check_GPS}    Get Element Attribute    ${field_gps}    value 
    Should Be Equal    ${check_GPS}    ${new_GPS}
    Close Browser

    #ส่วนนี้จะแก้ไขข้อมูลกลับมาเป็นค่าเดิม
    select_vehicle    ${license}
    #คำสั่งนี้จะเช็คว่าค่าที่เปลี่ยนยังแสดงถูกต้องอยู่ไหม
    ${check_GPS}    Get Element Attribute    ${field_gps}    value 
    Should Be Equal    ${check_GPS}    ${new_GPS}
    Click Element    ${factory_edit_button}
    Input Text    ${field_gps}    ${old_GPS}
    Click Element    ${factory_save_button}
    Click Element    ${factory_save_button}
    Click Element    ${confirm_edit_button}
    Click Element    ${confirm_confirm_edit_button}
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    ${top_right_alert}
    Run Keyword And Continue On Failure    Element Text Should Be    ${top_right_alert}    อัปเดตพาหนะสำเร็จ    
    ${check_GPS}    Get Element Attribute    ${field_gps}    value 
    Should Be Equal    ${check_GPS}    ${old_GPS}
    Close Browser

TC_VHC_083.7-กรณี Edit chassis number
    ${license}    Set Variable    4646544
    ${new_chassis}    Set Variable    4565463
    ${old_chassis}    Set Variable    45654639         
    select_vehicle    ${license}
    Click Element    ${factory_edit_button}
    Input Text    ${field_chassis}    ${new_chassis}
    Click Element    ${factory_save_button}
    Click Element    ${factory_save_button}
    Click Element    ${confirm_edit_button}
    Click Element    ${confirm_confirm_edit_button}
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    ${top_right_alert}
    Run Keyword And Continue On Failure    Element Text Should Be    ${top_right_alert}    อัปเดตพาหนะสำเร็จ   
    ${check_chassis}    Get Element Attribute    ${field_chassis}    value 
    Should Be Equal    ${check_chassis}    ${new_chassis}
    Sleep    3
    Close Browser

    #ส่วนนี้จะแก้ไขข้อมูลกลับมาเป็นค่าเดิม
    select_vehicle    ${license}
    #คำสั่งนี้จะเช็คว่าค่าที่เปลี่ยนยังแสดงถูกต้องอยู่ไหม
    ${check_chassis}    Get Element Attribute    ${field_chassis}    value 
    Should Be Equal    ${check_chassis}    ${new_chassis}
    Click Element    ${factory_edit_button}
    Input Text    ${field_chassis}    ${old_chassis}
    Click Element    ${factory_save_button}
    Click Element    ${factory_save_button}
    Click Element    ${confirm_edit_button}
    Click Element    ${confirm_confirm_edit_button}
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    ${top_right_alert}
    Run Keyword And Continue On Failure    Element Text Should Be    ${top_right_alert}    อัปเดตพาหนะสำเร็จ   
    ${check_chassis}    Get Element Attribute    ${field_chassis}    value 
    Should Be Equal    ${check_chassis}    ${old_chassis}
    Sleep    3
    Close Browser


#TC_VHC กรณี Edit license plate
#    Open Add New Vehicle Page

TC_VHC_083.8-กรณี Edit depot
    ${license}    Set Variable    4646544
    ${new_depot}    Set Variable    อู่เคหะบางพลี
    ${old_depot}    Set Variable    อู่เคหะธนบุรี         
    select_vehicle    ${license}
    Click Element    ${operation_edit_button}
    Click Element    ${drop_down_depot_button}
    Wait Until Element Is Visible    ${field_depot}//*[text()[contains(.,'${new_depot}')]]    10
    Click Element    ${field_depot}//*[text()[contains(.,'${new_depot}')]]
    Click Element    //div[@class="mb-3"][4]//span/div[2]/div[1]/div/div/div[2]
    Click Element    ${field_subline}//*
    Click Element    ${operation_save_button}
    Click Element    ${confirm_edit_button}
    Click Element    ${confirm_confirm_edit_button}  
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    ${top_right_alert}
    Run Keyword And Continue On Failure    Element Text Should Be    ${top_right_alert}    อัปเดตพาหนะสำเร็จ 
    Element Text Should Be    //div[@class="mb-3"][4]//span/div[1]/div/div/div[1]/div[1]    ${new_depot}
    Sleep    3
    Close Browser

    #ส่วนนี้จะแก้ไขข้อมูลกลับมาเป็นค่าเดิม
    select_vehicle    ${license}
    #คำสั่งนี้จะเช็คว่าค่าที่เปลี่ยนยังแสดงถูกต้องอยู่ไหม
    Element Text Should Be    //div[@class="mb-3"][4]//span/div[1]/div/div/div[1]/div[1]    ${new_depot}
    Click Element    ${operation_edit_button}
    Click Element    ${drop_down_depot_button}
    Wait Until Element Is Visible    ${field_depot}//*[text()[contains(.,'${old_depot}')]]    10
    Click Element    ${field_depot}//*[text()[contains(.,'${old_depot}')]]
    Click Element    //div[@class="mb-3"][4]//span/div[2]/div[1]/div/div/div[2]
    Click Element    ${field_subline}//*
    Click Element    ${operation_save_button}
    Click Element    ${confirm_edit_button}
    Click Element    ${confirm_confirm_edit_button}  
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    ${top_right_alert}
    Run Keyword And Continue On Failure    Element Text Should Be    ${top_right_alert}    อัปเดตพาหนะสำเร็จ 
    Element Text Should Be    //div[@class="mb-3"][4]//span/div[1]/div/div/div[1]/div[1]    ${old_depot}
    Sleep    3
    Close Browser
    

TC_VHC_083.9-กรณี Edit sub line
    ${license}    Set Variable    4646544
    ${depot}    Set Variable    อู่เคหะธนบุรี  
    ${new_subline}    Set Variable    99-99(3)
    ${old_subline}    Set Variable    99-99(4)       
    select_vehicle    ${license}
    Click Element    ${operation_edit_button}
    
    #ตอนนี้มี ISSUE ที่ถ้าไม่เลือก depot ใหม่จะไม่แสดง subline ให้เลือก จึงต้องใช้ 3 คำสั่งด้านล่างนี้เพื่อเลือก depot 
    Click Element    ${drop_down_depot_button}
    Wait Until Element Is Visible    ${field_depot}//*[text()[contains(.,'${depot}')]]    10
    Click Element    ${field_depot}//*[text()[contains(.,'${depot}')]]
    ###

    Click Element    ${drop_down_subline_button}
    Element Text Should Not Be    ${field_subline}//*    No options
    Click Element    //div[@class="mb-3"][4]//span/div[2]/div[1]/div[1]/div//*[text()="${new_subline}"]
    Click Element    ${operation_save_button}
    Click Element    ${confirm_edit_button}
    Click Element    ${confirm_confirm_edit_button}
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    ${top_right_alert}
    Run Keyword And Continue On Failure    Element Text Should Be    ${top_right_alert}    อัปเดตพาหนะสำเร็จ  
    Element Text Should Be    //div[@class="mb-3"][4]//span/div[2]/div[1]/div[1]/div/div[1]/div[1]    ${new_subline}
    Close Browser


    #ส่วนนี้จะแก้ไขข้อมูลกลับมาเป็นค่าเดิม
    select_vehicle    ${license}
    #คำสั่งนี้จะเช็คว่าค่าที่เปลี่ยนยังแสดงถูกต้องอยู่ไหม
    Element Text Should Be    //div[@class="mb-3"][4]//span/div[2]/div[1]/div[1]/div/div[1]/div[1]    ${new_subline}
    Click Element    ${operation_edit_button}
    
    #ตอนนี้มี ISSUE ที่ถ้าไม่เลือก depot ใหม่จะไม่แสดง subline ให้เลือก จึงต้องใช้ 3 คำสั่งด้านล่างนี้เพื่อเลือก depot 
    Click Element    ${drop_down_depot_button}
    Wait Until Element Is Visible    ${field_depot}//*[text()[contains(.,'${depot}')]]    10
    Click Element    ${field_depot}//*[text()[contains(.,'${depot}')]]
    ###

    Click Element    ${drop_down_subline_button}
    Element Text Should Not Be    ${field_subline}//*    No options
    Click Element    //div[@class="mb-3"][4]//span/div[2]/div[1]/div[1]/div//*[text()="${old_subline}"]
    Click Element    ${operation_save_button}
    Click Element    ${confirm_edit_button}
    Click Element    ${confirm_confirm_edit_button}
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    ${top_right_alert}
    Run Keyword And Continue On Failure    Element Text Should Be    ${top_right_alert}    อัปเดตพาหนะสำเร็จ  
    Element Text Should Be    //div[@class="mb-3"][4]//span/div[2]/div[1]/div[1]/div/div[1]/div[1]    ${old_subline}
    Sleep    3
    Close Browser

TC_VHC_085-หน้าต่างยืนยันการแก้ไขกรณีกดปุ่ม Cancel
    edit_vehicle_name
    Click Element    ${confirm_edit_button}
    Wait Until Element Is Visible    ${confirm_edit_cancel_button}
    Click Element    ${confirm_edit_cancel_button}
    Wait Until Element Is Not Visible    ${confirm_edit_cancel_button}
    Wait Until Element Is Visible    ${title}

TC_VHC_086-หน้าต่างยืนยันการแก้ไขกรณีกดปุ่ม x
    edit_vehicle_name
    Click Element    ${confirm_edit_button}
    Wait Until Element Is Visible    ${close_confirm_edit_button}
    Click Element    ${close_confirm_edit_button}
    Wait Until Element Is Not Visible    ${close_confirm_edit_button}
    Wait Until Element Is Visible    ${title}

TC_VHC_092_093_094_095_103_-กรณี Edit โดยข้อมูลว่าง
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

TC_VHC_096-กรณี Edit โดย Vehicle Name ซ้ำกับที่มีอยู่
    ${license}    Set Variable    4646544
    edit_vehicle_name    license=${license}    new_veName=646564
    
    Click Element    ${confirm_edit_button}
    Click Element    ${confirm_confirm_edit_button}
    #Sleep    100
    Wait Until Element Is Visible    ${top_right_alert}    10
    Element Text Should Be    ${top_right_alert}   ชื่อพาหนะนี้ถูกใช้งานแล้ว

TC_VHC_097-กรณี Edit โดย motor number ซ้ำกับที่มีอยู่
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

TC_VHC_101-กรณี Edit GPS IMEI ซ้ำกับที่มีอยู่
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

TC_VHC_102-กรณี Edit chassis number ซ้ำกับที่มีอยู่
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

TC_VHC_107-กรณี Edit โดย Vehicle Name 2 ตัวอักษร
    ${license}    Set Variable    4646544
    edit_vehicle_name    ${license}    new_veName=84
    Element Text Should Be    ${alert_veName}    ต้องมีอักขระ 3 ถึง 20 ตัว

TC_VHC_109_110_111_112_113_114_115_116_117_118-ตรวจสอบจำนวนตัวอักษรสูงสุดกรณี Edit Vehical Name, Motot No, GPS IMEI, Chassis No, License plate
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

TC_VHC_125-หน้าต่างยืนยันการ Delete Vehicle
    select_vehicle
    Click Element    ${delete_button}
    Wait Until Element Is Visible    ${confirm_delete}
    Run Keyword And Continue On Failure    Element Text Should Be    ${confirm_delete_title}    ลบพาหนะ
    Run Keyword And Continue On Failure    Element Text Should Be    ${confirm_delete_text}     คุณยืนยันที่จะลบพาหนะ: 46446544 ใช่หรือไม่?
    Run Keyword And Continue On Failure    Element Text Should Be    ${confirm_delete}    ยืนยัน
    Run Keyword And Continue On Failure    Element Text Should Be    ${cancel_confirm_delete}    ยกเลิก
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    ${close_confirm_delete}

TC_VHC_126-กรณีลบ Vehicle
    #ใส่ License Plate ที่ต้องการลบ
    #License Plate ที่เลือกลบจะใช้ตัวเดียวกับที่ Add ใหม่
    ${delete_license}    Set Variable    999680
    delete_vehicle    ${delete_license}
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    ${top_right_alert}
    Run Keyword And Continue On Failure    Element Text Should Be    ${top_right_alert}    ลบพาหนะสำเร็จ
    Input Text    ${search_box}    ${delete_license}
    Element Should Not Be Visible    //span[text()[contains(.,"${delete_license}")]]    10

TC_VHC_127-หน้าต่างยืนยันการ Delete กรณีกดปุ่ม x
    select_vehicle
    Click Element    ${delete_button}
    Wait Until Element Is Visible    ${close_confirm_delete}
    Click Element    ${close_confirm_delete}
    Wait Until Element Is Not Visible    ${close_confirm_delete}
    Wait Until Element Is Visible    ${title}

TC_VHC_128-หน้าต่างยืนยันการ Delete กรณีกดปุ่ม Cancel
    select_vehicle
    Click Element    ${delete_button}
    Wait Until Element Is Visible    ${cancel_confirm_delete}
    Click Element    ${cancel_confirm_delete}
    Wait Until Element Is Not Visible    ${cancel_confirm_delete}
    Wait Until Element Is Visible    ${title}

# TC_VHC_129-กรณีลบ Vehicle ที่ถูกใช้งานอยู่

#     #ยังใช้งานไม่ได้
#     ${delete_license}    Set Variable    98-Test
#     delete_vehicle    ${delete_license}
#     Run Keyword And Continue On Failure    Wait Until Element Is Visible    ${top_right_alert}
#     Run Keyword And Continue On Failure    Element Text Should Be    ${top_right_alert}    ข้อผิดพลาด : พาหนะถูกใช้งานอยู่ ไม่สามารถลบได้
#     Input Text    ${search_box}    ${delete_license}
#     Wait Until Element Is Visible    //span[text()[contains(.,"${delete_license}")]]    10






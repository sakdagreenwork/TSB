# Test Data ที่่ต้องเตรียมไว้ก่อนทำการ Automate Test
#1. Route
        - route_name=เส้นทางการวิ่ง_Test1
        - description=Test - Test
#2. Route
        - route_name=เส้นทางการวิ่ง_1-13(126)Testtt (ไว้ใช้สำหรับ Test แก้ไขชื่อซ้ำ)
        - description=บางเขน - ถนนวิภาวดีรังสิต - หัวลำโพง Testttttt
*** Settings ***
Library             SeleniumLibrary    screenshot_root_directory=/Users/sakda.l/Desktop/TSB Automate/Login/Failed Screenshot
Resource            keyword.robot
Test Teardown       Close Browser

*** Variables ***
${hamburger_button}     //*[@id="root"]/main/header/div/div/div[1]/div[2]//*[name()='svg']
${data_manage_button}    //*[@id="root"]/main/div[2]//div[1]/div[2]/div/div/div/ul/li[6]/div[1]/div[1]/div
${route_menu}    //*[@id="root"]/main/div[2]/div[3]/div[1]/div[2]/div/div/div/ul/li[6]/div[2]/div/ul/li[6]/a/span/span[2]


${total}    //*[@id="root"]/main/div[3]/div/div/div/div[2]/div/div/div/div/div[2]/span
${select_to_view_text}    //*[@id="root"]/main//main/div/h4
${add_new_route_button}    //*[@id="root"]/main//main/div[1]/div[2]/div/button
${edit_route_button}    //*[@id="root"]/main//main/div/div[1]/div[2]/div/div/div/div[1]/div[2]/div[1]/div/button    
${delete_route_button}    //*[@id="root"]/main//main/div/div[1]/div[2]/div/div/div/div[1]/div[2]/div[2]/div/div/button

${title}    //*[@id="root"]/main/header/div/div/div[1]//h4

${search_box}    //*[@id="root"]/main//main/div/div/div/input

${first_search_result}    //*[@id="root"]/main//main/div[2]/div[1]/div[2]/div/div/div/div[2]/div/div[1]
${first_route_name_result}    //*[@id="root"]/main//main/div[2]/div[1]/div[2]/div/div/div/div[2]/div/div[1]/div/div/div[2]/div/span[1]
${first_description_result}    //*[@id="root"]/main//main/div[2]/div[1]/div[2]/div/div/div/div[2]/div/div[1]/div/div/div[2]/div/span[2]

${add_edit_route_title}    //*[@id="headlessui-portal-root"]/div/div/div/div/div/div/div/h2
${close_add_edit_route}    //*[@id="headlessui-portal-root"]/div/div/div/div/div/div/div/button
${add_edit_route_name_label}    //*[@id="headlessui-portal-root"]//form/label[1]
${add_edit_route_description_label}    //*[@id="headlessui-portal-root"]//form/label[2]
${add_edit_route_name_field}    //*[@id="headlessui-portal-root"]//form/div/div/input
${add_edit_route_description_field}    //*[@id="headlessui-portal-root"]//form/div[2]/div/textarea
${add_edit_route_name_alert}    //*[@id="headlessui-portal-root"]//form/div[1]/div[2]
${add_edit_route_description_alert}    //*[@id="headlessui-portal-root"]//form/div[2]/div[2]
${add_edit_route_button}    //*[@id="headlessui-portal-root"]//form/div[3]/button

${right_route_name}    //*[@id="root"]/main//main/div/div[1]/div[2]//div[1]/div[1]/h4    
${right_route_description}    //*[@id="root"]/main//main//h6/p

${confirm_add_edit_route_title}    //*[@id="headlessui-portal-root"]/div[2]/div/div/div/div/div/div/h2
${close_confirm_add_edit_route}    //*[@id="headlessui-portal-root"]/div[2]/div/div/div/div/div/div/button
${confirm_add_edit_route_text}    //*[@id="headlessui-portal-root"]/div[2]/div/div/div/div/div/div[2]/div
${confirm_confirm_add_edit_route_button}    //*[@id="headlessui-portal-root"]/div[2]/div/div/div/div/div/div[3]/div/div/div[1]
${cancel_confirm_add_edit_route_button}    //*[@id="headlessui-portal-root"]/div[2]/div/div/div/div/div/div[3]/div/div/div[2]

${confirm_delete_route_title}    //*[@id="headlessui-portal-root"]/div/div/div/div/div/div/div[1]/h2
${close_confirm_delete_route}    //*[@id="headlessui-portal-root"]/div/div/div/div/div/div/div[1]/button
${confirm_delete_route_text}    //*[@id="headlessui-portal-root"]/div/div/div/div/div/div/div[2]/div
${confirm_confirm_delete_route_button}    //*[@id="headlessui-portal-root"]/div/div/div/div/div/div/div[3]/div/div/div[1]
${cancel_confirm_delete_route}    //*[@id="headlessui-portal-root"]/div/div/div/div/div/div/div[3]/div/div/div[2]

${middle_route_name}    //*[@id="root"]/main//main/div/div/header/div/div[1]/div/div/span
${setup_vehicle_stop_button}    //*[@id="root"]/main//main/div/div/header/div/div[2]/div/div/button
${confirm_setup_vehicle_stop_button}     //*[@id="root"]/main//main/div/div/header/div/div[2]/div[2]//button   
${middle_vehicle_stop_go_text}    //*[@id="root"]/main//main/div/div/div/div[1]//main/header/h6
${middle_vehicle_stop_back_text}    //*[@id="root"]/main//main/div/div/div/div[2]//main/header/h6    

${tooltip_add_edit_delete_button}    //body/div[2]    

${not_found_data_text}    //*[@id="root"]/main//main//text/tspan

${top_right_alert}    //main[@class='App${SPACE}${SPACE}relative']/div[1]/div/div/div/div[2]


${setup_vehicle_stop_title}    //*[@id="headlessui-portal-root"]/div/div/div/div/div/div/div/h2

*** Keywords ***
open_route_menu
    Log In Valid
    Wait Until Element Is Visible    ${hamburger_button}
    Click Element    ${hamburger_button}
    Wait Until Element Is Visible    ${data_manage_button}
    Click Element    ${data_manage_button}
    Wait Until Element Is Visible    ${route_menu}
    Click Element    ${route_menu}
    Wait Until Element Is Visible    ${add_new_route_button}    15

open_add_route_page
    open_route_menu
    Click Element    ${add_new_route_button}
    Wait Until Element Is Visible    ${add_edit_route_button}

add_route
    [Arguments]    ${route_name}=เส้นทางการวิ่งใหม่   ${description}=สำหรับทดสอบ

    Input Text    ${add_edit_route_name_field}    ${route_name}
    Input Text    ${add_edit_route_description_field}    ${description}
    Click Element    ${add_edit_route_button}

select_route
    [Arguments]   ${route_name}=เส้นทางการวิ่ง_Test1
    Input Text    ${search_box}    ${route_name}
    Wait Until Element Is Visible     //span[text()[contains(.,"${route_name}")]]    10
    Click Element    //span[text()[contains(.,"${route_name}")]]
    Wait Until Element Is Visible    ${middle_route_name}
    Wait Until Element Is Visible    ${right_route_name}
    Run Keyword And Continue On Failure    Element Text Should Be    ${middle_route_name}    ${route_name}
    Run Keyword And Continue On Failure    Element Text Should Be    ${right_route_name}    ${route_name}

*** Test Cases ***
TC_ROU_001_020_หน้า Route
    open_route_menu
    Run Keyword And Continue On Failure    Element Text Should Be    ${title}    เส้นทาง
    Run Keyword And Continue On Failure    Element Should Contain    ${total}    ทั้งหมด
    Run Keyword And Continue On Failure    Element Should Contain    ${total}    รายการ
    ${place_search}    Get Element Attribute    ${search_box}    placeholder
    Run Keyword And Continue On Failure    Should Be Equal    ${place_search}    ค้นหา...
    Run Keyword And Continue On Failure    Element Text Should Be    ${select_to_view_text}    เลือกเพื่อดูรายละเอียดเส้นทาง
    Mouse Over    ${add_new_route_button}
    Wait Until Element Is Visible    ${tooltip_add_edit_delete_button}//*[text()="เพิ่มเส้นทาง"]
    
TC_ROU_002_กรณีค้นหาข้อมูลที่ไม่มีอยู่ในระบบ
    open_route_menu
    Input Text    ${search_box}    ข้อมูลที่ไม่มี
    Element Text Should Be    ${not_found_data_text}    No matching records found.

TC_ROU_003_กรณีค้นหาข้อมูลที่มีอยู่
    ${route_name}    Set Variable    เส้นทางการวิ่ง_Test1
    open_route_menu
    Input Text    ${search_box}    ${route_name}
    Wait Until Element Is Visible    ${first_search_result}
    Element Text Should Be    ${first_route_name_result}    ${route_name}

TC_ROU_004.1_กรณีกดปุ่ม Add New Route
    open_add_route_page

TC_ROU_004.2_หน้า Add New Route
    open_add_route_page
    Run Keyword And Continue On Failure    Element Text Should Be    ${add_edit_route_title}    เพิ่มเส้นทาง
    Run Keyword And Continue On Failure    Element Text Should Be    ${add_edit_route_name_label}    ชื่อเส้นทาง *
    Run Keyword And Continue On Failure    Element Text Should Be    ${add_edit_route_description_label}    รายละเอียด *
    ${place_route}    Get Element Attribute    ${add_edit_route_name_field}    placeholder
    Run Keyword And Continue On Failure    Should Be Equal    ${place_route}   ชื่อเส้นทาง
    ${place_description}    Get Element Attribute    ${add_edit_route_description_field}    placeholder
    Run Keyword And Continue On Failure    Should Be Equal    ${place_description}    รายละเอียด
    Run Keyword And Continue On Failure    Element Text Should Be    ${add_edit_route_button}    เพิ่ม
    Wait Until Element Is Visible    ${close_add_edit_route}

TC_ROU_005_หน้า Add New Route กรณีกดปุ่ม x
    open_add_route_page
    Click Element    ${close_add_edit_route}
    Wait Until Element Is Not Visible    ${close_add_edit_route}
    Wait Until Element Is Visible    ${title}

TC_ROU_007_011_กรณี Add Route โดยไม่กรอกข้อมูล
    open_add_route_page
    Click Element    ${add_edit_route_button}
    Run Keyword And Continue On Failure    Element Text Should Be    ${add_edit_route_name_alert}    โปรดระบุชื่อเส้นทาง
    Run Keyword And Continue On Failure    Element Text Should Be    ${add_edit_route_description_alert}    โปรดระบุรายละเอียด
    Wait Until Element Is Not Visible    ${confirm_confirm_add_edit_route_button}

TC_ROU_008_012_หน้า Add New Route ตรวจสอบจำนวนตัวอักษรสูงสุดกรณีเพิ่ม
    open_add_route_page
    ${max_name}    Get Element Attribute    ${add_edit_route_name_field}    maxlength
    Run Keyword And Continue On Failure    Should Be Equal    ${max_name}    30
    ${max_des}    Get Element Attribute    ${add_edit_route_description_field}    maxlength
    Run Keyword And Continue On Failure    Should Be Equal    ${max_des}    100

TC_ROU_010_กรณี Add โดย กรอกชื่อเส้นทางที่ซ้ำ
    open_add_route_page
    add_route    route_name=เส้นทางการวิ่ง_Test1    description=สำหรับทดสอบ
    Run Keyword And Continue On Failure    Element Text Should Be    ${add_edit_route_name_alert}    ชื่อเส้นทางนี้ถูกใช้งานแล้ว
    Wait Until Element Is Not Visible    ${confirm_confirm_add_edit_route_button}

TC_ROU_013_กรณี Add โดย กรอก Description ที่ซ้ำ
    open_add_route_page
    add_route    route_name=เส้นทางการวิ่ง_Test999    description=บางเขน - ถนนวิภาวดีรังสิต - หัวลำโพง Testttttt

TC_ROU_015_หน้าต่างยืนยันการ Add
    open_add_route_page
    add_route
    Wait Until Element Is Visible    ${confirm_confirm_add_edit_route_button}
    Run Keyword And Continue On Failure    Element Text Should Be    ${confirm_add_edit_route_title}    เพิ่มเส้นทาง
    Run Keyword And Continue On Failure    Element Text Should Be    ${confirm_add_edit_route_text}    คุณยืนยันที่จะเพิ่มเส้นทางใช่หรือไม่?
    Run Keyword And Continue On Failure    Element Text Should Be    ${confirm_confirm_add_edit_route_button}    ยืนยัน
    Run Keyword And Continue On Failure    Element Text Should Be    ${cancel_confirm_add_edit_route_button}    ยกเลิก
    Wait Until Element Is Visible    ${close_confirm_add_edit_route}
    
TC_ROU_017_หน้าต่างยืนยันการ Add กรณีกดปุ่ม x
    open_add_route_page
    add_route
    Wait Until Element Is Visible    ${close_confirm_add_edit_route}
    Click Element    ${close_confirm_add_edit_route}
    Wait Until Element Is Not Visible    ${close_confirm_add_edit_route}
    Wait Until Element Is Visible    ${add_edit_route_button}

TC_ROU_018_หน้าต่างยืนยันการ Add กรณีกดปุ่ม Cancel
    open_add_route_page
    add_route
    Wait Until Element Is Visible    ${cancel_confirm_add_edit_route_button}
    Click Element    ${cancel_confirm_add_edit_route_button}
    Wait Until Element Is Not Visible    ${cancel_confirm_add_edit_route_button}
    Wait Until Element Is Visible    ${add_edit_route_button}

TC_ROU_016_กรณีเพิ่ม Route ด้วยข้อมูลที่ครบถ้วนและถูกต้อง
    ${route_name}    Set Variable    เส้นทางการวิ่งใหม่
    ${unique}    get_unique_data
    ${route_name}    Set Variable    ${route_name}${unique}
    ${description}    Set Variable    ทดสอบการสร้างเส้นทาง
    open_add_route_page
    add_route    route_name=${route_name}    description=${description}
    Wait Until Element Is Visible    ${confirm_confirm_add_edit_route_button}
    Click Element    ${confirm_confirm_add_edit_route_button}
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    ${top_right_alert}
    Run Keyword And Continue On Failure    Element Text Should Be    ${top_right_alert}    เพิ่มเส้นทางสำเร็จ
    select_route    ${route_name} 
    Run Keyword And Continue On Failure    Element Text Should Be    ${right_route_description}    ${description}
    
TC_ROU_019_021_กรณีกดรายการ Route
    open_route_menu
    Maximize Browser Window
    select_route    เส้นทางการวิ่ง_Test1
    Run Keyword And Continue On Failure    Wait Until Element Is Visible   ${confirm_setup_vehicle_stop_button}
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    ${edit_route_button}

TC_ROU_021_ส่วนรายละเอียด Vehicle Stop ตรงกลาง
    ${route_name}    Set Variable    เส้นทางการวิ่ง_Test1
    open_route_menu
    select_route    ${route_name}
    Wait Until Element Is Visible    ${confirm_setup_vehicle_stop_button}
    Element Text Should Be    ${middle_route_name}    ${route_name} 
    Run Keyword And Continue On Failure    Element Text Should Be    ${setup_vehicle_stop_button}    กำหนดค่า
    Run Keyword And Continue On Failure    Element Text Should Be    ${confirm_setup_vehicle_stop_button}    ยืนยัน    
    Run Keyword And Continue On Failure    Element Text Should Be    ${middle_vehicle_stop_go_text}    ป้ายจอด - ขาไป
    Run Keyword And Continue On Failure    Element Text Should Be    ${middle_vehicle_stop_back_text}    ป้ายจอด - ขากลับ

กรณีกดปุ่ม Setup (มีการเปลี่ยนจากเดิม)
    ${route_name}    Set Variable    เส้นทางการวิ่ง_Test1
    open_route_menu
    select_route    ${route_name}
    Wait Until Element Is Visible    ${setup_vehicle_stop_button}
    Element Text Should Be    ${middle_route_name}    ${route_name} 
    Click Element    ${setup_vehicle_stop_button}
    Wait Until Element Is Visible    ${setup_vehicle_stop_title}


TC_ROU_050_ส่วนรายละเอียด Route ด้านขวา
    open_route_menu
    Maximize Browser Window
    select_route    เส้นทางการวิ่ง_Test1
    Wait Until Element Is Visible    ${right_route_description}
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    ${edit_route_button}
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    ${delete_route_button}
    Mouse Over    ${edit_route_button}
    Wait Until Element Is Enabled     //*[@id="tippy-4"]//*[text()="แก้ไขเส้นทาง"]
    Mouse Over    ${delete_route_button}
    Wait Until Element Is Visible     //*[@id="tippy-5"]//*[text()="ลบเส้นทาง"]

TC_ROU_051_กรณีกดปุ่ม Edit
    open_route_menu
    select_route
    Wait Until Element Is Visible    ${edit_route_button}
    Click Element    ${edit_route_button}
    Wait Until Element Is Visible    ${add_edit_route_button}

TC_ROU_051_หน้า Edit Route
    open_route_menu
    select_route
    Wait Until Element Is Visible    ${edit_route_button}
    Click Element    ${edit_route_button}
    Wait Until Element Is Visible    ${add_edit_route_button}
    Run Keyword And Continue On Failure    Element Text Should Be    ${add_edit_route_title}    แก้ไขเส้นทาง
    Run Keyword And Continue On Failure    Element Text Should Be    ${add_edit_route_name_label}    ชื่อเส้นทาง *
    Run Keyword And Continue On Failure    Element Text Should Be    ${add_edit_route_description_label}    รายละเอียด *
    ${place_route}    Get Element Attribute    ${add_edit_route_name_field}    placeholder
    Run Keyword And Continue On Failure    Should Be Equal    ${place_route}   ชื่อเส้นทาง
    ${place_description}    Get Element Attribute    ${add_edit_route_description_field}    placeholder
    Run Keyword And Continue On Failure    Should Be Equal    ${place_description}    รายละเอียด
    Run Keyword And Continue On Failure    Element Text Should Be    ${add_edit_route_button}    บันทึก
    Wait Until Element Is Visible    ${close_add_edit_route}

TC_ROU_052_หน้า Edit Route กรณีกดปุ่ม x
    open_route_menu
    select_route
    Wait Until Element Is Visible    ${edit_route_button}
    Click Element    ${edit_route_button}
    Wait Until Element Is Visible    ${add_edit_route_button}
    Click Element    ${close_add_edit_route}
    Wait Until Element Is Not Visible    ${add_edit_route_button}
    Wait Until Element Is Visible    ${title}

TC_ROU_055_059_หน้า Edit Route ตรวจสอบจำนวนตัวอักษรสูงสุดกรณีแก้ไข
    open_route_menu
    select_route
    Wait Until Element Is Visible    ${edit_route_button}
    Click Element    ${edit_route_button}
    Wait Until Element Is Visible    ${add_edit_route_button}
    ${max_name}    Get Element Attribute    ${add_edit_route_name_field}    maxlength
    Run Keyword And Continue On Failure    Should Be Equal    ${max_name}    30
    ${max_des}    Get Element Attribute    ${add_edit_route_description_field}    maxlength
    Run Keyword And Continue On Failure    Should Be Equal    ${max_des}    100

TC_ROU_054_058_หน้า Edit โดยลบข้อมูลให้ว่าง
    open_route_menu
    select_route
    Wait Until Element Is Visible    ${edit_route_button}
    Click Element    ${edit_route_button}
    Wait Until Element Is Visible    ${add_edit_route_button}
    Clear Element Text    ${add_edit_route_name_field}
    Clear Element Text    ${add_edit_route_description_field}
    Click Element    ${add_edit_route_button}
    Run Keyword And Continue On Failure    Element Text Should Be    ${add_edit_route_name_alert}    โปรดระบุชื่อเส้นทาง
    Run Keyword And Continue On Failure    Element Text Should Be    ${add_edit_route_description_alert}    โปรดระบุรายละเอียด
    Wait Until Element Is Not Visible    ${confirm_confirm_add_edit_route_button}

TC_ROU_057_กรณี Edit Route Name ที่ซ้ำ
    open_route_menu
    select_route    route_name=เส้นทางการวิ่ง_Test1
    Wait Until Element Is Visible    ${edit_route_button}
    Click Element    ${edit_route_button}
    Wait Until Element Is Visible    ${add_edit_route_button}
    Input Text    ${add_edit_route_name_field}    เส้นทางการวิ่ง_1-13(126)Testtt
    Click Element    ${add_edit_route_button}
    Click Element    ${add_edit_route_button}
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    ${add_edit_route_name_alert}
    Run Keyword And Continue On Failure    Element Text Should Be    ${add_edit_route_name_alert}    ชื่อเส้นทางนี้ถูกใช้งานแล้ว
    Wait Until Element Is Not Visible    ${confirm_confirm_add_edit_route_button}

TC_ROU_060_กรณี Edit Description ที่ซ้ำ
    open_route_menu
    select_route    route_name=เส้นทางการวิ่ง_Test1
    Wait Until Element Is Visible    ${edit_route_button}
    Click Element    ${edit_route_button}
    Wait Until Element Is Visible    ${add_edit_route_button}
    Input Text    ${add_edit_route_description_field}    บางเขน - ถนนวิภาวดีรังสิต - หัวลำโพง Testttttt    
    Click Element    ${add_edit_route_button}
    Click Element    ${add_edit_route_button}
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    ${confirm_confirm_add_edit_route_button}

TC_ROU_062_หน้าต่างยืนยันการ Edit
    open_route_menu
    select_route
    Wait Until Element Is Visible    ${edit_route_button}
    Click Element    ${edit_route_button}
    Wait Until Element Is Visible    ${add_edit_route_button}
    Click Element    ${add_edit_route_button}
    Wait Until Element Is Visible    ${confirm_confirm_add_edit_route_button}
    Run Keyword And Continue On Failure    Element Text Should Be    ${confirm_add_edit_route_title}    แก้ไขเส้นทาง
    Run Keyword And Continue On Failure    Element Text Should Be    ${confirm_add_edit_route_text}    คุณยืนยันที่จะแก้ไขเส้นทางใช่หรือไม่?
    Run Keyword And Continue On Failure    Element Text Should Be    ${confirm_confirm_add_edit_route_button}    ยืนยัน
    Run Keyword And Continue On Failure    Element Text Should Be    ${cancel_confirm_add_edit_route_button}    ยกเลิก
    Wait Until Element Is Visible    ${close_confirm_add_edit_route}



TC_ROU_063_กรณี Edit Route Name ด้วยข้อมูลที่ถูกต้อง
    ${old_route_name}    Set Variable    เส้นทางการวิ่ง_Test1
    ${new_route_name}    Set Variable    เส้นทางการวิ่ง_Test2
    open_route_menu
    select_route    route_name=${old_route_name}
    Wait Until Element Is Visible    ${edit_route_button}
    Click Element    ${edit_route_button}
    Wait Until Element Is Visible    ${add_edit_route_button}
    Input Text    ${add_edit_route_name_field}    ${new_route_name}
    Click Element    ${add_edit_route_button}
    Click Element    ${add_edit_route_button}
    Wait Until Element Is Visible    ${confirm_confirm_add_edit_route_button}
    Click Element    ${confirm_confirm_add_edit_route_button}
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    ${top_right_alert}
    Run Keyword And Continue On Failure    Element Text Should Be    ${top_right_alert}    แก้ไขเส้นทางสำเร็จ
    Close Browser

    open_route_menu
    select_route    ${new_route_name}
    Wait Until Element Is Visible    ${edit_route_button}
    Click Element    ${edit_route_button}
    Wait Until Element Is Visible    ${add_edit_route_button}
    Input Text    ${add_edit_route_name_field}    ${old_route_name}
    Click Element    ${add_edit_route_button}
    Click Element    ${add_edit_route_button}
    Wait Until Element Is Visible    ${confirm_confirm_add_edit_route_button}
    Click Element    ${confirm_confirm_add_edit_route_button}

TC_ROU_064_หน้าต่างยืนยันการ Edit กรณีกดปุ่ม x
    open_route_menu
    select_route
    Wait Until Element Is Visible    ${edit_route_button}
    Click Element    ${edit_route_button}
    Wait Until Element Is Visible    ${add_edit_route_button}
    Click Element    ${add_edit_route_button}
    Wait Until Element Is Visible    ${close_confirm_add_edit_route}
    Click Element    ${close_confirm_add_edit_route}
    Wait Until Element Is Not Visible    ${close_confirm_add_edit_route}
    Wait Until Element Is Visible    ${add_edit_route_button}

TC_ROU_065_หน้าต่างยืนยันการ Edit กรณีกดปุ่ม Cancel
    open_route_menu
    select_route
    Wait Until Element Is Visible    ${edit_route_button}
    Click Element    ${edit_route_button}
    Wait Until Element Is Visible    ${add_edit_route_button}
    Click Element    ${add_edit_route_button}
    Wait Until Element Is Visible    ${cancel_confirm_add_edit_route_button}
    Click Element    ${cancel_confirm_add_edit_route_button}
    Wait Until Element Is Not Visible    ${cancel_confirm_add_edit_route_button}
    Wait Until Element Is Visible    ${add_edit_route_button}

TC_ROU_068_กรณีกดปุ่ม Delete
    open_route_menu
    Maximize Browser Window
    select_route
    Wait Until Element Is Visible    ${delete_route_button}
    Click Element    ${delete_route_button}
    Wait Until Element Is Visible    ${confirm_confirm_delete_route_button}

TC_ROU_068_หน้าต่างยืนยันการ Delete
    ${route_name}    Set Variable    เส้นทางการวิ่ง_Test1
    open_route_menu
    Maximize Browser Window
    select_route    route_name=${route_name}
    Wait Until Element Is Visible    ${delete_route_button}
    Click Element    ${delete_route_button}
    Wait Until Element Is Visible    ${confirm_confirm_delete_route_button}
    Run Keyword And Continue On Failure    Element Text Should Be    ${confirm_delete_route_title}    ลบเส้นทาง
    Run Keyword And Continue On Failure    Element Text Should Be    ${confirm_delete_route_text}    คุณยืนยันที่จะลบเส้นทาง: ${route_name} ใช่หรือไม่?
    Run Keyword And Continue On Failure    Element Text Should Be    ${confirm_confirm_delete_route_button}    ยืนยัน
    Run Keyword And Continue On Failure    Element Text Should Be    ${cancel_confirm_delete_route}    ยกเลิก
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    ${close_confirm_delete_route}

TC_ROU_070_หน้าต่างยืนยันการ Delete กรณีกดปุ่ม x
    ${route_name}    Set Variable    เส้นทางการวิ่ง_Test1
    open_route_menu
    Maximize Browser Window
    select_route    route_name=${route_name}
    Wait Until Element Is Visible    ${delete_route_button}
    Click Element    ${delete_route_button}
    Wait Until Element Is Visible    ${close_confirm_delete_route}
    Click Element    ${close_confirm_delete_route}
    Wait Until Element Is Not Visible    ${close_confirm_delete_route}
    Wait Until Element Is Visible    ${title}

TC_ROU_071_หน้าต่างยืนยันการ Delete กรณีกดปุ่ม Cancel
    ${route_name}    Set Variable    เส้นทางการวิ่ง_Test1
    open_route_menu
    Maximize Browser Window
    select_route    route_name=${route_name}
    Wait Until Element Is Visible    ${delete_route_button}
    Click Element    ${delete_route_button}
    Wait Until Element Is Visible    ${cancel_confirm_delete_route}
    Click Element    ${cancel_confirm_delete_route}
    Wait Until Element Is Not Visible    ${cancel_confirm_delete_route}
    Wait Until Element Is Visible    ${title}





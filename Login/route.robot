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
${cancel_confirm_delete_route_title}    //*[@id="headlessui-portal-root"]/div/div/div/div/div/div/div[1]/button
${confirm_delete_route_text}    //*[@id="headlessui-portal-root"]/div/div/div/div/div/div/div[2]/div
${confirm_confirm_delete_route_text}    //*[@id="headlessui-portal-root"]/div/div/div/div/div/div/div[3]/div/div/div[1]
${cancel_confirm_delete_route_text}    //*[@id="headlessui-portal-root"]/div/div/div/div/div/div/div[3]/div/div/div[2]

${middle_route_name}    //*[@id="root"]/main//main/div/div/header/div/div[1]/div/div/span
${setup_vehicle_stop_button}    //*[@id="root"]/main//main/div/div/header/div/div[2]/div/div/button
${confirm_setup_vehicle_stop_button}     //*[@id="root"]/main//main/div/div/header/div/div[2]/div[2]/button   
${middle_vehicle_stop_go_text}    //*[@id="root"]/main//main/div/div/div/div[1]//main/header/h6
${middle_vehicle_stop_back_text}    //*[@id="root"]/main//main/div/div/div/div[2]//main/header/h6    

${tooltip_add_edit_delete_button}    //body/div[2]    

${not_found_data_text}    //*[@id="root"]/main//main//text/tspan

*** Keywords ***
open_route_menu
    Log In Valid
    Wait Until Element Is Visible    ${hamburger_button}
    Click Element    ${hamburger_button}
    Wait Until Element Is Visible    ${data_manage_button}
    Click Element    ${data_manage_button}
    Wait Until Element Is Visible    ${route_menu}
    Click Element    ${route_menu}
    Wait Until Element Is Visible    ${add_new_route_button}

open_add_route_page
    open_route_menu
    Click Element    ${add_new_route_button}
    Wait Until Element Is Visible    ${add_edit_route_button}

add_route
    [Arguments]    ${route_name}=เส้นทางการวิ่งใหม่   ${description}=สำหรับทดสอบ

    Input Text    ${add_edit_route_name_field}    ${route_name}
    Input Text    ${add_edit_route_description_field}    ${description}
    Click Element    ${add_edit_route_button}

*** Test Cases ***
หน้า Route
    open_route_menu
    Run Keyword And Continue On Failure    Element Text Should Be    ${title}    เส้นทาง
    Run Keyword And Continue On Failure    Element Should Contain    ${total}    ทั้งหมด
    Run Keyword And Continue On Failure    Element Should Contain    ${total}    รายการ
    ${place_search}    Get Element Attribute    ${search_box}    placeholder
    Run Keyword And Continue On Failure    Should Be Equal    ${place_search}    ค้นหา...
    Run Keyword And Continue On Failure    Element Text Should Be    ${select_to_view_text}    เลือกเพื่อดูรายละเอียดเส้นทาง
    Mouse Over    ${add_new_route_button}
    Wait Until Element Is Visible    ${tooltip_add_edit_delete_button}//*[text()="เพิ่มเส้นทาง"]
    
กรณีค้นหาข้อมูลที่ไม่มีอยู่ในระบบ
    open_route_menu
    Input Text    ${search_box}    ข้อมูลที่ไม่มี
    Element Text Should Be    ${not_found_data_text}    No matching records found.

กรณีกดปุ่ม Add New Route
    open_add_route_page

หน้า Add New Route
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

กรณี Add Route โดยไม่กรอกข้อมูล
    open_add_route_page
    Click Element    ${add_edit_route_button}
    Run Keyword And Continue On Failure    Element Text Should Be    ${add_edit_route_name_alert}    โปรดระบุชื่อเส้นทาง
    Run Keyword And Continue On Failure    Element Text Should Be    ${add_edit_route_description_alert}    โปรดระบุรายละเอียด
    Wait Until Element Is Visible    ${confirm_confirm_add_edit_route_button}

กรณี Add โดย กรอกชื่อเส้นทางที่ซ้ำ
    open_add_route_page
    add_route    route_name=เส้นทางการวิ่ง_Test1    description=สำหรับทดสอบ
    Run Keyword And Continue On Failure    Element Text Should Be    ${add_edit_route_name_alert}    ชื่อเส้นทางนี้ถูกใช้งานแล้ว
    Wait Until Element Is Not Visible    ${confirm_confirm_add_edit_route_button}


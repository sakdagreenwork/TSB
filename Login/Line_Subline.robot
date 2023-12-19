*** Settings ***
Library    SeleniumLibrary    screenshot_root_directory=/Users/sakda.l/Desktop/TSB Automate/Login/Failed Screenshot
Resource    keyword.robot
Test Teardown    Close Browser 

*** Variables ***
${hamburger_button}     //*[@id="root"]/main/header/div/div/div[1]/div[2]//*[name()='svg']
${datamanage_button}    //*[@id="root"]/main/div[2]/div[3]/div[1]/div[2]/div/div/div/ul/li[6]/div[1]/div[1]/div
${line_subline_button}    //*[@id="root"]/main/div[2]//div[1]/div[2]/div/div/div/ul/li[6]/div[2]/div/ul/li[8]/a/span/span[2]

${title}    //*[@id="root"]/main/header/div/div/div[1]//h4

${top_right_alert}    //main/div/div/div/div[@role="alert"]/div[2]

${total}    //*[@id="root"]/main//div[2]/div/div/div/div[1]/div/div[2]/span
${active}    //*[@id="root"]/main//div[2]/div/div/div/div[2]/div/div[2]/span
${inactive}    //*[@id="root"]/main//div[2]/div/div/div/div[3]/div/div[2]/span

${search_box}    //*[@id="root"]/main//main/div[2]/div/input
${first_result}    //*[@id="root"]/main//main/div[3]/div[1]/div[2]/div/div/div/div[1]
${first_result_line_name}    //*[@id="root"]/main//main/div[3]/div[1]/div[2]/div/div/div/div[1]/div/div[2]/div/span[1]
${first_result_description}    //*[@id="root"]/main//main/div[3]/div[1]/div[2]/div/div/div/div[1]/div/div[2]/div/span[2]
${select_to_view_text}    //*[@id="root"]/main//main/div/h4

${add_new_line_button}    //*[@id="root"]/main//div/div/div/div[2]/div[2]/div/button

${add_edit_line_title}    /html/body//div[2]/div/div//h2
${line_name_label}    //*[@id="headlessui-portal-root"]//div//form/div[1]/div[1]/span/label
${line_label_label}    //*[@id="headlessui-portal-root"]//div//form/div[1]/div[2]/span/label
${line_description_label}    //*[@id="headlessui-portal-root"]//div//form/div[2]/span/label
${line_company_label}    //*[@id="headlessui-portal-root"]//div//form/div[3]//label
${line_status_label}    //*[@id="headlessui-portal-root"]//div//form/div[4]//label
${line_min_ve_label}    //*[@id="headlessui-portal-root"]//div//form/div[5]/div[1]/span/label
${line_max_ve_label}    //*[@id="headlessui-portal-root"]//div//form/div[5]/div[2]/span/label
${line_min_trip_label}    //*[@id="headlessui-portal-root"]//div//form/div[6]/div/span/label

${line_name_field}    //*[@id="headlessui-portal-root"]//div//form/div[1]/div[1]//input
${line_label_field}    //*[@id="headlessui-portal-root"]//div//form/div[1]/div[2]//input
${line_description_field}    //*[@id="headlessui-portal-root"]//div//form/div[2]//input
${line_company_field}    //*[@id="headlessui-portal-root"]//div//form/div[3]/div/div/div[1]//input
${line_status_field}    //*[@id="headlessui-portal-root"]//div//form/div[4]/div/div/div[1]//input
${line_min_ve_field}    //*[@id="headlessui-portal-root"]//div//form/div[5]/div[1]//input
${line_max_ve_field}    //*[@id="headlessui-portal-root"]//div//form/div[5]/div[2]//input
${line_min_trip_field}    //*[@id="headlessui-portal-root"]//div//form/div[6]//input

${line_company_placeholder}    //*[@id="headlessui-portal-root"]//div//form/div[3]/div/div/div[1]/div[1]
${line_status_placeholder}    //*[@id="headlessui-portal-root"]//div//form/div[4]/div/div/div[1]/div[1]

${line_company_dropdown_button}    //*[@id="headlessui-portal-root"]//div//form/div[3]/div/div/div[2]/div
${line_status_dropdown_button}    //*[@id="headlessui-portal-root"]//div//form/div[4]/div/div/div[2]/div

${line_name_alert}    //*[@id="headlessui-portal-root"]//div//form/div[1]/div[1]/div[2]
${line_label_alert}    //*[@id="headlessui-portal-root"]//div//form/div[1]/div[2]/div[2]        
${line_description_alert}    //*[@id="headlessui-portal-root"]//div//form/div[2]/div[2]
${line_company_alert}    //*[@id="headlessui-portal-root"]//div//form/div[3]/div[2]
${line_status_alert}    //*[@id="headlessui-portal-root"]//div//form/div[4]/div[2]
${line_min_ve_alert}    //*[@id="headlessui-portal-root"]//div//form/div[5]/div[1]/div[2] 
${line_max_ve_alert}    //*[@id="headlessui-portal-root"]//div//form/div[5]/div[2]/div[2] 
${line_min_trip_alert}    //*[@id="headlessui-portal-root"]//div//form/div[6]/div/div[2]    


${add_edit_line_close_button}     //*[@id="headlessui-portal-root"]/div/div/div/div/div/div/div/button
${add_edit_line_button}    //*[@id="headlessui-portal-root"]//div//form//button  
${add_edit_line_button_text}    //*[@id="headlessui-portal-root"]//div//form//button/span/span  

${confirm_add_edit_line_title}    //*[@id="headlessui-portal-root"]/div[2]//h2
${confirm_add_edit_line_close_button}    //*[@id="headlessui-portal-root"]/div[2]/div/div/div/div/div/div/button    
${confirm_add_edit_line_text}    //*[@id="headlessui-portal-root"]/div[2]/div/div/div/div/div/div/div
${confirm_confirm_add_edit_line_button}    //*[@id="headlessui-portal-root"]/div[2]/div//div[3]/div/div/div[1]
${confirm_add_edit_cancel_line_button}    //*[@id="headlessui-portal-root"]/div[2]/div//div[3]/div/div/div[2]

${right_line_name}    //*[@id="root"]/main//main/div/div[1]/div[2]//div[1]/div[1]/h4
${right_description}    //*[@id="root"]/main//main//h5
${right_label}    //*[@id="root"]/main//main//h6
${right_min_ve_label}    //*[@id="root"]/main//main//ul/li[1]/div[1]/span
${right_max_ve_label}    //*[@id="root"]/main//main//ul/li[2]/div[1]/span
${right_min_trip_label}    //*[@id="root"]/main//main//ul/li[3]/div[1]/span
${right_company}    //*[@id="root"]/main//div[3]/div[1]//div[2]/div/main/div/div[1]/div[2]//div[5]
${right_status_button}    //*[@id="root"]/main//div[3]/div[1]//div[2]/div/main/div/div[1]/div[2]//div[6]//label/div
${right_status_text}    //*[@id="root"]/main//div[3]/div[1]//div[2]/div/main/div/div[1]/div[2]//div[6]//label/span

${right_min_ve_data}    //*[@id="root"]/main//main//ul/li[1]/div[2]
${right_max_ve_data}    //*[@id="root"]/main//main//ul/li[2]/div[2]
${right_min_trip_data}    //*[@id="root"]/main//main//ul/li[3]/div[2]

${edit_line_button}    //*[@id="root"]/main//main/div/div[1]/div[2]//div[2]/div[1]/button
${delete_line_button}    //*[@id="root"]/main//main/div/div[1]/div[2]//div[2]/div[2]/div

${delete_line_title}    //*[@id="headlessui-portal-root"]/div/div/div/div/div/div/div/h2
${delete_line_text}    //*[@id="headlessui-portal-root"]/div/div/div/div/div/div/div[2]/div
${confirm_delete_line_button}    //*[@id="headlessui-portal-root"]/div/div/div/div/div/div/div[3]/div/div/div[1]
${cancel_delete_line_button}    //*[@id="headlessui-portal-root"]/div/div/div/div/div/div/div[3]/div/div/div[2]
${close_delete_line_button}    //*[@id="headlessui-portal-root"]/div/div/div/div/div/div/div/button

${middle_line_name}    //*[@id="root"]/main//main//header//div[2]/span[1]
${middle_line_status}    //*[@id="root"]/main//main//header//div[2]/span[2]
${first_subline}    //*[@id="root"]/main//main/div/div/div/div/div[1]/div/div[1]/div[2]/div/div/div/div[1]

${add_new_sub_line_button}    //*[@id="root"]/main//main/div/div/header/div/div[2]/div/div//*[name()='svg']
${first_edit_sub_line_button}    //*[@id="root"]/main//main//div[1]/div/div[2]/div[1]/div/button
${first_delete_sub_line_button}    //*[@id="root"]/main//main//div[1]/div/div[2]/div[2]/div/div/div

${add_edit_sub_line_title}    //*[@id="headlessui-portal-root"]/div/div/div/div/div/div/div/h2
${add_edit_sub_line_name_label}    //*[@id="headlessui-portal-root"]//form/div[1]/span/label
${add_edit_sub_line_depot_start_label}    //*[@id="headlessui-portal-root"]//form/div[2]/div[1]/label
${add_edit_sub_line_depot_stoop_label}    //*[@id="headlessui-portal-root"]//form/div[2]/div[2]/label

${add_edit_sub_line_name_field}    //*[@id="headlessui-portal-root"]//form/div[1]/div/input
${add_edit_sub_line_depot_start_field}    //*[@id="headlessui-portal-root"]//form/div[2]/div[1]/div/div//div/div/input
${add_edit_sub_line_depot_stop_field}    //*[@id="headlessui-portal-root"]//form/div[2]/div[2]/div/div//div/div/input

${add_edit_sub_line_depot_start_placeholder}    //*[@id="headlessui-portal-root"]//form/div[2]/div[1]/div/div//div[1]/div[1]
${add_edit_sub_line_depot_stop_placeholder}    //*[@id="headlessui-portal-root"]//form/div[2]/div[2]/div/div//div[1]/div[1]

${add_edit_depot_start_dropdown_button}    //*[@id="headlessui-portal-root"]//form/div[2]/div[1]/div/div/div[2]/div
${add_edit_depot_stop_dropdown_button}    //*[@id="headlessui-portal-root"]//form/div[2]/div[2]/div/div/div[2]/div
${add_edit_sub_line_button}    //*[@id="headlessui-portal-root"]//form/div[3]/div/button
${add_edit_sub_line_button_text}    //*[@id="headlessui-portal-root"]//form/div[3]/div/button/span/span
${close_add_edit_sub_line_button}    //*[@id="headlessui-portal-root"]/div/div/div/div/div/div/div/button

${sub_line_alert}    //*[@id="headlessui-portal-root"]//form/div[1]/div[2]
${depot_start_alert}    //*[@id="headlessui-portal-root"]//form/div[2]/div[1]/div[2]
${depot_stop_alert}    //*[@id="headlessui-portal-root"]//form/div[2]/div[2]/div[2]

${delete_sub_line_title}    //*[@id="headlessui-portal-root"]/div/div/div/div/div/div/div/h2
${close_delete_sub_line_button}    //*[@id="headlessui-portal-root"]/div/div/div/div/div/div/div/button
${delete_sub_line_text}    //*[@id="headlessui-portal-root"]/div/div/div/div/div/div/div[2]/div
${confirm_delete_sub_line_button}    //*[@id="headlessui-portal-root"]//div[3]/div/div/div[1]    
${cancel_delete_sub_line_button}    //*[@id="headlessui-portal-root"]//div[3]/div/div/div[2]    

${right_sub_line_name}    //*[@id="root"]/main//main/div/div[1]/div[2]//div[1]/h4
${route_title}    //*[@id="root"]/main//div[3]//div[2]//main/div/div[1]/div[2]/div/div/div/div[2]
${first_route_name_text}    //*[@id="root"]/main//main//div[3]/div/div[1]/div[2]/div/div/div/div[1]/div/div[2]
${first_route_name_start_date}    //*[@id="root"]/main//main//div[3]/div/div[1]/div[2]/div/div/div/div[1]/div/div[2]/div[1]
${first_route_name_end_date}    //*[@id="root"]/main//main//div[3]/div/div[1]/div[2]/div/div/div/div[1]/div/div[2]/div[2]

${add_new_route_button}    //*[@id="root"]/main//main/div/div[1]/div[2]/div/div/div/div[1]/div/div/div/*[name()='svg']

${add_route_title}    //*[@id="headlessui-portal-root"]/div/div/div/div/div/div/div/h2
${close_route_button}    //*[@id="headlessui-portal-root"]/div/div/div/div/div/div/div/button
${route_label}    //*[@id="headlessui-portal-root"]/div/div/div/div/div/div/div[2]/form/div[1]/label
${start_date_label}    //*[@id="headlessui-portal-root"]/div/div/div/div/div/div/div[2]/form/div[2]/div[1]/label
${end_date_label}    //*[@id="headlessui-portal-root"]/div/div/div/div/div/div/div[2]/form/div[2]/div[2]/label   
${route_field}    //*[@id="headlessui-portal-root"]//div[2]/form/div[1]/div/div/div/div/input
${route_dropdown_button}    //*[@id="headlessui-portal-root"]//div[2]/form/div[1]/div/div/div[2]/div
${start_date_field}    //*[@id="headlessui-portal-root"]//div[2]/form/div[2]/div[1]/div/input[1]
${stop_date_field}    //*[@id="headlessui-portal-root"]//div[2]/form/div[2]/div[2]/div/input[1]
${route_value_placeholder}    //*[@id="headlessui-portal-root"]//div[2]/form/div[1]/div/div/div[1]/div[1]

${route_alert}    //*[@id="headlessui-portal-root"]/div/div/div/div/div/div/div[2]/form/div[1]/div[2]
${start_date_alert}    //*[@id="headlessui-portal-root"]/div/div/div/div/div/div/div[2]/form/div[2]/div[1]/div[2]   
${stop_date_alert}    //*[@id="headlessui-portal-root"]/div/div/div/div/div/div/div[2]/form/div[2]/div[2]/div[2]

${add_route_button}    //*[@id="headlessui-portal-root"]/div/div/div/div/div/div/div[2]/form/div[3]/button


${confirm_add_route_title}    //*[@id="headlessui-portal-root"]/div[2]/div/div/div/div/div/div/h2
${close_confirm_add_route_button}    //*[@id="headlessui-portal-root"]/div[2]/div/div/div/div/div/div/button
${confirm_add_route_text}    //*[@id="headlessui-portal-root"]/div[2]/div/div/div/div/div/div[2]/div
${confirm_confirm_add_route_button}    //*[@id="headlessui-portal-root"]/div[2]/div/div/div/div/div/div[3]/div/div/div[1]
${cancel_confirm_route_button}    //*[@id="headlessui-portal-root"]/div[2]/div/div/div/div/div/div[3]/div/div/div[2]

${first_route_delete_button}    //*[@id="root"]/main//main//div[3]/div/div[1]/div[2]/div/div/div/div[1]/div/div[3]/div
${delete_route_title}    //*[@id="headlessui-portal-root"]/div/div/div/div/div/div/div/h2    
${close_delete_route_button}    //*[@id="headlessui-portal-root"]/div/div/div/div/div/div/div/button
${delete_route_text}    //*[@id="headlessui-portal-root"]/div/div/div/div/div/div/div[2]/div
${confirm_delete_route_button}    //*[@id="headlessui-portal-root"]/div/div/div/div/div/div/div[3]/div/div/div[1]
${cancel_delete_route_button}    //*[@id="headlessui-portal-root"]/div/div/div/div/div/div/div[3]/div/div/div[2]

*** Keywords ***
open_line_subline_menu
    Log In Valid
    Wait Until Element Is Visible    ${hamburger_button}    20
    Click Element    ${hamburger_button}
    Wait Until Element Is Visible    ${datamanage_button}    20
    Click Element    ${datamanage_button}
    Wait Until Element Is Visible    ${line_subline_button}
    Click Element    ${line_subline_button}
    Wait Until Element Is Visible    ${add_new_line_button}    10
    Sleep    1

open_add_line_menu
    open_line_subline_menu
    Click Element    ${add_new_line_button}
    Wait Until Element Is Visible    ${add_edit_line_button}

add_line
    [Arguments]    ${line_name}=888    ${label}=ป้าย 888    ${description}=สายการเดินรถ 888    
    ...            ${company}=บริษัท ศักดา ออนไลน์ 2จำกัด    ${status}=Active    ${min_ve}=5
    ...            ${max_ve}=10    ${min_trip}=5
    open_add_line_menu
    Input Text    ${line_name_field}    ${line_name}
    Input Text    ${line_label_field}    ${label}
    Input Text    ${line_description_field}    ${description}
    Click Element    ${line_company_dropdown_button}
    Input Text    ${line_company_field}    ${company}
    Click Element    //*[@id="icon_s"]//*[text()="${company}"]
    Click Element    ${line_status_dropdown_button}
    Input Text    ${line_status_field}    ${status}
    Click Element    //*[@id="icon_s"]//*[text()="${status}"]
    Input Text    ${line_min_ve_field}    ${min_ve}
    Input Text    ${line_max_ve_field}    ${max_ve}
    Input Text    ${line_min_trip_field}    ${min_trip}
    Click Element    ${add_edit_line_button}

select_line
    [Arguments]    ${line_name}=99-99
    Input Text    ${search_box}    ${line_name}
    Wait Until Element Is Visible    ${first_result}    10
    Click Element    ${first_result}
    Wait Until Element Is Visible    ${middle_line_name}
    Element Text Should Be    ${first_result_line_name}    ${line_name}
    Run Keyword And Continue On Failure    Element Text Should Be    ${middle_line_name}    ${line_name}
    Run Keyword And Continue On Failure    Element Text Should Be    ${right_line_name}    ${line_name}

*** Test Cases ***
หน้า Line
    open_line_subline_menu
    Run Keyword And Continue On Failure    Element Text Should Be    ${title}    สาย   
    Run Keyword And Continue On Failure    Element Should Contain    ${total}    สายทั้งหมด
    Run Keyword And Continue On Failure    Element Should Contain    ${total}    รายการ
    Run Keyword And Continue On Failure    Element Should Contain    ${active}    ใช้งาน
    Run Keyword And Continue On Failure    Element Should Contain    ${active}    รายการ
    Run Keyword And Continue On Failure    Element Should Contain    ${inactive}    ไม่มีการใช้งาน
    Run Keyword And Continue On Failure    Element Should Contain    ${inactive}    รายการ
    ${search_place}    Get Element Attribute    ${search_box}    placeholder
    Run Keyword And Continue On Failure    Should Be Equal    ${search_place}    ค้นหา...
    Run Keyword And Continue On Failure    Element Text Should Be    ${add_new_line_button}    เพิ่มสาย
    Run Keyword And Continue On Failure    Element Text Should Be    ${select_to_view_text}    Select line to view sub lines    

กรณีกดปุ่ม + Add New Line
    open_add_line_menu

หน้าต่าง Add New Line
    open_add_line_menu
    Run Keyword And Continue On Failure    Element Text Should Be    ${line_name_label}    ชื่อสาย
    ${line_name_place}    Get Element Attribute    ${line_name_field}    placeholder
    Run Keyword And Continue On Failure    Should Be Equal    ${line_name_place}    ชื่อสาย      
    Run Keyword And Continue On Failure    Element Text Should Be    ${line_label_label}    ป้าย    
    ${line_label_place}    Get Element Attribute    ${line_label_field}    placeholder
    Run Keyword And Continue On Failure    Should Be Equal    ${line_label_place}    ป้าย 
    Run Keyword And Continue On Failure    Element Text Should Be    ${line_description_label}    รายละเอียด
    ${line_des_place}    Get Element Attribute    ${line_description_field}    placeholder
    Run Keyword And Continue On Failure    Should Be Equal    ${line_des_place}    รายละเอียด 
    Run Keyword And Continue On Failure    Element Text Should Be    ${line_company_label}    บริษัท
    Run Keyword And Continue On Failure    Element Text Should Be    ${line_company_placeholder}    Select...
    Run Keyword And Continue On Failure    Element Text Should Be    ${line_status_label}    สถานะ
    Run Keyword And Continue On Failure    Element Text Should Be    ${line_status_placeholder}    Select...
    Run Keyword And Continue On Failure    Element Text Should Be    ${line_min_ve_label}    พาหนะขั้นต่ำ    
    ${line_min_ve_place}    Get Element Attribute    ${line_min_ve_field}    placeholder
    Run Keyword And Continue On Failure    Should Be Equal    ${line_min_ve_place}    พาหนะขั้นต่ำ     
    Run Keyword And Continue On Failure    Element Text Should Be    ${line_max_ve_label}    พาหนะสูงสุด  
    ${line_max_ve_place}    Get Element Attribute    ${line_max_ve_field}    placeholder
    Run Keyword And Continue On Failure    Should Be Equal    ${line_max_ve_place}    พาหนะสูงสุด
    Run Keyword And Continue On Failure    Element Text Should Be    ${line_min_trip_label}    เดินทางขั้นต่ำ  
    ${line_min_trip_place}    Get Element Attribute    ${line_min_trip_field}    placeholder
    Run Keyword And Continue On Failure    Should Be Equal    ${line_min_trip_place}    เดินทางขั้นต่ำ  
    Run Keyword And Continue On Failure    Element Text Should Be    ${add_edit_line_button}    เพิ่ม

กรณีกด x หน้า Add New Line
    open_add_line_menu
    Wait Until Element Is Visible    ${add_edit_line_button}    5
    Click Element    ${add_edit_line_close_button}
    Wait Until Element Is Not Visible    ${add_edit_line_close_button}    5

กรณีเพิ่ม Line โดยไม่กรอกข้อมูล
    open_add_line_menu
    Click Element    ${add_edit_line_button}
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    ${line_name_alert}
    Run Keyword And Continue On Failure    Element Should Be Visible    ${line_name_alert}
    Run Keyword And Continue On Failure    Element Text Should Be    ${line_name_alert}    โปรดระบุชื่อสาย
    Run Keyword And Continue On Failure    Element Should Be Visible    ${line_label_alert}
    Run Keyword And Continue On Failure    Element Text Should Be    ${line_label_alert}    โปรดระบุป้าย
    Run Keyword And Continue On Failure    Element Should Be Visible    ${line_description_alert}
    Run Keyword And Continue On Failure    Element Text Should Be    ${line_description_alert}    โปรดระบุรายละเอียด
    Run Keyword And Continue On Failure    Element Should Be Visible    ${line_company_alert}
    Run Keyword And Continue On Failure    Element Text Should Be    ${line_company_alert}    โปรดระบุบริษัท
    Run Keyword And Continue On Failure    Element Should Be Visible    ${line_status_alert}
    Run Keyword And Continue On Failure    Element Text Should Be    ${line_status_alert}    โปรดระบุสถานะ
    Run Keyword And Continue On Failure    Element Should Be Visible    ${line_min_ve_alert}    
    Run Keyword And Continue On Failure    Element Text Should Be    ${line_min_ve_alert}    โปรดระบุพาหนะขั้นต่ำ

จำนวนตัวอักษรสูงสุดกรณีเพิ่ม
    open_add_line_menu
    ${max_line_name}    Get Element Attribute    ${line_name_field}    maxlength
    Run Keyword And Continue On Failure    Should Be Equal    ${max_line_name}    30
    ${max_label}    Get Element Attribute    ${line_label_field}    maxlength
    Run Keyword And Continue On Failure    Should Be Equal    ${max_label}    30
    ${max_description}    Get Element Attribute    ${line_description_field}    maxlength
    Run Keyword And Continue On Failure    Should Be Equal    ${max_description}    100
    ${max_min_ve}    Get Element Attribute    ${line_min_ve_field}    maxlength
    Run Keyword And Continue On Failure    Should Be Equal    ${max_min_ve}    2
    ${max_max_ve}    Get Element Attribute    ${line_max_ve_field}    maxlength
    Run Keyword And Continue On Failure    Should Be Equal    ${max_max_ve}    2
    ${max_min_trip}    Get Element Attribute    ${line_min_trip_field}    maxlength
    Run Keyword And Continue On Failure    Should Be Equal    ${max_min_trip}    2

กรณีเพิ่ม Line Name ที่ซ้ำกับที่มีอยู่
    add_line     line_name=ชื่55
    Wait Until Element Is Visible    ${line_name_alert}
    Run Keyword And Continue On Failure    Element Text Should Be    ${line_name_alert}    ชื่อสายนี้ถูกใช้งานแล้ว    
    
กรณีเพิ่ม Minimum Vehicle < 0
    add_line    min_ve=-1
    Wait Until Element Is Visible    ${line_min_ve_alert}
    Run Keyword And Continue On Failure    Element Text Should Be    ${line_min_ve_alert}    พาหนะขั้นต่ำต้องมีจำนวนมากกว่าหรือเท่ากับ 1

กรณีเพิ่ม Minimum Vehicle = 0
    add_line    min_ve=0
    Wait Until Element Is Visible    ${line_min_ve_alert}
    Run Keyword And Continue On Failure    Element Text Should Be    ${line_min_ve_alert}    พาหนะขั้นต่ำต้องมีจำนวนมากกว่าหรือเท่ากับ 1

กรณีเพิ่ม Minimum Vehicle > 0
    add_line    min_ve=1
    Wait Until Element Is Not Visible    ${line_min_ve_alert}
    Wait Until Element Is Visible    ${confirm_add_edit_line_text}

กรณีเพิ่ม Minimum Vehicle ด้วยเลขทศนิยม
    add_line    min_ve=1.5
    Wait Until Element Is Visible    ${line_min_ve_alert}
    Run Keyword And Continue On Failure    Element Text Should Be    ${line_min_ve_alert}    พาหนะขั้นต่ำไม่ถูกต้อง

กรณีเพิ่ม Maximum Vehicle < 0
    add_line    max_ve=-1
    Wait Until Element Is Visible    ${line_max_ve_alert}
    Run Keyword And Continue On Failure    Element Text Should Be    ${line_max_ve_alert}    พาหนะสูงสุดต้องมีจำนวนมากกว่าหรือเท่ากับ 1

กรณีเพิ่ม Maximum Vehicle = 0
    add_line    min_ve=0    max_ve=0
    Wait Until Element Is Visible    ${line_max_ve_alert}
    Run Keyword And Continue On Failure    Element Text Should Be    ${line_max_ve_alert}    พาหนะสูงสุดต้องมีจำนวนมากกว่าหรือเท่ากับ 1

กรณีเพิ่ม Maximum Vehicle > 0
    add_line    max_ve=6
    Wait Until Element Is Not Visible    ${line_max_ve_alert}
    Wait Until Element Is Visible    ${confirm_add_edit_line_text}
    
กรณีเพิ่ม Maximum Vehicle ด้วยเลขทศนิยม
    add_line    max_ve=6.5
    Wait Until Element Is Visible    ${line_max_ve_alert}
    Run Keyword And Continue On Failure    Element Text Should Be    ${line_max_ve_alert}    พาหนะสูงสุดไม่ถูกต้อง

กรณีเพิ่ม Maximum Vehicle < Minimum Vehicle
    add_line    min_ve=5    max_ve=6
    Wait Until Element Is Not Visible    ${line_max_ve_alert}
    Wait Until Element Is Visible    ${confirm_add_edit_line_text}

กรณีเพิ่ม Maximum Vehicle > Minimum Vehicle
    add_line    min_ve=6    max_ve=5
     Wait Until Element Is Visible    ${line_max_ve_alert}
    Run Keyword And Continue On Failure    Element Text Should Be    ${line_max_ve_alert}    พาหนะสูงสุดต้องมีจำนวนมากกว่าหรือเท่ากับพาหนะขั้นต่ำ

กรณีเพิ่ม Maximum Vehicle = Minimum Vehicle
    add_line    min_ve=5    max_ve=5
    Wait Until Element Is Not Visible    ${line_max_ve_alert}
    Wait Until Element Is Visible    ${confirm_add_edit_line_text}


กรณีเพิ่ม Minimum Trip < 0
    add_line    min_trip=-1
    Wait Until Element Is Visible    ${line_min_trip_alert}
    Run Keyword And Continue On Failure    Element Text Should Be    ${line_min_trip_alert}    เที่ยวขั้นต่ำต้องมีจำนวนมากกว่าหรือเท่ากับ 1

กรณีเพิ่ม Minimum Trip = 0
    add_line    min_trip=0 
    Wait Until Element Is Visible    ${line_min_trip_alert}
    Run Keyword And Continue On Failure    Element Text Should Be    ${line_min_trip_alert}    เที่ยวขั้นต่ำต้องมีจำนวนมากกว่าหรือเท่ากับ 1

กรณีเพิ่ม Minimum Trip > 0
    add_line    min_trip=1
    Wait Until Element Is Not Visible    ${line_min_trip_alert}
    Wait Until Element Is Visible    ${confirm_add_edit_line_text}
    
กรณีเพิ่ม Minimum Trip ด้วยเลขทศนิยม
    add_line    min_trip=1.5
    Wait Until Element Is Visible    ${line_min_trip_alert}
    Run Keyword And Continue On Failure    Element Text Should Be    ${line_min_trip_alert}    เที่ยวขั้นต่ำไม่ถูกต้อง

หน้าต่างยืนยันการเพิ่ม Line
    add_line
    Wait Until Element Is Visible    ${confirm_add_edit_line_title}    
    Run Keyword And Continue On Failure    Element Text Should Be    ${confirm_add_edit_line_title}    เพิ่มสาย
    Run Keyword And Continue On Failure    Element Text Should Be    ${confirm_add_edit_line_text}    คุณยืนยันที่จะเพิ่มสายใช่หรือไม่?
    Run Keyword And Continue On Failure    Element Text Should Be    ${confirm_confirm_add_edit_line_button}    ยืนยัน
    Run Keyword And Continue On Failure    Element Text Should Be    ${confirm_add_edit_cancel_line_button}    ยกเลิก


กรณีเพิ่ม Line ด้วยข้อมูลที่ครบถ้วนและถูกต้อง
    ${line_name}    Set Variable    888
    ${label}    Set Variable    888
    ${description}    Set Variable    สวนสยาม - ธนบุรี
    ${company}    Set Variable    บริษัท ศักดา ออนไลน์ 2จำกัด 
    ${status}    Set Variable    Active
    ${min_ve}    Set Variable    1
    ${max_ve}    Set Variable    2
    ${min_trip}    Set Variable    1


    add_line    line_name=${line_name}    label=${label}    description=${description}    company=${company}
    ...         status=${status}    min_ve=${min_ve}    max_ve=${max_ve}    min_trip=${min_trip} 

    Wait Until Element Is Visible    ${confirm_confirm_add_edit_line_button}
    Click Element    ${confirm_confirm_add_edit_line_button}
    Wait Until Element Is Visible    ${top_right_alert}    10
    Run Keyword And Continue On Failure    Element Text Should Be    ${top_right_alert}    เพิ่มสายสำเร็จ

    select_line    ${line_name} 
    Run Keyword And Continue On Failure    Element Text Should Be    ${first_result_description}    ${description}


    Wait Until Element Is Visible    ${middle_line_name}
    Run Keyword And Continue On Failure    Element Text Should Be    ${middle_line_name}    ${line_name}
    Run Keyword And Continue On Failure    Element Text Should Be    ${middle_line_status}    ${status}
    
    Run Keyword And Continue On Failure    Element Text Should Be    ${right_line_name}    ${line_name}
    Run Keyword And Continue On Failure    Element Text Should Be    ${right_description}    ${description}
    Run Keyword And Continue On Failure    Element Text Should Be    ${right_label}    ${label}
    Run Keyword And Continue On Failure    Element Text Should Be    ${right_min_ve_data}    ${min_ve}
    Run Keyword And Continue On Failure    Element Text Should Be    ${right_max_ve_data}    ${max_ve}
    Run Keyword And Continue On Failure    Element Text Should Be    ${right_min_trip_data}    ${min_trip}
    Run Keyword And Continue On Failure    Element Text Should Be    ${right_status_text}    ${status}
    Click Element    ${delete_line_button}
    Wait Until Element Is Visible    ${confirm_delete_line_button}
    Click Element    ${confirm_delete_line_button}

กรณีเลือก Line
    open_line_subline_menu
    select_line

ส่วนแสดงรายละเอียด Line ทางขวา
    open_line_subline_menu
    select_line
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    ${right_line_name}
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    ${edit_line_button}
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    ${delete_line_button}
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    ${right_description}
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    ${right_label}
    Run Keyword And Continue On Failure    Element Text Should Be    ${right_min_ve_label}    พาหนะขั้นต่ำ
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    ${right_min_ve_data}
    Run Keyword And Continue On Failure    Element Text Should Be    ${right_max_ve_label}    พาหนะสูงสุด
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    ${right_max_ve_data}
    Run Keyword And Continue On Failure    Element Text Should Be    ${right_min_trip_label}    เที่ยวขั้นต่ำ
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    ${right_min_trip_data}
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    ${right_company}
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    ${right_status_text}
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    ${right_status_button}

หน้า Edit Line
    open_line_subline_menu
    select_line
    Click Element    ${edit_line_button}
    Wait Until Element Is Visible    ${add_edit_line_button}
    Sleep    10

กรณี Edit Line โดยลบ Line Name ให้ว่าง
    open_line_subline_menu
    select_line
    Click Element    ${edit_line_button}
    Wait Until Element Is Visible    ${add_edit_line_button}
    Clear Element Text    ${line_name_field}
    Click Element    ${add_edit_line_button}
    Wait Until Element Is Visible    ${line_name_alert}
    Run Keyword And Continue On Failure    Element Text Should Be    ${line_name_alert}    โปรดระบุชื่อสาย

กรณี Edit Line โดยลบ Label ให้ว่าง
    open_line_subline_menu
    select_line
    Click Element    ${edit_line_button}
    Wait Until Element Is Visible    ${add_edit_line_button}
    Clear Element Text    ${line_label_field}
    Click Element    ${add_edit_line_button}
    Wait Until Element Is Visible    ${line_label_alert}
    Run Keyword And Continue On Failure    Element Text Should Be    ${line_label_alert}    โปรดระบุป้าย
    
กรณี Edit Line โดยลบ Description ให้ว่าง
    open_line_subline_menu
    select_line
    Click Element    ${edit_line_button}
    Wait Until Element Is Visible    ${add_edit_line_button}
    Clear Element Text    ${line_description_field}
    Click Element    ${add_edit_line_button}
    Wait Until Element Is Visible    ${line_description_alert}
    Run Keyword And Continue On Failure    Element Text Should Be    ${line_description_alert}    โปรดระบุรายละเอียด

กรณี Edit Line โดยลบ Minimum Vehicle ให้ว่าง
    open_line_subline_menu
    select_line
    Click Element    ${edit_line_button}
    Wait Until Element Is Visible    ${add_edit_line_button}
    Clear Element Text    ${line_min_ve_field}
    Click Element    ${add_edit_line_button}
    Wait Until Element Is Visible    ${line_min_ve_alert}
    Run Keyword And Continue On Failure    Element Text Should Be    ${line_min_ve_alert}    โปรดระบุพาหนะขั้นต่ำ

กรณี Edit Line โดยลบ Maximum Vehicle ให้ว่าง
    open_line_subline_menu
    select_line
    Click Element    ${edit_line_button}
    Wait Until Element Is Visible    ${add_edit_line_button}
    Clear Element Text    ${line_max_ve_field}
    Click Element    ${add_edit_line_button}
    Wait Until Element Is Visible    ${line_max_ve_alert}
    Run Keyword And Continue On Failure    Element Text Should Be    ${line_max_ve_alert}    โปรดระบุพาหนะสูงสุด

กรณี Edit Line โดยลบ Minimum Trip ให้ว่าง
    open_line_subline_menu
    select_line
    Click Element    ${edit_line_button}
    Wait Until Element Is Visible    ${add_edit_line_button}
    Clear Element Text    ${line_min_trip_field}
    Click Element    ${add_edit_line_button}
    Wait Until Element Is Visible    ${line_min_trip_alert}
    Run Keyword And Continue On Failure    Element Text Should Be    ${line_min_trip_alert}    โปรดระบุเที่ยวขั้นต่ำ

    

ส่วนแสดงตรงกลาง
    open_line_subline_menu
    Click Element    ${first_result}
    Wait Until Element Is Visible    ${middle_line_name}
    Wait Until Element Is Visible    ${middle_line_status}
    Wait Until Element Is Visible    ${add_new_sub_line_button}
    

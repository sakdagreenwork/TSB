# Test Data ที่่ต้องเตรียมไว้ก่อนทำการ Automate Test
# 1.line 99-99
# 2.sub line 99-99(9)    (ต้องอยู่ใน line 99-99)
# 3.Route เส้นทางการวิ่ง_Test1   (ต้องอยู่ใน sub line 99-99(9))


*** Settings ***
Library    SeleniumLibrary    screenshot_root_directory=/Users/sakda.l/Desktop/TSB Automate/Login/Failed Screenshot
Library    Collections
Library    DateTime
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
${add_edit_sub_line_depot_stop_label}    //*[@id="headlessui-portal-root"]//form/div[2]/div[2]/label

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

${confirm_add_edit_sub_line_title}    //*[@id="headlessui-portal-root"]/div[2]/div/div/div/div/div/div/h2    
${close_confirm_add_edit_sub_line_button}    //*[@id="headlessui-portal-root"]/div[2]/div/div/div/div/div/div/button
${confirm_add_edit_sub_line_text}    //*[@id="headlessui-portal-root"]/div[2]/div/div/div/div/div/div[2]/div
${confirm_add_edit_sub_line_button}    //*[@id="headlessui-portal-root"]/div[2]/div/div/div/div/div/div[3]/div/div/div[1]    
${cancel_confirm_add_edit_sub_line_button}    //*[@id="headlessui-portal-root"]/div[2]/div/div/div/div/div/div[3]/div/div/div[2]

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

&{month_convert}    1=January    2=February    3=March    4=April    5=May    6=June
...         7=July    8=August    9=September    10=October    11=November    12=December


*** Keywords ***
open_line_subline_menu
    Log In Valid
    Wait Until Element Is Visible    ${hamburger_button}    20
    Click Element    ${hamburger_button}
    Wait Until Element Is Visible    ${datamanage_button}    20
    Click Element    ${datamanage_button}
    Wait Until Element Is Visible    ${line_subline_button}
    Click Element    ${line_subline_button}
    Wait Until Element Is Visible    ${add_new_line_button}    15
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

add_sub_line
    [Arguments]    ${sub_line}=99-99(9)    ${depot_start}=อู่บางพลี    ${depot_stop}=อู่บางพลี
    Wait Until Element Is Visible    ${add_edit_sub_line_button}
    Input Text    ${add_edit_sub_line_name_field}    ${sub_line}
    Click Element    ${add_edit_sub_line_button}
    Input Text    ${add_edit_sub_line_depot_start_field}    ${depot_start}
    Wait Until Element Is Visible    //body/div[3]//*[text()="${depot_start}"]
    Click Element    //body/div[3]//*[text()="${depot_start}"]
    Input Text    ${add_edit_sub_line_depot_stop_field}    ${depot_stop}
    Wait Until Element Is Visible    //body/div[3]//*[text()="${depot_stop}"]
    Click Element    //body/div[3]//*[text()="${depot_stop}"]
    Click Element    ${add_edit_sub_line_button}

get_current_month
    ${dmy}    Get Current Date
    ${month}    Set Variable    ${dmy[5:7]}
    #${int_month}    Convert To Integer    ${month}    
    RETURN    ${month}

get_current_year
    ${dmy}    Get Current Date
    ${year}    Set Variable    ${dmy[0:4]}
    #${int_year}    Convert To Integer    ${year}    
    RETURN    ${year}

get_current_day
    ${dmy}    Get Current Date
    ${day}    Set Variable    ${dmy[8:10]}
    #${int_day}    Convert To Integer    ${day}    
    RETURN    ${day}

add_route  
    [Arguments]    ${sub_line}=99-99(9)    ${route_name}=เส้นทางการวิ่ง_Test1    ${start_year}=2050    ${start_month}=7    
    ...            ${start_day}=10         ${end_year}=2060    ${end_month}=3    ${end_day}=25    

    ${start_month_text}    Set Variable    ${month_convert}[${start_month}] 
    ${end_month_text}    Set Variable    ${month_convert}[${end_month}]

    Wait Until Element Is Visible    //*[@id="root"]/main//main/div//div[2]/div/div/div/div[./div/div/div[text()="${sub_line}"]]
    Click Element    //*[@id="root"]/main//main/div//div[2]/div/div/div/div[./div/div/div[text()="${sub_line}"]]
    Wait Until Element Is Visible    ${right_sub_line_name}
    Element Text Should Be    ${right_sub_line_name}    ${sub_line}
    Element Should Be Visible    ${add_new_route_button}
    Click Element    ${add_new_route_button}
    Wait Until Element Is Visible    ${add_route_button}
    Click Element    ${add_route_button}
    Input Text    ${route_field}    ${route_name}
    Click Element    //body/div[5]//*[text()="${route_name}"]
    Click Element    //*[@id="headlessui-portal-root"]//div[2]/form/div[2]/div[1]/div
    Click Element    //*[@class="flatpickr-calendar animate open arrowTop arrowLeft"]//select
    Sleep    1
    Click Element    //html/body/div[@class="flatpickr-calendar animate open arrowTop arrowLeft"][1]/div[1]/div/div/select/option[${start_month}]
    #Click Element    //html/body/div[3]/div[1]/div/div/select/option[1]
    Input Text    //html/body/div[@class="flatpickr-calendar animate open arrowTop arrowLeft"][1]/div/div/div/div/input    ${start_year}
    Click Element    //html/body/div[@class="flatpickr-calendar animate open arrowTop arrowLeft"][1]/div[2]/div/div[2]/div/span[@aria-label="${start_month_text} ${start_day}, ${start_year}"] 


    Click Element    //*[@id="headlessui-portal-root"]//div[2]/form/div[2]/div[2]/div
    Click Element    //*[@class="flatpickr-calendar animate open arrowTop arrowLeft"]//select
    Sleep    1
    Click Element    //html/body/div[@class="flatpickr-calendar animate open arrowTop arrowLeft"][1]/div[1]/div/div/select/option[${end_month}]
    #Click Element    //html/body/div[3]/div[1]/div/div/select/option[1]
    Input Text    //html/body/div[@class="flatpickr-calendar animate open arrowTop arrowLeft"][1]/div/div/div/div/input    ${end_year}
    Click Element    //html/body/div[@class="flatpickr-calendar animate open arrowTop arrowLeft"][1]/div[2]/div/div[2]/div/span[@aria-label="${end_month_text} ${end_day}, ${end_year}"] 
    Click Element    ${add_route_button}

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

กรณีกดปุ่ม x หน้า Add New Line
    open_add_line_menu
    Wait Until Element Is Visible    ${add_edit_line_button}    5
    Click Element    ${add_edit_line_close_button}
    Wait Until Element Is Not Visible    ${add_edit_line_close_button}    5
    Wait Until Element Is Visible    ${title}

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

จำนวนตัวอักษรสูงสุดกรณีเพิ่ม Line
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

กรณีเพิ่ม Minimum Vehicle < Maximum Vehicle
    add_line    min_ve=5    max_ve=6
    Wait Until Element Is Not Visible    ${line_max_ve_alert}
    Wait Until Element Is Visible    ${confirm_add_edit_line_text}

กรณีเพิ่ม Minimum Vehicle > Maximum Vehicle
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

กรณีกดปุ่ม x หน้าต่างยืนยันการเพิ่ม Line
    add_line
    Wait Until Element Is Visible    ${close_confirm_add_edit_sub_line_button}
    Click Element    ${close_confirm_add_edit_sub_line_button}
    Wait Until Element Is Not Visible    ${close_confirm_add_edit_sub_line_button}
    Wait Until Element Is Visible    ${title}

กรณีกดปุ่ม Cancel หน้าต่างยืนยันการเพิ่ม Line
    add_line
    Wait Until Element Is Visible    ${confirm_add_edit_cancel_line_button}
    Click Element    ${confirm_add_edit_cancel_line_button}
    Wait Until Element Is Not Visible    ${confirm_add_edit_cancel_line_button}
    Wait Until Element Is Visible    ${title}


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
    
หน้าต่างยืนยันการ Delete Line
    ${line_name}    Set Variable    Test99    
    open_line_subline_menu
    select_line    ${line_name}
    Click Element    ${delete_line_button}
    Wait Until Element Is Visible    ${confirm_delete_line_button}
    Run Keyword And Continue On Failure    Element Text Should Be    ${delete_line_title}    ลบสาย
    Run Keyword And Continue On Failure    Element Text Should Be    ${delete_line_text}    คุณยืนยันที่จะลบสาย : ${line_name} ใช่หรือไม่?   
    Run Keyword And Continue On Failure    Element Text Should Be    ${confirm_delete_line_button}    ยืนยัน
    Run Keyword And Continue On Failure    Element Text Should Be    ${cancel_delete_line_button}    ยกเลิก

กรณีกดปุ่ม x หน้าต่างยืนยันการ Delete Line
    ${line_name}    Set Variable    Test99    
    open_line_subline_menu
    select_line    ${line_name}
    Click Element    ${delete_line_button}
    Wait Until Element Is Visible    ${close_delete_line_button}
    Click Element    ${close_delete_line_button}
    Wait Until Element Is Not Visible    ${close_delete_line_button}
    Wait Until Element Is Visible    ${title}

กรณีกดปุ่ม Cancel หน้าต่างยืนยันการ Delete Line
    ${line_name}    Set Variable    Test99    
    open_line_subline_menu
    select_line    ${line_name}
    Click Element    ${delete_line_button}
    Wait Until Element Is Visible   ${cancel_delete_line_button}
    Click Element    ${cancel_delete_line_button}
    Wait Until Element Is Not Visible    ${cancel_delete_line_button}
    Wait Until Element Is Visible    ${title}



กรณี Delete Line
    #ลบ Line จากที่สร้างใหม่จาก case สร้าง Line
    open_line_subline_menu
    select_line    888
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

กรณีกดปุ่ม x หน้า Edit Line
    open_line_subline_menu
    select_line
    Click Element    ${edit_line_button}
    Wait Until Element Is Visible    ${add_edit_line_close_button}
    Click Element    ${add_edit_line_close_button}
    Wait Until Element Is Not Visible    ${add_edit_line_close_button}
    Wait Until Element Is Visible    ${title}

จำนวนตัวอักษรสูงสุดกรณี Edit Line
    open_line_subline_menu
    select_line
    Click Element    ${edit_line_button}
    Wait Until Element Is Visible    ${add_edit_line_button}
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

กรณี Edit Line โดยลบ Line Name ให้ว่าง
    open_line_subline_menu
    select_line
    Click Element    ${edit_line_button}
    Wait Until Element Is Visible    ${add_edit_line_button}
    Clear Element Text    ${line_name_field}
    Click Element    ${add_edit_line_button}
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
    Click Element    ${add_edit_line_button}
    Wait Until Element Is Visible    ${line_min_trip_alert}
    Run Keyword And Continue On Failure    Element Text Should Be    ${line_min_trip_alert}    โปรดระบุเที่ยวขั้นต่ำ

กรณี Edit Line Name ซ้ำกับที่มีอยู่ในระบบ
    open_line_subline_menu
    select_line
    Click Element    ${edit_line_button}
    Wait Until Element Is Visible    ${add_edit_line_button}
    Input Text    ${line_name_field}    PkTest Line1
    Click Element    ${add_edit_line_button}
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    ${line_name_alert}
    Run Keyword And Continue On Failure    Element Text Should Be    ${line_name_alert}    ชื่อสายนี้ถูกใช้งานแล้ว

กรณี Edit Minimum Vehicle < 0
    open_line_subline_menu
    select_line
    Click Element    ${edit_line_button}
    Wait Until Element Is Visible    ${add_edit_line_button}
    Input Text    ${line_min_ve_field}    -1
    Click Element    ${add_edit_line_button}
    Click Element    ${add_edit_line_button}
    Wait Until Element Is Visible    ${line_min_ve_alert}
    Run Keyword And Continue On Failure    Element Text Should Be    ${line_min_ve_alert}    พาหนะขั้นต่ำต้องมีจำนวนมากกว่าหรือเท่ากับ 1

กรณี Edit Minimum Vehicle = 0
    open_line_subline_menu
    select_line
    Click Element    ${edit_line_button}
    Wait Until Element Is Visible    ${add_edit_line_button}
    Input Text    ${line_min_ve_field}    0
    Click Element    ${add_edit_line_button}
    Click Element    ${add_edit_line_button}
    Wait Until Element Is Visible    ${line_min_ve_alert}
    Run Keyword And Continue On Failure    Element Text Should Be    ${line_min_ve_alert}    พาหนะขั้นต่ำต้องมีจำนวนมากกว่าหรือเท่ากับ 1

กรณี Edit Minimum Vehicle > 0
    ${new_min_ve}    Set Variable    1
    ${old_min_ve}    Set Variable    2

    open_line_subline_menu
    select_line    99-99
    Click Element    ${edit_line_button}
    Wait Until Element Is Visible    ${add_edit_line_button}
    Input Text    ${line_min_ve_field}    ${new_min_ve}
    Click Element    ${add_edit_line_button}
    Click Element    ${add_edit_line_button}
    Run Keyword And Continue On Failure    Wait Until Element Is Not Visible    ${line_min_ve_alert}
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    ${confirm_add_edit_line_text}
    
    Click Element    ${confirm_confirm_add_edit_line_button}
    
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    ${top_right_alert}
    Run Keyword And Continue On Failure    Element Text Should Be    ${top_right_alert}    แก้ไขสายสำเร็จ
    select_line    99-99
    Run Keyword And Continue On Failure    Element Text Should Be    ${right_min_ve_data}    ${new_min_ve}

    #ส่วนนี้จะแก้ไขค่าให้เป็นค่าเดิม
    Click Element    ${edit_line_button}
    Wait Until Element Is Visible    ${add_edit_line_button}
    Input Text    ${line_min_ve_field}    ${old_min_ve}
    Click Element    ${add_edit_line_button}
    Click Element    ${add_edit_line_button}
    Run Keyword And Continue On Failure    Wait Until Element Is Not Visible    ${line_min_ve_alert}
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    ${confirm_add_edit_line_text}
    
    Click Element    ${confirm_confirm_add_edit_line_button}

กรณี Edit Minimum Vehicle ด้วยเลขทศนิยม
    open_line_subline_menu
    select_line
    Click Element    ${edit_line_button}
    Wait Until Element Is Visible    ${add_edit_line_button}
    Input Text    ${line_min_ve_field}    1.5
    Click Element    ${add_edit_line_button}
    Click Element    ${add_edit_line_button}
    Wait Until Element Is Visible    ${line_min_ve_alert}
    Run Keyword And Continue On Failure    Element Text Should Be    ${line_min_ve_alert}    พาหนะขั้นต่ำไม่ถูกต้อง

กรณี Edit Minimum Vehicle > Maximum Vehicle
    open_line_subline_menu
    select_line
    Click Element    ${edit_line_button}
    Wait Until Element Is Visible    ${add_edit_line_button}
    Input Text    ${line_min_ve_field}    10
    Click Element    ${add_edit_line_button}
    Click Element    ${add_edit_line_button}
    Wait Until Element Is Visible    ${line_max_ve_alert}
    Run Keyword And Continue On Failure    Element Text Should Be    ${line_max_ve_alert}    พาหนะสูงสุดต้องมีจำนวนมากกว่าหรือเท่ากับพาหนะขั้นต่ำ

กรณี Edit Maximum Vehicle < 0
    open_line_subline_menu
    select_line
    Click Element    ${edit_line_button}
    Wait Until Element Is Visible    ${add_edit_line_button}
    Input Text    ${line_max_ve_field}    -1
    Click Element    ${add_edit_line_button}
    Click Element    ${add_edit_line_button}
    Wait Until Element Is Visible    ${line_max_ve_alert}
    Run Keyword And Continue On Failure    Element Text Should Be    ${line_max_ve_alert}    พาหนะสูงสุดต้องมีจำนวนมากกว่าหรือเท่ากับ 1

กรณี Edit Maximum Vehicle = 0
    open_line_subline_menu
    select_line
    Click Element    ${edit_line_button}
    Wait Until Element Is Visible    ${add_edit_line_button}
    Input Text    ${line_max_ve_field}    0
    Click Element    ${add_edit_line_button}
    Click Element    ${add_edit_line_button}
    Wait Until Element Is Visible    ${line_max_ve_alert}
    Run Keyword And Continue On Failure    Element Text Should Be    ${line_max_ve_alert}    พาหนะสูงสุดต้องมีจำนวนมากกว่าหรือเท่ากับ 1

กรณี Edit Maximum Vehicle > 0
    ${new_max_ve}    Set Variable    3
    ${old_max_ve}    Set Variable    4

    open_line_subline_menu
    select_line    99-99
    Click Element    ${edit_line_button}
    Wait Until Element Is Visible    ${add_edit_line_button}
    Input Text    ${line_max_ve_field}    ${new_max_ve}
    Click Element    ${add_edit_line_button}
    Click Element    ${add_edit_line_button}
    Run Keyword And Continue On Failure    Wait Until Element Is Not Visible    ${line_max_ve_alert}
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    ${confirm_add_edit_line_text}
    
    Click Element    ${confirm_confirm_add_edit_line_button}
    
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    ${top_right_alert}
    Run Keyword And Continue On Failure    Element Text Should Be    ${top_right_alert}    แก้ไขสายสำเร็จ
    select_line    99-99
    Run Keyword And Continue On Failure    Element Text Should Be    ${right_max_ve_data}    ${new_max_ve}

    #ส่วนนี้จะแก้ไขค่าให้เป็นค่าเดิม
    Click Element    ${edit_line_button}
    Wait Until Element Is Visible    ${add_edit_line_button}
    Input Text    ${line_max_ve_field}    ${old_max_ve}
    Click Element    ${add_edit_line_button}
    Click Element    ${add_edit_line_button}
    Run Keyword And Continue On Failure    Wait Until Element Is Not Visible    ${line_max_ve_alert}
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    ${confirm_add_edit_line_text}
    
    Click Element    ${confirm_confirm_add_edit_line_button}

กรณี Edit Maximum Vehicle ด้วยเลขทศนิยม
    open_line_subline_menu
    select_line
    Click Element    ${edit_line_button}
    Wait Until Element Is Visible    ${add_edit_line_button}
    Input Text    ${line_max_ve_field}    1.5
    Click Element    ${add_edit_line_button}
    Click Element    ${add_edit_line_button}
    Wait Until Element Is Visible    ${line_max_ve_alert}
    Run Keyword And Continue On Failure    Element Text Should Be    ${line_max_ve_alert}    พาหนะขั้นต่ำไม่ถูกต้อง

กรณี Edit Maximum Vehicle < Minimum Vehicle
    ${max_ve}    Set Variable    1
    ${min_ve}    Set Variable    2    
    
    open_line_subline_menu
    select_line
    Click Element    ${edit_line_button}
    Wait Until Element Is Visible    ${add_edit_line_button}
    Input Text    ${line_min_ve_field}    ${min_ve}
    Input Text    ${line_max_ve_field}    ${max_ve}
    Click Element    ${add_edit_line_button}
    Click Element    ${add_edit_line_button}
    Wait Until Element Is Visible    ${line_max_ve_alert}
    Run Keyword And Continue On Failure    Element Text Should Be    ${line_max_ve_alert}    พาหนะสูงสุดต้องมีจำนวนมากกว่าหรือเท่ากับพาหนะขั้นต่ำ

กรณี Edit Maximum Vehicle > Minimum Vehicle
    ${max_ve}    Set Variable    2
    ${min_ve}    Set Variable    1    
    
    open_line_subline_menu
    select_line
    Click Element    ${edit_line_button}
    Wait Until Element Is Visible    ${add_edit_line_button}
    Input Text    ${line_min_ve_field}    ${min_ve}
    Input Text    ${line_max_ve_field}    ${max_ve}
    Click Element    ${add_edit_line_button}
    Click Element    ${add_edit_line_button}
    Run Keyword And Continue On Failure    Wait Until Element Is Not Visible    ${line_max_ve_alert}
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    ${confirm_add_edit_line_text}

กรณี Edit Maximum Vehicle = Minimum Vehicle
    ${max_ve}    Set Variable    1
    ${min_ve}    Set Variable    1    
    
    open_line_subline_menu
    select_line
    Click Element    ${edit_line_button}
    Wait Until Element Is Visible    ${add_edit_line_button}
    Input Text    ${line_min_ve_field}    ${min_ve}
    Input Text    ${line_max_ve_field}    ${max_ve}
    Click Element    ${add_edit_line_button}
    Click Element    ${add_edit_line_button}
    Run Keyword And Continue On Failure    Wait Until Element Is Not Visible    ${line_max_ve_alert}
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    ${confirm_add_edit_line_text}

กรณี Edit Minimum Trip < 0
    open_line_subline_menu
    select_line
    Click Element    ${edit_line_button}
    Wait Until Element Is Visible    ${add_edit_line_button}
    Input Text    ${line_min_trip_field}    -1
    Click Element    ${add_edit_line_button}
    Click Element    ${add_edit_line_button}
    Wait Until Element Is Visible    ${line_min_trip_alert}
    Run Keyword And Continue On Failure    Element Text Should Be    ${line_min_trip_alert}    เที่ยวขั้นต่ำต้องมีจำนวนมากกว่าหรือเท่ากับ 1

กรณี Edit Minimum Trip = 0
    open_line_subline_menu
    select_line
    Click Element    ${edit_line_button}
    Wait Until Element Is Visible    ${add_edit_line_button}
    Input Text    ${line_min_trip_field}    0
    Click Element    ${add_edit_line_button}
    Click Element    ${add_edit_line_button}
    Wait Until Element Is Visible    ${line_min_trip_alert}
    Run Keyword And Continue On Failure    Element Text Should Be    ${line_min_trip_alert}    เที่ยวขั้นต่ำต้องมีจำนวนมากกว่าหรือเท่ากับ 1

กรณี Edit Minimum Trip > 0
    ${new_min_trip}    Set Variable    1
    ${old_min_trip}    Set Variable    2

    open_line_subline_menu
    select_line    99-99
    Click Element    ${edit_line_button}
    Wait Until Element Is Visible    ${add_edit_line_button}
    Input Text    ${line_min_trip_field}    ${new_min_trip}
    Click Element    ${add_edit_line_button}
    Click Element    ${add_edit_line_button}
    Run Keyword And Continue On Failure    Wait Until Element Is Not Visible    ${line_min_trip_alert}
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    ${confirm_add_edit_line_text}
    
    Click Element    ${confirm_confirm_add_edit_line_button}
    
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    ${top_right_alert}
    Run Keyword And Continue On Failure    Element Text Should Be    ${top_right_alert}    แก้ไขสายสำเร็จ
    select_line    99-99
    Run Keyword And Continue On Failure    Element Text Should Be    ${right_min_trip_data}    ${new_min_trip}

    #ส่วนนี้จะแก้ไขค่าให้เป็นค่าเดิม
    Click Element    ${edit_line_button}
    Wait Until Element Is Visible    ${add_edit_line_button}
    Input Text    ${line_min_trip_field}    ${old_min_trip}
    Click Element    ${add_edit_line_button}
    Click Element    ${add_edit_line_button}
    Run Keyword And Continue On Failure    Wait Until Element Is Not Visible    ${line_min_trip_alert}
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    ${confirm_add_edit_line_text}
    
    Click Element    ${confirm_confirm_add_edit_line_button}

กรณี Edit Minimum Trip ด้วยเลขทศนิยม
    open_line_subline_menu
    select_line
    Click Element    ${edit_line_button}
    Wait Until Element Is Visible    ${add_edit_line_button}
    Input Text    ${line_min_ve_field}    1.5
    Click Element    ${add_edit_line_button}
    Click Element    ${add_edit_line_button}
    Wait Until Element Is Visible    ${line_min_ve_alert}
    Run Keyword And Continue On Failure    Element Text Should Be    ${line_min_ve_alert}    เที่ยวขั้นต่ำไม่ถูกต้อง

กรณี Edit Line Name
    ${new_line_name}    Set Variable    99-99 New
    ${old_line_name}    Set Variable    99-99

    open_line_subline_menu
    select_line    ${old_line_name}
    Click Element    ${edit_line_button}
    Wait Until Element Is Visible    ${add_edit_line_button}
    Input Text    ${line_name_field}    ${new_line_name}
    Click Element    ${add_edit_line_button}
    Run Keyword And Continue On Failure    Wait Until Element Is Not Visible    ${line_name_alert}
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    ${confirm_add_edit_line_text}
    
    Click Element    ${confirm_confirm_add_edit_line_button}
    
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    ${top_right_alert}
    Run Keyword And Continue On Failure    Element Text Should Be    ${top_right_alert}    แก้ไขสายสำเร็จ
    select_line    ${new_line_name}
    Run Keyword And Continue On Failure    Element Text Should Be    ${middle_line_name}    ${new_line_name}
    Run Keyword And Continue On Failure    Element Text Should Be    ${right_line_name}    ${new_line_name}
    #ส่วนนี้จะแก้ไขค่าให้เป็นค่าเดิม
    Click Element    ${edit_line_button}
    Wait Until Element Is Visible    ${add_edit_line_button}
    Input Text    ${line_name_field}    ${old_line_name}
    Click Element    ${add_edit_line_button}
    Run Keyword And Continue On Failure    Wait Until Element Is Not Visible    ${line_name_alert}
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    ${confirm_add_edit_line_text}
    
    Click Element    ${confirm_confirm_add_edit_line_button}

กรณี Edit Label
    ${new_label}    Set Variable    99-99 New
    ${old_label}    Set Variable    99-99

    open_line_subline_menu
    select_line    99-99
    Click Element    ${edit_line_button}
    Wait Until Element Is Visible    ${add_edit_line_button}
    Input Text    ${line_label_field}    ${new_label}
    Click Element    ${add_edit_line_button}
    Run Keyword And Continue On Failure    Wait Until Element Is Not Visible    ${line_label_alert}
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    ${confirm_add_edit_line_text}
    
    Click Element    ${confirm_confirm_add_edit_line_button}
    
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    ${top_right_alert}
    Run Keyword And Continue On Failure    Element Text Should Be    ${top_right_alert}    แก้ไขสายสำเร็จ
    select_line    99-99
    Run Keyword And Continue On Failure    Element Text Should Be    ${right_label}    ${new_label}
    #ส่วนนี้จะแก้ไขค่าให้เป็นค่าเดิม
    Click Element    ${edit_line_button}
    Wait Until Element Is Visible    ${add_edit_line_button}
    Input Text    ${line_label_field}    ${old_label}
    Click Element    ${add_edit_line_button}
    Run Keyword And Continue On Failure    Wait Until Element Is Not Visible    ${line_label_alert}
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    ${confirm_add_edit_line_text}
    
    Click Element    ${confirm_confirm_add_edit_line_button}

กรณี Edit Description
    ${new_des}    Set Variable    Test กับ บริษัท ศักดา New
    ${old_des}    Set Variable    Test กับ บริษัท ศักดา

    open_line_subline_menu
    select_line    99-99
    Click Element    ${edit_line_button}
    Wait Until Element Is Visible    ${add_edit_line_button}
    Input Text    ${line_description_field}    ${new_des}
    Click Element    ${add_edit_line_button}
    Run Keyword And Continue On Failure    Wait Until Element Is Not Visible    ${line_description_alert}
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    ${confirm_add_edit_line_text}
    
    Click Element    ${confirm_confirm_add_edit_line_button}
    
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    ${top_right_alert}
    Run Keyword And Continue On Failure    Element Text Should Be    ${top_right_alert}    แก้ไขสายสำเร็จ
    select_line    99-99
    Run Keyword And Continue On Failure    Element Text Should Be    ${right_description}    ${new_des}
    #ส่วนนี้จะแก้ไขค่าให้เป็นค่าเดิม
    Click Element    ${edit_line_button}
    Wait Until Element Is Visible    ${add_edit_line_button}
    Input Text    ${line_description_field}    ${old_des}
    Click Element    ${add_edit_line_button}
    Run Keyword And Continue On Failure    Wait Until Element Is Not Visible    ${line_description_alert}
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    ${confirm_add_edit_line_text}
    
    Click Element    ${confirm_confirm_add_edit_line_button}

กรณี Edit Company
    ${new_company}    Set Variable    บริษัท พู ออนไลน์ จำกัด 11
    ${old_company}    Set Variable    บริษัท ไทย สมายล์ โบ้ท จำกัด

    open_line_subline_menu
    select_line    99-99
    Click Element    ${edit_line_button}
    Wait Until Element Is Visible    ${add_edit_line_button}
    Input Text    ${line_company_field}    ${new_company}
    Click Element    //*[@id="icon_s"]//*[text()="${new_company}"]
    Click Element    ${add_edit_line_button}
    Run Keyword And Continue On Failure    Wait Until Element Is Not Visible    ${line_company_alert}
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    ${confirm_add_edit_line_text}
    
    Click Element    ${confirm_confirm_add_edit_line_button}
    
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    ${top_right_alert}
    Run Keyword And Continue On Failure    Element Text Should Be    ${top_right_alert}    แก้ไขสายสำเร็จ
    select_line    99-99
    Run Keyword And Continue On Failure    Element Text Should Be    ${right_company}    ${new_company}

    #ส่วนนี้จะแก้ไขค่าให้เป็นค่าเดิม
    Click Element    ${edit_line_button}
    Wait Until Element Is Visible    ${add_edit_line_button}
    Input Text    ${line_company_field}    ${old_company}
    Click Element    //*[@id="icon_s"]//*[text()="${old_company}"]
    Click Element    ${add_edit_line_button}
    Run Keyword And Continue On Failure    Wait Until Element Is Not Visible    ${line_company_alert}
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    ${confirm_add_edit_line_text}
    
    Click Element    ${confirm_confirm_add_edit_line_button}

กรณี Edit Status
    ${new_status}    Set Variable    InActive
    ${old_status}    Set Variable    Active

    open_line_subline_menu
    select_line    99-99
    Click Element    ${edit_line_button}
    Wait Until Element Is Visible    ${add_edit_line_button}
    Input Text    ${line_status_field}    ${new_status}
    Click Element    //*[@id="icon_s"]//*[text()="${new_status}"]
    Click Element    ${add_edit_line_button}
    Run Keyword And Continue On Failure    Wait Until Element Is Not Visible    ${line_status_alert}
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    ${confirm_add_edit_line_text}
    
    Click Element    ${confirm_confirm_add_edit_line_button}
    
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    ${top_right_alert}
    Run Keyword And Continue On Failure    Element Text Should Be    ${top_right_alert}    แก้ไขสายสำเร็จ
    select_line    99-99
    #Run Keyword And Continue On Failure    Element Text Should Be    ${right_status_text}    ${new_status}
    Run Keyword And Continue On Failure    Element Text Should Be    ${middle_line_status}    ${new_status}
    #ส่วนนี้จะแก้ไขค่าให้เป็นค่าเดิม
    Click Element    ${edit_line_button}
    Wait Until Element Is Visible    ${add_edit_line_button}
    Input Text    ${line_status_field}    ${old_status}
    Click Element    //*[@id="icon_s"]//*[text()="${old_status}"]
    Click Element    ${add_edit_line_button}
    Run Keyword And Continue On Failure    Wait Until Element Is Not Visible    ${line_status_alert}
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    ${confirm_add_edit_line_text}
    
    Click Element    ${confirm_confirm_add_edit_line_button}

หน้าต่างยืนยันการ Edit Line    
    open_line_subline_menu
    select_line    99-99
    Click Element    ${edit_line_button}
    Wait Until Element Is Visible    ${add_edit_line_button}
    Click Element    ${add_edit_line_button}    
    Wait Until Element Is Visible    ${confirm_confirm_add_edit_line_button}
    Run Keyword And Continue On Failure    Element Text Should Be    ${confirm_add_edit_line_title}    แก้ไขสาย
    Run Keyword And Continue On Failure    Element Text Should Be    ${confirm_add_edit_line_text}    คุณยืนยันที่จะเพิ่มสายใช่หรือไม่?    
    Run Keyword And Continue On Failure    Element Text Should Be    ${confirm_confirm_add_edit_line_button}    ยืนยัน
    Run Keyword And Continue On Failure    Element Text Should Be    ${confirm_add_edit_cancel_line_button}    ยกเลิก

กรณีกดปุ่ม x หน้าต่างยืนยันการ Edit Line
    open_line_subline_menu
    select_line    99-99
    Click Element    ${edit_line_button}
    Wait Until Element Is Visible    ${add_edit_line_button}
    Click Element    ${add_edit_line_button}    
    Wait Until Element Is Visible    ${confirm_add_edit_line_close_button}
    Click Element    ${confirm_add_edit_line_close_button}
    Wait Until Element Is Not Visible    ${confirm_add_edit_line_close_button}
    Wait Until Element Is Visible    ${title}


กรณีกดปุ่ม Cancel หน้าต่งยืนยันการ Edit Line
    open_line_subline_menu
    select_line    99-99
    Click Element    ${edit_line_button}
    Wait Until Element Is Visible    ${add_edit_line_button}
    Click Element    ${add_edit_line_button}    
    Wait Until Element Is Visible    ${confirm_add_edit_cancel_line_button}
    Click Element    ${confirm_add_edit_cancel_line_button}
    Wait Until Element Is Not Visible    ${confirm_add_edit_cancel_line_button}
    Wait Until Element Is Visible    ${title}

ส่วนแสดงตรงกลาง
    open_line_subline_menu
    Click Element    ${first_result}
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    ${middle_line_name}
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    ${middle_line_status}
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    ${add_new_sub_line_button}
    
หน้าต่าง Add New Sub Line
    open_line_subline_menu
    select_line    99-99
    Click Element    ${add_new_sub_line_button}
    Wait Until Element Is Visible    ${add_edit_sub_line_button}
    Run Keyword And Continue On Failure    Element Text Should Be    ${add_edit_sub_line_title}    เพิ่มสายย่อย
    Run Keyword And Continue On Failure    Element Text Should Be    ${add_edit_sub_line_name_label}    สายย่อย
    ${sub_line_name_place}    Get Element Attribute    ${add_edit_sub_line_name_field}    placeholder
    Run Keyword And Continue On Failure    Should Be Equal    ${sub_line_name_place}    สายย่อย
    Run Keyword And Continue On Failure    Element Text Should Be    ${add_edit_sub_line_depot_start_label}    อู่ต้นทาง
    Run Keyword And Continue On Failure    Element Text Should Be    ${add_edit_sub_line_depot_start_placeholder}    Select...
    Run Keyword And Continue On Failure    Element Text Should Be    ${add_edit_sub_line_depot_stop_label}    อู่ปลายทาง
    Run Keyword And Continue On Failure    Element Text Should Be    ${add_edit_sub_line_depot_stop_placeholder}    Select...
    Run Keyword And Continue On Failure    Element Text Should Be    ${add_edit_sub_line_button_text}    เพิ่ม

กรณีกดปุ่ม x หน้า Add New Sub Line
    open_line_subline_menu
    select_line    99-99
    Click Element    ${add_new_sub_line_button}
    Wait Until Element Is Visible   ${close_add_edit_sub_line_button}
    Click Element    ${close_add_edit_sub_line_button}
    Wait Until Element Is Not Visible    ${close_add_edit_sub_line_button}
    Wait Until Element Is Visible    ${title}

จำนวนตัวอักษรสูงสุดกรณี Add Sub Line
    open_line_subline_menu
    select_line    99-99
    Click Element    ${add_new_sub_line_button}
    Wait Until Element Is Visible    ${add_edit_sub_line_button}
    ${max_sub_line}    Get Element Attribute    ${add_edit_sub_line_name_field}    maxlength
    Should Be Equal    ${max_sub_line}    30
    
กรณี Add Sub Line โดยไม่กรอกข้อมูล
    open_line_subline_menu
    select_line    99-99
    Click Element    ${add_new_sub_line_button}
    Wait Until Element Is Visible    ${add_edit_sub_line_button}
    Click Element    ${add_edit_sub_line_button}
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    ${sub_line_alert}
    Run Keyword And Continue On Failure    Element Text Should Be    ${sub_line_alert}    โปรดระบุชื่อสายย่อย
    Run Keyword And Continue On Failure    Element Text Should Be    ${depot_start_alert}    โปรดระบุอู่เริ่มต้น
    Run Keyword And Continue On Failure    Element Text Should Be    ${depot_stop_alert}    โปรดระบุอู่ปลายทาง

กรณี Add Sub Line โดยกรอก Sub Line ที่ถูกใช้งานแล้ว
    open_line_subline_menu
    select_line    99-99
    Click Element    ${add_new_sub_line_button}
    add_sub_line    sub_line=99-99(5)
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    ${sub_line_alert}
    Run Keyword And Continue On Failure    Element Text Should Be    ${sub_line_alert}    ชื่อสายย่อยนี้ถูกใช้งานแล่ว
    Run Keyword And Continue On Failure    Wait Until Element Is Not Visible    ${confirm_confirm_add_edit_line_button}

หน้าต่างยืนยันการ Add Sub Line
    open_line_subline_menu
    select_line    99-99
    Click Element    ${add_new_sub_line_button}
    add_sub_line
    Wait Until Element Is Visible    ${confirm_add_edit_sub_line_button}
    Run Keyword And Continue On Failure    Element Text Should Be    ${confirm_add_edit_sub_line_title}    เพิ่มสายย่อย
    Run Keyword And Continue On Failure    Element Text Should Be    ${confirm_add_edit_sub_line_text}    คุณยืนยันที่จะเพิ่มสายย่อยใช่หรือไม่?
    Run Keyword And Continue On Failure    Element Text Should Be    ${confirm_add_edit_sub_line_button}    ยืนยัน
    Run Keyword And Continue On Failure    Element Text Should Be    ${cancel_confirm_add_edit_sub_line_button}    ยกเลิก

กรณีกดปุ่ม x หน้าต่างยืนยันการ Add Sub Line
    open_line_subline_menu
    select_line    99-99
    Click Element    ${add_new_sub_line_button}
    add_sub_line
    Wait Until Element Is Visible    ${close_confirm_add_edit_sub_line_button}
    Click Element    ${close_confirm_add_edit_sub_line_button}
    Wait Until Element Is Not Visible    ${close_confirm_add_edit_sub_line_button}
    Wait Until Element Is Visible    ${title}

กรณีกดปุ่ม Cancel หน้าต่างยืนยันการ Add Sub Line
    open_line_subline_menu
    select_line    99-99
    Click Element    ${add_new_sub_line_button}
    add_sub_line
    Wait Until Element Is Visible    ${cancel_confirm_add_edit_sub_line_button}
    Click Element    ${cancel_confirm_add_edit_sub_line_button}
    Wait Until Element Is Not Visible    ${cancel_confirm_add_edit_sub_line_button}
    Wait Until Element Is Visible    ${title}

กรณี Add Sub Line ด้วยข้อมูลที่ครบถ้วนและถูกต้อง
    ${sub_line}    Set Variable    99-99(99)
    ${depot_start}    Set Variable    อู่บางพลี
    ${depot_stop}    Set Variable    อู่ศาลายา
    open_line_subline_menu
    select_line    99-99    
    Click Element    ${add_new_sub_line_button}
    add_sub_line    sub_line=${sub_line}    depot_start=${depot_start}    depot_stop=${depot_stop}
    Click Element    ${confirm_add_edit_sub_line_button}
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    ${top_right_alert}
    Run Keyword And Continue On Failure    Element Text Should Be    ${top_right_alert}    เพิ่มสายย่อยสำเร็จ
    Wait Until Element Is Visible    //*[@id="root"]/main//main/div//div[2]/div/div/div/div[./div/div/div[text()="${sub_line}"]]
    Run Keyword And Continue On Failure    Element Text Should Be    //*[@id="root"]/main//main/div//div[2]/div/div/div/div/div/div/div[text()="${sub_line}"]/div    ${depot_start} - ${depot_stop}

    Click Element    //*[@id="root"]/main//main/div//div[2]/div/div/div/div[./div/div/div[text()="${sub_line}"]]
    Wait Until Element Is Visible    ${right_sub_line_name}
    Element Text Should Be    ${right_sub_line_name}    ${sub_line}

หน้าต่างยืนยันการ Delete Sub Line
    ${sub_line_name}    Set Variable    99-99(99)
    open_line_subline_menu
    select_line    99-99
    Wait Until Element Is Visible    //*[@id="root"]/main//main/div//div[2]/div/div/div/div/div[./div/div[text()="${sub_line_name}"]]/div[2]/div/div/div
    Click Element    //*[@id="root"]/main//main/div//div[2]/div/div/div/div/div[./div/div[text()="${sub_line_name}"]]/div[2]/div/div/div
    Wait Until Element Is Visible    ${confirm_delete_sub_line_button}
    Run Keyword And Continue On Failure    Element Text Should Be    ${delete_sub_line_title}    ลบสายย่อย
    Run Keyword And Continue On Failure    Element Text Should Be    ${delete_sub_line_title}    คุณยืนยันที่จะลบสายย่อย : ${sub_line_name} ใช่หรือไม่?
    Run Keyword And Continue On Failure    Element Text Should Be    ${confirm_delete_sub_line_button}    ยืนยัน
    Run Keyword And Continue On Failure    Element Text Should Be    ${cancel_delete_sub_line_button}    ยกเลิก

กรณีกดปุ่ม x หน้าต่างยืนยันการ Delete Sub Line
    ${sub_line_name}    Set Variable    99-99(9)
    open_line_subline_menu
    select_line    99-99
    Wait Until Element Is Visible    //*[@id="root"]/main//main/div//div[2]/div/div/div/div/div[./div/div[text()="${sub_line_name}"]]/div[2]/div/div/div
    Click Element    //*[@id="root"]/main//main/div//div[2]/div/div/div/div/div[./div/div[text()="${sub_line_name}"]]/div[2]/div/div/div
    Wait Until Element Is Visible    ${close_delete_sub_line_button}
    Click Element    ${close_delete_sub_line_button}   
    Wait Until Element Is Not Visible    ${close_delete_sub_line_button}
    Wait Until Element Is Visible    ${title}

กรณีกดปุ่ม Cancel หน้าต่างยืนยันการ Delete Sub Line
    ${sub_line_name}    Set Variable    99-99(9)
    open_line_subline_menu
    select_line    99-99
    Wait Until Element Is Visible    //*[@id="root"]/main//main/div//div[2]/div/div/div/div/div[./div/div[text()="${sub_line_name}"]]/div[2]/div/div/div
    Click Element    //*[@id="root"]/main//main/div//div[2]/div/div/div/div/div[./div/div[text()="${sub_line_name}"]]/div[2]/div/div/div
    Wait Until Element Is Visible    ${cancel_delete_sub_line_button}
    Click Element    ${cancel_delete_sub_line_button}
    Wait Until Element Is Not Visible    ${cancel_delete_sub_line_button}
    Wait Until Element Is Visible    ${title}

กรณี Delete Sub Line
    ${sub_line_name}    Set Variable    99-99(99)
    open_line_subline_menu
    select_line    99-99
    Wait Until Element Is Visible    //*[@id="root"]/main//main/div//div[2]/div/div/div/div/div[./div/div[text()="${sub_line_name}"]]/div[2]/div/div/div
    Click Element    //*[@id="root"]/main//main/div//div[2]/div/div/div/div/div[./div/div[text()="${sub_line_name}"]]/div[2]/div/div/div
    Wait Until Element Is Visible    ${confirm_delete_sub_line_button}
    Click Element    ${confirm_delete_sub_line_button}
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    ${top_right_alert}
    Run Keyword And Continue On Failure    Element Text Should Be    ${top_right_alert}    ลบสายย่อยสำเร็จ
    Wait Until Element Is Not Visible    //*[@id="root"]/main//main/div//div[2]/div/div/div/div/div[./div/div[text()="${sub_line_name}"]]/div[2]/div/div/div    
  
หน้าต่าง Edit Sub Line
    open_line_subline_menu
    select_line    99-99
    Wait Until Element Is Visible    //*[@id="root"]/main//main/div//div[2]/div/div/div/div/div[./div/div[text()="99-99(5)"]]/div[2]/div/div[1]/button
    Click Element    //*[@id="root"]/main//main/div//div[2]/div/div/div/div/div[./div/div[text()="99-99(5)"]]/div[2]/div/div[1]/button
    Wait Until Element Is Visible    ${add_edit_sub_line_button}
    Run Keyword And Continue On Failure    Element Text Should Be    ${add_edit_sub_line_title}    แก้ไขสายย่อย
    Run Keyword And Continue On Failure    Element Text Should Be    ${add_edit_sub_line_name_label}    สายย่อย
    ${sub_line_name_place}    Get Element Attribute    ${add_edit_sub_line_name_field}    placeholder
    Run Keyword And Continue On Failure    Should Be Equal    ${sub_line_name_place}    สายย่อย
    Run Keyword And Continue On Failure    Element Text Should Be    ${add_edit_sub_line_depot_start_label}    อู่ต้นทาง
    Run Keyword And Continue On Failure    Element Text Should Be    ${add_edit_sub_line_depot_stop_label}    อู่ปลายทาง
    Run Keyword And Continue On Failure    Element Text Should Be    ${add_edit_sub_line_button_text}    บันทึก

กรณีกดปุ่ม x หน้า Edit Sub Line
    open_line_subline_menu
    select_line    99-99
    Wait Until Element Is Visible    //*[@id="root"]/main//main/div//div[2]/div/div/div/div/div[./div/div[text()="99-99(5)"]]/div[2]/div/div[1]/button
    Click Element    //*[@id="root"]/main//main/div//div[2]/div/div/div/div/div[./div/div[text()="99-99(5)"]]/div[2]/div/div[1]/button
    Wait Until Element Is Visible    ${close_add_edit_sub_line_button}
    Click Element    ${close_add_edit_sub_line_button}
    Wait Until Element Is Not Visible    ${close_add_edit_sub_line_button}
    Wait Until Element Is Visible    ${title}

กรณี Edit Sub Line Name ซ้ำกับที่มีอยู่
    ${old_sub_line_name}    Set Variable    99-99(4)
    ${new_sub_line_name}    Set Variable    99-99(3)
    open_line_subline_menu
    select_line    99-99
    Wait Until Element Is Visible    //*[@id="root"]/main//main/div//div[2]/div/div/div/div/div[./div/div[text()="${old_sub_line_name}"]]/div[2]/div/div[1]/button
    Click Element    //*[@id="root"]/main//main/div//div[2]/div/div/div/div/div[./div/div[text()="${old_sub_line_name}"]]/div[2]/div/div[1]/button
    Wait Until Element Is Visible    ${add_edit_sub_line_button}
    Input Text    ${add_edit_sub_line_name_field}    ${new_sub_line_name}
    Click Element    ${add_edit_sub_line_button}
    Click Element    ${add_edit_sub_line_button}
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    ${sub_line_alert}
    Run Keyword And Continue On Failure    Element Text Should Be    ${sub_line_alert}    ชื่อสายนี้ถูกใช้งานแล้ว
    Run Keyword And Continue On Failure    Wait Until Element Is Not Visible    ${confirm_add_edit_sub_line_button}

กรณี Edit โดยลบค่า Sub Line Name ให้ว่าง
    ${sub_line_name}    Set Variable    99-99(4)
    open_line_subline_menu
    select_line    99-99
    Wait Until Element Is Visible    //*[@id="root"]/main//main/div//div[2]/div/div/div/div/div[./div/div[text()="${sub_line_name}"]]/div[2]/div/div[1]/button
    Click Element    //*[@id="root"]/main//main/div//div[2]/div/div/div/div/div[./div/div[text()="${sub_line_name}"]]/div[2]/div/div[1]/button
    Wait Until Element Is Visible    ${add_edit_sub_line_button}
    Clear Element Text    ${add_edit_sub_line_name_field}
    Click Element    ${add_edit_sub_line_button}
    Click Element    ${add_edit_sub_line_button}
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    ${sub_line_alert}
    Run Keyword And Continue On Failure    Element Text Should Be    ${sub_line_alert}    โปรดระบุชื่อสาย
    Run Keyword And Continue On Failure    Wait Until Element Is Not Visible    ${confirm_add_edit_sub_line_button}

หน้าต่างยืนยันการ Edit Sub Line
    ${sub_line_name}    Set Variable    99-99(9)
    open_line_subline_menu
    select_line    99-99
    Wait Until Element Is Visible    //*[@id="root"]/main//main/div//div[2]/div/div/div/div/div[./div/div[text()="${sub_line_name}"]]/div[2]/div/div[1]/button
    Click Element    //*[@id="root"]/main//main/div//div[2]/div/div/div/div/div[./div/div[text()="${sub_line_name}"]]/div[2]/div/div[1]/button
    Wait Until Element Is Visible    ${add_edit_sub_line_button}
    Input Text    ${add_edit_sub_line_name_field}    ${sub_line_name}
    Click Element    ${add_edit_sub_line_button}
    Click Element    ${add_edit_sub_line_button}
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    ${confirm_add_edit_sub_line_button}
    Run Keyword And Continue On Failure    Element Text Should Be    ${confirm_add_edit_sub_line_title}    แก้ไขสายย่อย
    Run Keyword And Continue On Failure    Element Text Should Be    ${confirm_add_edit_sub_line_text}   คุณยืนยันที่จะแก้ไขสายย่อยใช่หรือไม่?
    Run Keyword And Continue On Failure    Element Text Should Be    ${confirm_add_edit_sub_line_button}    ยืนยัน
    Run Keyword And Continue On Failure    Element Text Should Be    ${cancel_confirm_add_edit_sub_line_button}    ยกเลิก

กรณีกดปุ่ม x หน้าต่างยืนยันการ Edit Sub Line
    ${sub_line_name}    Set Variable    99-99(9)
    open_line_subline_menu
    select_line    99-99
    Wait Until Element Is Visible    //*[@id="root"]/main//main/div//div[2]/div/div/div/div/div[./div/div[text()="${sub_line_name}"]]/div[2]/div/div[1]/button
    Click Element    //*[@id="root"]/main//main/div//div[2]/div/div/div/div/div[./div/div[text()="${sub_line_name}"]]/div[2]/div/div[1]/button
    Wait Until Element Is Visible    ${add_edit_sub_line_button}
    Input Text    ${add_edit_sub_line_name_field}    ${sub_line_name}
    Click Element    ${add_edit_sub_line_button}
    Click Element    ${add_edit_sub_line_button}
    Wait Until Element Is Visible    ${close_confirm_add_edit_sub_line_button}
    Click Element    ${close_confirm_add_edit_sub_line_button}
    Wait Until Element Is Not Visible    ${close_confirm_add_edit_sub_line_button}
    Wait Until Element Is Visible    ${title}

กรณีกดปุ่ม Cancel หน้าต่างยืนยันการ Edit Sub Line
    ${sub_line_name}    Set Variable    99-99(9)
    open_line_subline_menu
    select_line    99-99
    Wait Until Element Is Visible    //*[@id="root"]/main//main/div//div[2]/div/div/div/div/div[./div/div[text()="${sub_line_name}"]]/div[2]/div/div[1]/button
    Click Element    //*[@id="root"]/main//main/div//div[2]/div/div/div/div/div[./div/div[text()="${sub_line_name}"]]/div[2]/div/div[1]/button
    Wait Until Element Is Visible    ${add_edit_sub_line_button}
    Input Text    ${add_edit_sub_line_name_field}    ${sub_line_name}
    Click Element    ${add_edit_sub_line_button}
    Click Element    ${add_edit_sub_line_button}
    Wait Until Element Is Visible    ${cancel_confirm_add_edit_sub_line_button}
    Click Element    ${cancel_confirm_add_edit_sub_line_button}
    Wait Until Element Is Not Visible    ${cancel_confirm_add_edit_sub_line_button}
    Wait Until Element Is Visible    ${title}

กรณี Edit Sub Line Name
    ${old_sub_line_name}    Set Variable    99-99(9)
    ${new_sub_line_name}    Set Variable    99-99(7)
    open_line_subline_menu
    select_line    99-99
    Wait Until Element Is Visible    //*[@id="root"]/main//main/div//div[2]/div/div/div/div/div[./div/div[text()="${old_sub_line_name}"]]/div[2]/div/div[1]/button
    Click Element    //*[@id="root"]/main//main/div//div[2]/div/div/div/div/div[./div/div[text()="${old_sub_line_name}"]]/div[2]/div/div[1]/button
    Wait Until Element Is Visible    ${add_edit_sub_line_button}
    Input Text    ${add_edit_sub_line_name_field}    ${new_sub_line_name}
    Click Element    ${add_edit_sub_line_button}
    Click Element    ${add_edit_sub_line_button}
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    ${confirm_add_edit_sub_line_button}
    Click Element    ${confirm_add_edit_sub_line_button}
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    ${top_right_alert}
    Run Keyword And Continue On Failure    Element Text Should Be    ${top_right_alert}    แก้ไขสายย่อยสำเร็จ

    Wait Until Element Is Visible    //*[@id="root"]/main//main/div//div[2]/div/div/div/div[./div/div/div[text()="${new_sub_line_name}"]]
    Click Element    //*[@id="root"]/main//main/div//div[2]/div/div/div/div[./div/div/div[text()="${new_sub_line_name}"]]
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    ${right_sub_line_name}
    Run Keyword And Continue On Failure    Element Text Should Be    ${right_sub_line_name}    ${new_sub_line_name}

    Click Element    //*[@id="root"]/main//main/div//div[2]/div/div/div/div/div[./div/div[text()="${new_sub_line_name}"]]/div[2]/div/div[1]/button
    Wait Until Element Is Visible    ${add_edit_sub_line_button}
    Input Text    ${add_edit_sub_line_name_field}    ${old_sub_line_name}
    Click Element    ${add_edit_sub_line_button}
    Click Element    ${add_edit_sub_line_button}
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    ${confirm_add_edit_sub_line_button}
    Click Element    ${confirm_add_edit_sub_line_button}
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    ${top_right_alert}
    Run Keyword And Continue On Failure    Element Text Should Be    ${top_right_alert}    แก้ไขสายย่อยสำเร็จ

กรณี Edit Sub Line Depot Start
    ${sub_line_name}    Set Variable    99-99(9)
    ${old_depot_start}    Set Variable    อู่วงเวียนพระประแดง
    ${new_depot_start}    Set Variable    อู่บึงกุ่ม
    open_line_subline_menu
    select_line    99-99
    Wait Until Element Is Visible    //*[@id="root"]/main//main/div//div[2]/div/div/div/div/div[./div/div[text()="${sub_line_name}"]]/div[2]/div/div[1]/button
    Click Element    //*[@id="root"]/main//main/div//div[2]/div/div/div/div/div[./div/div[text()="${sub_line_name}"]]/div[2]/div/div[1]/button
    Wait Until Element Is Visible    ${add_edit_sub_line_button}
    Input Text    ${add_edit_sub_line_depot_start_field}    ${new_depot_start}
    Wait Until Element Is Visible    //body/div[3]//*[text()="${new_depot_start}"]
    Click Element    //body/div[3]//*[text()="${new_depot_start}"]
    Click Element    ${add_edit_sub_line_button}
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    ${confirm_add_edit_sub_line_button}
    Click Element    ${confirm_add_edit_sub_line_button}
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    ${top_right_alert}
    Run Keyword And Continue On Failure    Element Text Should Be    ${top_right_alert}    แก้ไขสายย่อยสำเร็จ
    Wait Until Element Is Visible    //*[@id="root"]/main//main/div//div[2]/div/div/div/div[./div/div/div[text()="${sub_line_name}"]]
    Run Keyword And Continue On Failure    Wait Until Element Contains    //*[@id="root"]/main//main/div//div[2]/div/div/div/div/div/div/div[text()="${sub_line_name}"]/div    ${new_depot_start} -

    #ส่วนนี้จะเปลี่ยนข้อมูลกลับมาเป็นค่าเดิม
    Wait Until Element Is Visible    //*[@id="root"]/main//main/div//div[2]/div/div/div/div/div[./div/div[text()="${sub_line_name}"]]/div[2]/div/div[1]/button
    Click Element    //*[@id="root"]/main//main/div//div[2]/div/div/div/div/div[./div/div[text()="${sub_line_name}"]]/div[2]/div/div[1]/button
    Wait Until Element Is Visible    ${add_edit_sub_line_button}
    Input Text    ${add_edit_sub_line_depot_start_field}    ${old_depot_start}
    Wait Until Element Is Visible    //body/div[3]//*[text()="${old_depot_start}"]
    Click Element    //body/div[3]//*[text()="${old_depot_start}"]
    Click Element    ${add_edit_sub_line_button}
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    ${confirm_add_edit_sub_line_button}
    Click Element    ${confirm_add_edit_sub_line_button}

กรณี Edit Sub Line Depot Stop
    ${sub_line_name}    Set Variable    99-99(9)
    ${old_depot_stop}    Set Variable    อู่บางพลี
    ${new_depot_stop}    Set Variable    อู่วัดไร่ขิง
    open_line_subline_menu
    select_line    99-99
    Wait Until Element Is Visible    //*[@id="root"]/main//main/div//div[2]/div/div/div/div/div[./div/div[text()="${sub_line_name}"]]/div[2]/div/div[1]/button
    Click Element    //*[@id="root"]/main//main/div//div[2]/div/div/div/div/div[./div/div[text()="${sub_line_name}"]]/div[2]/div/div[1]/button
    Wait Until Element Is Visible    ${add_edit_sub_line_button}
    Input Text    ${add_edit_sub_line_depot_stop_field}    ${new_depot_stop}
    Wait Until Element Is Visible    //body/div[3]//*[text()="${new_depot_stop}"]
    Click Element    //body/div[3]//*[text()="${new_depot_stop}"]
    Click Element    ${add_edit_sub_line_button}
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    ${confirm_add_edit_sub_line_button}
    Click Element    ${confirm_add_edit_sub_line_button}
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    ${top_right_alert}
    Run Keyword And Continue On Failure    Element Text Should Be    ${top_right_alert}    แก้ไขสายย่อยสำเร็จ
    Wait Until Element Is Visible    //*[@id="root"]/main//main/div//div[2]/div/div/div/div[./div/div/div[text()="${sub_line_name}"]]
    Run Keyword And Continue On Failure    Wait Until Element Contains    //*[@id="root"]/main//main/div//div[2]/div/div/div/div/div/div/div[text()="${sub_line_name}"]/div     - ${new_depot_stop}

    #ส่วนนี้จะเปลี่ยนข้อมูลกลับมาเป็นค่าเดิม
    Wait Until Element Is Visible    //*[@id="root"]/main//main/div//div[2]/div/div/div/div/div[./div/div[text()="${sub_line_name}"]]/div[2]/div/div[1]/button
    Click Element    //*[@id="root"]/main//main/div//div[2]/div/div/div/div/div[./div/div[text()="${sub_line_name}"]]/div[2]/div/div[1]/button
    Wait Until Element Is Visible    ${add_edit_sub_line_button}
    Input Text    ${add_edit_sub_line_depot_stop_field}    ${old_depot_stop}
    Wait Until Element Is Visible    //body/div[3]//*[text()="${old_depot_stop}"]
    Click Element    //body/div[3]//*[text()="${old_depot_stop}"]
    Click Element    ${add_edit_sub_line_button}
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    ${confirm_add_edit_sub_line_button}
    Click Element    ${confirm_add_edit_sub_line_button}

ส่วนรายละเอียด Route
    ${sub_line}    Set Variable    99-99(9)
    open_line_subline_menu
    select_line    99-99
    Wait Until Element Is Visible    //*[@id="root"]/main//main/div//div[2]/div/div/div/div[./div/div/div[text()="${sub_line}"]]
    Click Element    //*[@id="root"]/main//main/div//div[2]/div/div/div/div[./div/div/div[text()="${sub_line}"]]
    Wait Until Element Is Visible    ${right_sub_line_name}
    Element Text Should Be    ${right_sub_line_name}    ${sub_line}
    Element Should Be Visible    ${add_new_route_button}

หน้าต่าง Add Route To Sub Line
    ${sub_line}    Set Variable    99-99(9)
    open_line_subline_menu
    select_line    99-99
    Wait Until Element Is Visible    //*[@id="root"]/main//main/div//div[2]/div/div/div/div[./div/div/div[text()="${sub_line}"]]
    Click Element    //*[@id="root"]/main//main/div//div[2]/div/div/div/div[./div/div/div[text()="${sub_line}"]]
    Wait Until Element Is Visible    ${right_sub_line_name}
    Element Text Should Be    ${right_sub_line_name}    ${sub_line}
    Element Should Be Visible    ${add_new_route_button}
    Click Element    ${add_new_route_button}
    Wait Until Element Is Visible    ${add_route_button}
    Run Keyword And Continue On Failure    Element Text Should Be    ${add_route_title}    เพิ่มเส้นทางให้สายย่อย
    Run Keyword And Continue On Failure    Element Text Should Be    ${route_value_placeholder}    Select...
    Run Keyword And Continue On Failure    Element Text Should Be    ${route_label}    เส้นทาง
    Run Keyword And Continue On Failure    Element Text Should Be    ${start_date_label}    วันที่เริ่มต้น
    Run Keyword And Continue On Failure    Element Text Should Be    ${end_date_label}    วันที่สิ้นสุด
    Run Keyword And Continue On Failure    Element Text Should Be    ${add_route_button}    เพิ่ม

กรณีกดปุ่ม x หน้า Add Route To Sub Line
    ${sub_line}    Set Variable    99-99(9)
    open_line_subline_menu
    select_line    99-99
    Wait Until Element Is Visible    //*[@id="root"]/main//main/div//div[2]/div/div/div/div[./div/div/div[text()="${sub_line}"]]
    Click Element    //*[@id="root"]/main//main/div//div[2]/div/div/div/div[./div/div/div[text()="${sub_line}"]]
    Wait Until Element Is Visible    ${right_sub_line_name}
    Element Text Should Be    ${right_sub_line_name}    ${sub_line}
    Element Should Be Visible    ${add_new_route_button}
    Click Element    ${add_new_route_button}
    Wait Until Element Is Visible    ${close_route_button}
    Click Element    ${close_route_button}
    Wait Until Element Is Not Visible    ${close_route_button}
    Wait Until Element Is Visible    ${title}

กรณี Add Route To Sub Line โดยไม่กรอกข้อมูล
    ${sub_line}    Set Variable    99-99(9)
    open_line_subline_menu
    select_line    99-99
    Wait Until Element Is Visible    //*[@id="root"]/main//main/div//div[2]/div/div/div/div[./div/div/div[text()="${sub_line}"]]
    Click Element    //*[@id="root"]/main//main/div//div[2]/div/div/div/div[./div/div/div[text()="${sub_line}"]]
    Wait Until Element Is Visible    ${right_sub_line_name}
    Element Text Should Be    ${right_sub_line_name}    ${sub_line}
    Element Should Be Visible    ${add_new_route_button}
    Click Element    ${add_new_route_button}
    Wait Until Element Is Visible    ${add_route_button}
    Click Element    ${add_route_button}
    Run Keyword And Continue On Failure    Element Text Should Be    ${route_alert}    โปรดระบุเส้นทาง
    Run Keyword And Continue On Failure    Element Text Should Be    ${start_date_alert}    โปรดระบุวันที่เริ่มต้น
    Run Keyword And Continue On Failure    Element Text Should Be    ${stop_date_alert}    โปรดระบุวันที่สิ้นสุด
    Run Keyword And Continue On Failure    Wait Until Element Is Not Visible    ${confirm_confirm_add_route_button}

กรณีเลือก Start Date ที่ตรงกับวันปัจจุบัน
    ${sub_line}    Set Variable    99-99(9)    
    ${current_month_not_ready}    get_current_month
    ${current_month}    Set Variable    ${current_month_not_ready[0:2]}
    ${current_year}    get_current_year
    ${current_day}    get_current_day

    open_line_subline_menu
    select_line    99-99
    add_route    sub_line=${sub_line}    start_year=${current_year}    start_month=${current_month}    start_day=${current_day}
    Run Keyword And Continue On Failure    Element Should Be Visible    ${start_date_alert}
    Run Keyword And Continue On Failure    Element Text Should Be    ${start_date_alert}    วันที่เริ่มต้นต้องมีค่ามากกว่าวันปัจจุบัน   

หน้าต่างยืนยันการเพิ่ม Route
    open_line_subline_menu
    select_line    99-99
    add_route
    Wait Until Element Is Visible    ${confirm_confirm_add_route_button}
    Run Keyword And Continue On Failure    Element Text Should Be    ${confirm_add_route_title}    เพิ่มเส้นทางให้สายย่อย
    Run Keyword And Continue On Failure    Element Text Should Be    ${confirm_add_route_text}    คุณยืนยันทีจะเพิ่มเส้นทางให้สายย่อยให้สายย่อยใช่หรือไม่?        
    Run Keyword And Continue On Failure    Element Text Should Be    ${confirm_confirm_add_route_button}    ยืนยัน
    Run Keyword And Continue On Failure    Element Text Should Be    ${cancel_confirm_route_button}    ยกเลิก
    
กรณีกดปุ่ม x หน้าต่างยืนยันการ Add Route To Sub Line
    open_line_subline_menu
    select_line    99-99
    add_route
    Wait Until Element Is Visible    ${close_confirm_add_route_button}
    Click Element    ${close_confirm_add_route_button}
    Wait Until Element Is Not Visible    ${close_confirm_add_route_button}
    Wait Until Element Is Visible    ${title}

กรณีกดปุ่ม Cancel หน้าต่างยืนยันการ Add Route To Sub Line
    open_line_subline_menu
    select_line    99-99
    add_route
    Wait Until Element Is Visible    ${cancel_confirm_route_button}
    Click Element    ${cancel_confirm_route_button}
    Wait Until Element Is Not Visible    ${cancel_confirm_route_button}
    Wait Until Element Is Visible    ${title}



กรณี Add Route To Sub Line โดยเลือก Route ที่ซ้ำกับมีอยู่แต่เวลาไม่ทับกัน
    open_line_subline_menu
    select_line    99-99
    add_route    start_year=3000    end_year=3001
    Wait Until Element Is Visible    ${confirm_confirm_add_route_button}

กรณี Add Route To Sub Line เลือก Start Time ที่ทับกับ Start Time ที่มีอยู่
    #จะเทียบกับข้อมูล Route เดิมที่ถูกสร้างไว้ที่มี Start Time เหมือนกัน
    open_line_subline_menu
    select_line    99-99
    add_route    start_year=2070    end_year=3000
    Run Keyword And Continue On Failure    Element Text Should Be    ${start_date_alert}    วันเริ่มต้นนี้ถูกใช้งานแล้ว        
    Wait Until Element Is Not Visible    ${confirm_confirm_add_route_button}

กรณี Add Route To Sub Line เลือก Start Time ที่ทับกับ End Time ที่มีอยู่
    #จะเทียบกับข้อมูล Route เดิมที่ถูกสร้างไว้ที่มี Stop Time เหมือนกัน
    open_line_subline_menu
    select_line    99-99
    add_route    start_day=25    start_month=3    start_year=2080    end_year=3000
    Run Keyword And Continue On Failure    Element Text Should Be    ${start_date_alert}    วันเริ่มต้นนี้ถูกใช้งานแล้ว        
    Run Keyword And Continue On Failure    Wait Until Element Is Not Visible    ${confirm_confirm_add_route_button}

กรณี Add Route To Sub Line เลือก End Time ที่ทับกับ Start Time ที่มีอยู่
    #จะเทียบกับข้อมูล Route เดิมที่ถูกสร้างไว้ที่มี Start Time เหมือนกัน
    open_line_subline_menu
    select_line    99-99
    add_route    start_year=2065    end_day=10    end_month=7    end_year=2070
    Run Keyword And Continue On Failure    Element Text Should Be    ${stop_date_alert}    วันสิ้นสุดนี้ถูกใช้งานแล้ว        
    Run Keyword And Continue On Failure    Wait Until Element Is Not Visible    ${confirm_confirm_add_route_button}

กรณี Add Route To Sub Line เลือก End Time ที่ทับกับ End Time ที่มีอยู่
    #จะเทียบกับข้อมูล Route เดิมที่ถูกสร้างไว้ที่มี Start Time เหมือนกัน
    open_line_subline_menu
    select_line    99-99
    add_route    start_year=2065    end_day=25    end_month=3    end_year=2080
    Run Keyword And Continue On Failure    Element Text Should Be    ${stop_date_alert}    วันสิ้นสุดนี้ถูกใช้งานแล้ว        
    Run Keyword And Continue On Failure    Wait Until Element Is Not Visible    ${confirm_confirm_add_route_button}

กรณี Add Route To Sub Line เลือก Start Date เท่ากับ End Date
    open_line_subline_menu
    select_line    99-99
    add_route    start_day=25    start_month=3    start_year=2090    end_day=25    end_month=3    end_year=2090
    Wait Until Element Is Visible    ${confirm_confirm_add_route_button}
    
กรณี Add Route To Sub Line เลือก Start Date มากกว่า End Date
    open_line_subline_menu
    select_line    99-99
    add_route    start_year=3000    end_day=25    end_month=3    end_year=2090
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    ${stop_date_alert}
    Run Keyword And Continue On Failure    Element Text Should Be    ${stop_date_alert}    วันสิ้นสุดต้องมีค่ามากกว่าวันเริ่มต้น
    
กรณีเพิ่ม Route ด้วยข้อมูลที่ครบถ้วนและถูกต้อง
    ${route_name}    Set Variable    เส้นทางการวิ่ง_1-13(126)Testtt
    open_line_subline_menu
    select_line    99-99
    add_route    route_name=${route_name}
    Wait Until Element Is Visible    ${confirm_confirm_add_route_button}
    Click Element     ${confirm_confirm_add_route_button}
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    ${top_right_alert}
    Run Keyword And Continue On Failure    Element Text Should Be    ${top_right_alert}    เพิ่มเส้นทางให้สายย่อยสำเร็จ
    Run Keyword And Continue On Failure    Element Should Be Visible     //*[@id="root"]/main//main//div[3]/div/div[1]/div[2]/div/div/div/div/div/div[2][text()="${route_name}"]
    Sleep    1

หน้าต่างยืนยันการลบ Route
    ${route_name}    Set Variable    เส้นทางการวิ่ง_Test1
    ${sub_line}    Set Variable    99-99(9)
    open_line_subline_menu
    select_line    99-99
    Wait Until Element Is Visible    //*[@id="root"]/main//main/div//div[2]/div/div/div/div[./div/div/div[text()="${sub_line}"]]
    Click Element    //*[@id="root"]/main//main/div//div[2]/div/div/div/div[./div/div/div[text()="${sub_line}"]]
    Sleep    1
    Click Element    //*[@id="root"]/main//main//div[3]/div/div[1]/div[2]/div/div/div/div/div[./div[text()="${route_name}"]]/div[3]/div/div
    Wait Until Element Is Visible    ${confirm_delete_route_button}
    Run Keyword And Continue On Failure    Element Text Should Be    ${delete_route_title}    ลบเส้นทางของสายย่อย
    Run Keyword And Continue On Failure    Element Text Should Be    ${delete_route_text}    คุณยืนยันลบเส้นทาง : ${route_name} ใช่หรือไม่?
    Run Keyword And Continue On Failure    Element Text Should Be    ${confirm_delete_route_button}    ยืนยัน
    Run Keyword And Continue On Failure    Element Text Should Be    ${cancel_delete_route_button}    ยกเลิก

กรณีกดปุ่ม x หน้าต่างยืนยันการ Delete Route
    ${route_name}    Set Variable    เส้นทางการวิ่ง_Test1
    ${sub_line}    Set Variable    99-99(9)
    open_line_subline_menu
    select_line    99-99
    Wait Until Element Is Visible    //*[@id="root"]/main//main/div//div[2]/div/div/div/div[./div/div/div[text()="${sub_line}"]]
    Click Element    //*[@id="root"]/main//main/div//div[2]/div/div/div/div[./div/div/div[text()="${sub_line}"]]
    Sleep    1
    Click Element    //*[@id="root"]/main//main//div[3]/div/div[1]/div[2]/div/div/div/div/div[./div[text()="${route_name}"]]/div[3]/div/div
    Wait Until Element Is Visible    ${close_delete_route_button}
    Click Element    ${close_delete_route_button}
    Wait Until Element Is Not Visible    ${close_delete_route_button}
    Wait Until Element Is Visible    ${title}

กรณีกดปุ่ม Cancel หน้าต่างยืนยันการ Delete Route
     ${route_name}    Set Variable    เส้นทางการวิ่ง_Test1
    ${sub_line}    Set Variable    99-99(9)
    open_line_subline_menu
    select_line    99-99
    Wait Until Element Is Visible    //*[@id="root"]/main//main/div//div[2]/div/div/div/div[./div/div/div[text()="${sub_line}"]]
    Click Element    //*[@id="root"]/main//main/div//div[2]/div/div/div/div[./div/div/div[text()="${sub_line}"]]
    Sleep    1
    Click Element    //*[@id="root"]/main//main//div[3]/div/div[1]/div[2]/div/div/div/div/div[./div[text()="${route_name}"]]/div[3]/div/div
    Wait Until Element Is Visible    ${cancel_delete_route_button}
    Click Element    ${cancel_delete_route_button}
    Wait Until Element Is Not Visible    ${cancel_delete_route_button}
    Wait Until Element Is Visible    ${title}

กรณีลบ Route
    ${route_name}    Set Variable    เส้นทางการวิ่ง_1-13(126)Testtt
    ${sub_line}    Set Variable    99-99(9)
    open_line_subline_menu
    select_line    99-99
    Wait Until Element Is Visible    //*[@id="root"]/main//main/div//div[2]/div/div/div/div[./div/div/div[text()="${sub_line}"]]
    Click Element    //*[@id="root"]/main//main/div//div[2]/div/div/div/div[./div/div/div[text()="${sub_line}"]]
    Sleep    1
    Click Element    //*[@id="root"]/main//main//div[3]/div/div[1]/div[2]/div/div/div/div/div[./div[text()="เส้นทางการวิ่ง_1-13(126)Testtt"]]/div[3]/div/div
    Wait Until Element Is Visible    ${confirm_delete_route_button}
    Click Element    ${confirm_delete_route_button}
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    ${top_right_alert}
    Run Keyword And Continue On Failure    Element Text Should Be    ${top_right_alert}    ลบเส้นทางของสายย่อยสำเร็จ  
    Run Keyword And Continue On Failure    Wait Until Element Is Not Visible    //*[@id="root"]/main//main//div[3]/div/div[1]/div[2]/div/div/div/div/div/div[2][text()="${route_name}"]     



#กรณีกดปุ่ม x, Cancel
#- หน้ายืนยันการเพิ่ม Line, Sub Line, Route

#กรณีกดปุ่ม x, Cancel
#- หน้ายืนยันการแก้ไข Line, Sub Line

#กรณีกดปุ่ม x, Cancel
#- หน้ายืนยันการลบ Line, Sub Line, Route
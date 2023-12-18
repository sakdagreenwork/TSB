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
${right_min_trip_label}    //*[@id="root"]/main//main//ul/li[3]/div[2]

${edit_line_button}    //*[@id="root"]/main//main/div/div[1]/div[2]//div[2]/div[1]/button
${delete_line_button}    //*[@id="root"]/main//main/div/div[1]/div[2]//div[2]/div[2]/div

${delete_line_title}    //*[@id="headlessui-portal-root"]/div/div/div/div/div/div/div/h2
${delete_line_text}    //*[@id="headlessui-portal-root"]/div/div/div/div/div/div/div[2]/div
${confirm_delete_line_button}    //*[@id="headlessui-portal-root"]/div/div/div/div/div/div/div[3]/div/div/div[1]
${cancel_delete_line_button}    //*[@id="headlessui-portal-root"]/div/div/div/div/div/div/div[3]/div/div/div[2]
${close_delete_button}    //*[@id="headlessui-portal-root"]/div/div/div/div/div/div/div/button

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

${add_edit_close_sub_line}    //*[@id="headlessui-portal-root"]/div/div/div/div/div/div/div/button
*** Keywords ***
open_line_subline_menu
    Log In Valid
    Wait Until Element Is Visible    ${hamburger_button}    20
    Click Element    ${hamburger_button}
    Wait Until Element Is Visible    ${datamanage_button}    20
    Click Element    ${datamanage_button}
    Wait Until Element Is Visible    ${line_subline_button}
    Click Element    ${line_subline_button}
    Wait Until Element Is Visible    ${add_new_line_button}


*** Test Cases ***

เปิด subline    
    open_line_subline_menu
    Wait Until Element Is Visible    ${first_result}
    Click Element    ${first_result}
    Wait Until Element Is Visible    ${middle_line_name}
    Click Element    ${add_new_sub_line_button}
    Wait Until Element Is Visible    ${add_edit_depot_start_dropdown_button}
    Click Element    ${add_edit_depot_start_dropdown_button}
    Sleep    10
    


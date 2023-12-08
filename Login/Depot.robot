*** Settings ***
Library    SeleniumLibrary    screenshot_root_directory=/Users/sakda.l/Desktop/TSB Automate/Login/Failed Screenshot
Resource    keyword.robot

*** Variables ***
${total}    //*[@id="root"]/main//div/div/div/div[2]/div/div/div/div[1]/div[2]/span
${active}    //*[@id="root"]/main//div/div/div/div[2]/div/div/div/div[2]/div[2]/span
${inactive}    //*[@id="root"]/main//div/div/div/div[2]/div/div/div/div[3]/div[2]/span

${search_box}    //*[@id="root"]/main//main/div[1]/div[1]/div/input
${add_button}    //*[@id="root"]/main//main/div[1]/div[2]/div/button
${edit_button}    //*[@id="root"]/main//main/div/div[1]/div[2]/div/div/div/div[1]/div/div[1]/div/button
${delete_button}    //*[@id="root"]/main//main/div/div[1]/div[2]/div/div/div/div[1]/div/div[2]/div/div/button

${select_to_view_text}    //*[@id="root"]/main//div/div/div/div[3]/div[1]/div[2]/div/div/div/main/div/h4
${add_edit_title}    //*[@id="headlessui-portal-root"]/div/div/div/div[2]//h2
${depot_name_label}    //*[@id="headlessui-portal-root"]//form/div[1]/div[1]/span/label    
${depot_name_label_asterisk}    //*[@id="headlessui-portal-root"]//form/div[1]/div[1]/span/label/span
${type_label}    //*[@id="headlessui-portal-root"]//form/div/div[1]/label
${type_label_asterisk}    //*[@id="headlessui-portal-root"]//form/div/div[1]/label/span
${status_label}    //*[@id="headlessui-portal-root"]//form/div/div[2]/label
${status_label_asterisk}    //*[@id="headlessui-portal-root"]//form/div/div[2]/label/span
${latitude_label}    //*[@id="headlessui-portal-root"]//form/div[3]/div[1]//span//label
${latitude_label_asterisk}    //*[@id="headlessui-portal-root"]//form/div[3]/div[1]//span//label/span
${longitude_label}    //*[@id="headlessui-portal-root"]//form/div[3]/div[2]//span//label
${longitude_label_asterisk}    //*[@id="headlessui-portal-root"]//form/div[3]/div[2]//span//label/span

${depot_name_field}    //*[@id="headlessui-portal-root"]//form/div[1]/div[1]/div[1]/input
${type_dropdown_field}        //*[@id="headlessui-portal-root"]//form/div[2]/div[1]/div/div//input
${type_dropdown_button}    //*[@id="headlessui-portal-root"]//form/div[2]/div[1]/div/div/div[2]
${status_dropdown_field}    //*[@id="headlessui-portal-root"]//form/div[2]/div[2]/div/div//input
${status_dropdown_button}    //*[@id="headlessui-portal-root"]//form/div[2]/div[2]/div/div/div[2]
${latitude_field}        //*[@id="headlessui-portal-root"]//form/div[3]/div[1]//input
${longitude_field}    //*[@id="headlessui-portal-root"]//form/div[3]/div[2]//input


${depot_name_alert}    //*[@id="headlessui-portal-root"]//form/div[1]/div[1]/div[2]
${type_alert}    //*[@id="headlessui-portal-root"]//form/div[2]/div[1]/div[2]
${status_alert}     //*[@id="headlessui-portal-root"]//form/div/div[2]/div[2]
${latitude_alert}    //*[@id="headlessui-portal-root"]//form/div[3]/div[1]/div[2]
${longitude_alert}    //*[@id="headlessui-portal-root"]//form/div[3]/div[2]/div[2]

${add_edit_button}    //*[@id="headlessui-portal-root"]//form/div[6]/div/button

${confirm_title}    //*[@id="headlessui-portal-root"]/div[2]//div[2]//h2
${confirm_text}    //*[@id="headlessui-portal-root"]/div[2]//div[2]//div[2]/div
${confirm_button}    //*[@id="headlessui-portal-root"]/div[2]//div[2]//div[3]/div/div/div[1]
${cancel_confirm_button}    //*[@id="headlessui-portal-root"]/div[2]//div[2]//div[3]/div/div/div[2]  

${first_search_result}    //*[@id="root"]/main//main/div[2]/div[1]/div[2]/div/div/div/div[1]
${depot_name_search_result}    //*[@id="root"]/main//main/div[2]/div[1]/div[2]/div/div/div/div[1]/div/div[2]/div/span
${depot_type_search_result}    //*[@id="root"]/main//main/div[2]/div[1]/div[2]/div/div/div/div[1]/div/div[2]/div/span

${middle_depot_name}    //*[@id="root"]/main//main/div/div[1]/div[2]/span[1]
${start_sub_line}    //*[@id="root"]/main//main/div/div[2]//div/div/button[1]
${stop_sub_line}    //*[@id="root"]/main//main/div/div[2]//div/div/button[2]

${first_start_or_stop_sub_line}    //*[@id="root"]/main//main/div/div[2]/div/div[2]//*[@class="simplebar-content"]/div[1]
${first_start_or_stop_sub_line_depot}    //*[@id="root"]/main//main/div/div[2]/div/div[2]//*[@class="simplebar-content"]/div[1]/div/div/div

   
${right_depot_name}    //*[@id="root"]/main//div//div[2]/div/main//h4
${right_latitude_label}    //*[@id="root"]/main//div//div[2]/div/main/div/div[1]/div[2]/div/div/div/div[3]/div[1]
${right_latitude_data}    //*[@id="root"]/main//div//div[2]/div/main/div/div[1]/div[2]/div/div/div/div[3]/div[2]
${right_longitude_label}    //*[@id="root"]/main//div//div[2]/div/main/div/div[1]/div[2]/div/div/div/div[4]/div[1] 
${right_longitude_data}    //*[@id="root"]/main//div//div[2]/div/main/div/div[1]/div[2]/div/div/div/div[4]/div[2]
${right_type_label}    //*[@id="root"]/main//div//div[2]/div/main/div/div[1]/div[2]/div/div/div/div[5]/div[1]
${right_type_data}    //*[@id="root"]/main//div//div[2]/div/main/div/div[1]/div[2]/div/div/div/div[5]/div[2]
${right_status_label}    //*[@id="root"]/main//div//div[2]/div/main/div/div[1]/div[2]/div/div/div/div[6]/div[1]
${right_status_data}    //*[@id="root"]/main//div//div[2]/div/main/div/div[1]/div[2]/div/div/div/div[6]/div[2]

${top_right_alert}    //main/div/div/div/div[@role="alert"]/div[2]

*** Keywords ***
Open Depot Menu
    Log In Valid
    Wait Until Element Is Visible    //*[@id="root"]/main/header/div/div/div[1]/div[2]//*[name()='svg']    20
    Click Element    //*[@id="root"]/main/header/div/div/div[1]/div[2]//*[name()='svg']
    Wait Until Element Is Visible    //*[@id="root"]/main/div[2]/div[3]/div[1]/div[2]/div/div/div/ul/li[6]/div[1]/div[1]/div    20
    Click Element    //*[@id="root"]/main/div[2]/div[3]/div[1]/div[2]/div/div/div/ul/li[6]/div[1]/div[1]/div
    Wait Until Element Is Visible    //*[@id="root"]/main/div[2]/div[3]/div[1]/div[2]/div/div/div/ul/li[6]/div[2]/div/ul/li[4]/a/span/span[2]    20
    Click Element    //*[@id="root"]/main/div[2]//div[1]/div[2]/div/div/div/ul/li[6]/div[2]/div/ul/li[7]/a/span/span[2]
    Wait Until Element Is Visible    //*[@id="root"]/main/header/div/div/div[1]/div[3]/h4    20

*** Test Cases ***
เปิดเมนู Depot
    Open Depot Menu
    Sleep    10
# Test Data ที่่ต้องเตรียมไว้ก่อนทำการ Automate Test
# 1. User
    - email=sakda.greenwork@gmail.com
    - name=Sakda
    - lastname=Lertladasak
# 2. Company 
    - name=บริษัท ต.มานิตย์ การเดินรถ จำกัด
    - branch=บริษัท ต.มานิตย์ การเดินรถ จำกัด_อู่เอกชัย
# 3. Company
    - name=บริษัท หลีกภัยขนส่ง จำกัด
    - branch=บริษัท หลีกภัยขนส่ง จำกัด_อู่บางพูน
# 4. Employee
    - name=nong mai
# 5. Employee
    - name=test test


*** Settings ***
Library             SeleniumLibrary    screenshot_root_directory=/Users/sakda.l/Desktop/TSB Automate/Login/Failed Screenshot
Resource            keyword.robot
Test Teardown       Close Browser


*** Variables ***
${hamburger_button}                         //*[@id="root"]/main/header/div/div/div[1]/div[2]//*[name()='svg']
${setting_button}                           //*[@id="root"]/main/div[2]//div[1]/div[2]/div/div/div/ul/li[9]
${data_manage_button}    //*[@id="root"]/main/div[2]//div[1]/div[2]/div/div/div/ul/li[6]/div[1]/div[1]/div
${vehicle_menu}    //*[@id="root"]/main/div[2]/div[3]/div[1]/div[2]/div/div/div/ul/li[6]/div[2]/div/ul/li[4]/a/span/span[2]
${user_manage_button}                       //*[@id="root"]/main/div[2]//div[1]/div[2]/div/div/div/ul/li[9]/div[2]/div/ul/li[2]
${title}                                    //*[@id="root"]/main/header/div/div/div[1]//h4

${total}                                    //*[@id="root"]/main//div[2]/div/div/div/div/div/div[1]/div[2]/span
${active}                                   //*[@id="root"]/main//div[2]/div/div/div/div/div/div[2]/div[2]/span
${inactive}                                 //*[@id="root"]/main//div[2]/div/div/div/div/div/div[3]/div[2]/span

${search_box}                               //*[@id="root"]/main//main/div[1]/div[1]/div/input

${add_new_user_button}                      //*[@id="root"]/main//main/div[1]/div[2]/div/button

${select_to_view_text}                      //*[@id="root"]/main//main/div[3]/h4

${add_user_title}                           //*[@id="root"]/main//main/div[1]/div/form/div/div[1]/header/div/h4
${add_user_data_dropdown_text}              //*[@id="root"]/main//main/div[1]/div/form/div/div[2]//button/span[1]
${add_user_data_dropdown_button}            //*[@id="root"]/main//main/div[1]/div/form/div/div[2]//button/span[2]
${add_email_label}                          //*[@id="root"]/main//main/div[1]/div/form//div[2]//div[1]//span/div/div/label[1]
${add_name_label}                           //*[@id="root"]/main//main/div[1]/div/form//div[2]//div[1]//span/div/div/div[2]/div[1]/label
${add_surname_label}                        //*[@id="root"]/main//main/div[1]/div/form//div[2]//div[1]//span/div/div/div[2]/div[2]/label
${add_gender_label}                         //*[@id="root"]/main//main/div[1]/div/form//div[2]//div[1]//span/div/div/div[3]/label
${add_company_label}                        //*[@id="root"]/main//main/div[1]/div/form//div[2]//div[1]//span/div/div/div[4]/div[1]/label
${add_branch_label}                         //*[@id="root"]/main//main/div[1]/div/form//div[2]//div[1]//span/div/div/div[4]/div[2]/label
${add_employee_label}                       //*[@id="root"]/main//main/div[1]/div/form//div[2]//div[1]//span/div/div/div[5]/label
${add_verify_option_label}                  //*[@id="root"]/main//main/div[1]/div/form//div[2]//div[1]//span/div/div/label[2]

${add_email_field}                          //*[@id="root"]/main//main/div[1]/div/form//div[2]//div[1]//span/div/div/div[1]/div/input
${add_name_field}                           //*[@id="root"]/main//main/div[1]/div/form//div[2]//div[1]//span/div/div/div[2]/div[1]/div/div/input
${add_surname_field}                        //*[@id="root"]/main//main/div[1]/div/form//div[2]//div[1]//span/div/div/div[2]/div[2]/div/div/input
${add_select_female_gender_box}             //*[@id="root"]/main//main/div[1]/div/form//div[2]//div[1]//span/div/div/div[3]/div/div[1]/label/span[1]
${add_select_female_gender_text}            //*[@id="root"]/main//main/div[1]/div/form//div[2]//div[1]//span/div/div/div[3]/div/div[1]/label/span[2]
${add_select_male_gender_box}               //*[@id="root"]/main//main/div[1]/div/form//div[2]//div[1]//span/div/div/div[3]/div/div[2]/label/span[1]
${add_select_male_gender_text}              //*[@id="root"]/main//main/div[1]/div/form//div[2]//div[1]//span/div/div/div[3]/div/div[2]/label/span[2]
${add_select_other_gender_box}              //*[@id="root"]/main//main/div[1]/div/form//div[2]//div[1]//span/div/div/div[3]/div/div[3]/label/span[1]
${add_select_other_gender_text}             //*[@id="root"]/main//main/div[1]/div/form//div[2]//div[1]//span/div/div/div[3]/div/div[3]/label/span[2]
${add_company_field}                        //*[@id="root"]/main//main/div[1]/div/form//div[2]//div[1]//span/div/div/div[4]/div[1]/div/div/div[1]/div[2]/input
${add_branch_field}                         //*[@id="root"]/main//main/div[1]/div/form//div[2]//div[1]//span/div/div/div[4]/div[2]/div/div/div[1]/div[2]/input
${add_employee_field}                       //*[@id="root"]/main//main/div[1]/div/form//div[2]//div[1]//span/div/div/div[5]/div/div/div[1]/div[2]/input
${add_select_email_box}                         //*[@id="root"]/main//main/div[1]/div/form//div[2]//div[1]//span/div/div/div[6]/div[1]/label/span[1]
${add_select_email_text}                        //*[@id="root"]/main//main/div[1]/div/form//div[2]//div[1]//span/div/div/div[6]/div[1]/label/span[2]
${add_select_auto_verify_box}                   //*[@id="root"]/main//main/div[1]/div/form//div[2]//div[1]//span/div/div/div[6]/div[2]/label/span[1]
${add_select_auto_verify_text}                  //*[@id="root"]/main//main/div[1]/div/form//div[2]//div[1]//span/div/div/div[6]/div[2]/label/span[2]

${add_company_dropdown}    //*[@id="root"]/main//main/div[1]/div/form//div[2]//div[1]//span/div/div/div[4]/div[1]/div/div[2]
${add_branch_dropdown}    //*[@id="root"]/main//main/div[1]/div/form//div[2]//div[1]//span/div/div/div[4]/div[2]/div/div[2]
${add_employee_dropdown}    //*[@id="root"]/main//main/div[1]/div/form//div[2]//div[1]//span/div/div/div[5]/div/div[2]

${add_company_placeholder}    //*[@id="root"]/main//main/div[1]/div/form//div[2]//div[1]//span/div/div/div[4]/div[1]/div/div/div[1]/div[1]
${add_branch_placeholder}    //*[@id="root"]/main//main/div[1]/div/form//div[2]//div[1]//span/div/div/div[4]/div[2]/div/div/div[1]/div[1]    
${add_employee_placeholder}    //*[@id="root"]/main//main/div[1]/div/form//div[2]//div[1]//span/div/div/div[5]/div/div/div[1]/div[1]

${add_email_alert}                          //*[@id="root"]/main//main/div[1]/div/form//div[2]//div[1]//span/div/div/div[1]/div[2]
${add_name_alert}                           //*[@id="root"]/main//main/div[1]/div/form//div[2]//div[1]//span/div/div/div[2]/div[1]/div/div[2]
${add_surname_alert}                        //*[@id="root"]/main//main/div[1]/div/form//div[2]//div[1]//span/div/div/div[2]/div[2]/div/div[2]
${add_company_alert}                        //*[@id="root"]/main//main/div[1]/div/form//div[2]//div[1]//span/div/div/div[4]/div[1]/div[2]
${add_branch_alert}                         //*[@id="root"]/main//main/div[1]/div/form//div[2]//div[1]//span/div/div/div[4]/div[2]/div[2]

${add_button}                               //*[@id="root"]/main//main//form//div[2]/div/button

${confirm_add_edit_delete_title}            //*[@id="headlessui-portal-root"]/div/div/div/div/div/div/div[1]/h2
${close_confirm_add_edit_delete}            //*[@id="headlessui-portal-root"]/div/div/div/div/div/div/div[1]/button
${confirm_add_edit_delete_text}             //*[@id="headlessui-portal-root"]/div/div/div/div/div/div/div[2]/div
${confirm_add_edit_delete_button}           //*[@id="headlessui-portal-root"]/div/div/div/div/div/div/div[3]/div/div/div[1]
${cancel_confirm_add_edit_delete_button}    //*[@id="headlessui-portal-root"]/div/div/div/div/div/div/div[3]/div/div/div[2]

${edit_user_title}                          //*[@id="root"]/main//main/div[2]/div/div[1]/header/div[1]/h4
${edit_user_data_dropdown_text}             //*[@id="root"]/main//main/div[2]/div/div/div[1]/div[2]/div/div/div/div/div/button/span[1]
${edit_user_data_dropdown_button}           //*[@id="root"]/main//main/div[2]/div/div/div[1]/div[2]/div/div/div/div/div/button/span[2]

${edit_email_label}                         //*[@id="root"]/main//main/div[2]/div/div/div[1]/div[2]//form/div[1]/span/label
${edit_name_label}                          //*[@id="root"]/main//main/div[2]/div/div/div[1]/div[2]//form/div[2]/div[1]/label
${edit_surname_label}                       //*[@id="root"]/main//main/div[2]/div/div/div[1]/div[2]//form/div[2]/div[2]/label
${edit_gender_label}                        //*[@id="root"]/main//main/div[2]/div/div/div[1]/div[2]//form/div[3]/label
${edit_company_label}                       //*[@id="root"]/main//main/div[2]/div/div/div[1]/div[2]//form/div[4]/div[1]/label
${edit_branch_label}                        //*[@id="root"]/main//main/div[2]/div/div/div[1]/div[2]//form/div[4]/div[2]/label
${edit_employee_label}                      //*[@id="root"]/main//main/div[2]/div/div/div[1]/div[2]//form/div[5]/label
${edit_status_label}                        //*[@id="root"]/main//main/div[2]/div/div/div[1]/div[2]//form/div[6]/label

${edit_email_field}                         //*[@id="root"]/main//main/div[2]/div/div/div[1]/div[2]//form/div[1]/div/input
${edit_name_field}                          //*[@id="root"]/main//main/div[2]/div/div/div[1]/div[2]//form/div[2]/div[1]/div/div/input
${edit_surname_field}                       //*[@id="root"]/main//main/div[2]/div/div/div[1]/div[2]//form/div[2]/div[2]/div/div/input
${edit_select_female_box}                   //*[@id="root"]/main//main/div[2]/div/div/div[1]/div[2]//form/div[3]/div/div/label/span[1]
${edit_select_female_text}                  //*[@id="root"]/main//main/div[2]/div/div/div[1]/div[2]//form/div[3]/div/div/label/span[2]
${edit_select_male_box}                     //*[@id="root"]/main//main/div[2]/div/div/div[1]/div[2]//form/div[3]/div/div[2]/label/span[1]
${edit_select_male_text}                   //*[@id="root"]/main//main/div[2]/div/div/div[1]/div[2]//form/div[3]/div/div[2]/label/span[2]
${edit_select_other_box}                     //*[@id="root"]/main//main/div[2]/div/div/div[1]/div[2]//form/div[3]/div/div[3]/label/span[1]
${edit_select_other_text}                   //*[@id="root"]/main//main/div[2]/div/div/div[1]/div[2]//form/div[3]/div/div[3]/label/span[2]
${edit_company_field}                       //*[@id="root"]/main//main/div[2]/div/div/div[1]/div[2]//form/div[4]/div[1]/div/div/div[1]/div/input
${edit_company_data}    //*[@id="root"]/main//main/div[2]/div/div/div[1]/div[2]//form/div[4]/div[1]/div/div/div[1]/div[1]
${edit_branch_field}                        //*[@id="root"]/main//main/div[2]/div/div/div[1]/div[2]//form/div[4]/div[2]/div/div/div[1]/div/input
${edit_branch_data}    //*[@id="root"]/main//main/div[2]/div/div/div[1]/div[2]//form/div[4]/div[2]/div/div/div[1]/div[1]
${edit_employee_field}                      //*[@id="root"]/main//main/div[2]/div/div/div[1]/div[2]//form/div[5]/div/div/div/div[2]/input
${edit_employee_data}    //*[@id="root"]/main//main/div[2]/div/div/div[1]/div[2]//form/div[5]/div/div/div/div[1]
${edit_status_button}                       //*[@id="root"]/main//main/div[2]/div/div/div[1]/div[2]//form/div[6]/div/label/input
${edit_status_text}                         //*[@id="root"]/main//main/div[2]/div/div/div[1]/div[2]//form/div[6]/div/label/span

${edit_check_disable_female}    //*[@id="root"]/main//main/div[2]/div/div/div[1]/div[2]//form/div[3]/div/div/label/input
${edit_check_disable_male}    //*[@id="root"]/main//main/div[2]/div/div/div[1]/div[2]//form/div[3]/div/div[2]/label/input
${edit_check_disable_other}    //*[@id="root"]/main//main/div[2]/div/div/div[1]/div[2]//form/div[3]/div/div[3]/label/input

${edit_company_dropdown}    //*[@id="root"]/main//main/div[2]/div/div/div[1]/div[2]//form/div[4]/div[1]/div/div[2]    
${edit_branch_dropdown}    //*[@id="root"]/main//main/div[2]/div/div/div[1]/div[2]//form/div[4]/div[2]/div/div[2]
${edit_employee_dropdown}    //*[@id="root"]/main//main/div[2]/div/div/div[1]/div[2]//form/div[5]/div/div[2]        

${edit_name_alert}                          //*[@id="root"]/main//main/div[2]/div/div/div[1]/div[2]//form/div[2]/div[1]/div/div[2]
${edit_surname_alert}                       //*[@id="root"]/main//main/div[2]/div/div/div[1]/div[2]//form/div[2]/div[2]/div/div[2]

${edit_button}                              //*[@id="root"]/main//main/div[2]/div/div/div[1]/div[2]//form/div[7]/div/div/button
${cancel_button}                            //*[@id="root"]/main//main/div[2]/div/div/div[1]/div[2]//form/div[7]/div[1]/button
${save_button}                              //*[@id="root"]/main//main/div[2]/div/div/div[1]/div[2]//form/div[7]/div[2]/button
${confirm_button}                           //*[@id="root"]/main//main/div[2]/div/div[1]/header/div[2]/div/button
${delete_button}                            //*[@id="root"]/main//main/div[2]/div/div[1]/header/div[3]/div/button

${top_right_alert}                          //main/div/div/div/div[@role="alert"]/div[2]

${no_data_text}                             //*[@id="root"]/main//main/div[2]/div[1]/div[2]//text/tspan

${all_search_result}    //*[@id="root"]/main//main/div[2]/div[1]/div[2]/div/div/div/div[2]/div/div/div
${first_search_result}    //*[@id="root"]/main//main/div[2]/div[1]/div[2]/div/div/div/div[2]/div/div/div[1]    
${first_name_lastname_result}    //*[@id="root"]/main//main/div[2]/div[1]/div[2]/div/div/div/div[2]/div/div/div[1]/div/div/div/div/div/span[1]
${first_email_result}    //*[@id="root"]/main//main/div[2]/div[1]/div[2]/div/div/div/div[2]/div/div/div[1]/div/div/div/div/div/span[2]        

${view_password_title}    //*[@id="headlessui-portal-root"]/div[2]/div/div/div/div/div/div/h2
${view_password_x_button}    //*[@id="headlessui-portal-root"]/div[2]/div/div/div/div/div/div/button
${view_password_label}    //*[@id="headlessui-portal-root"]/div[2]/div/div/div/div/div/div[2]/div/p
${view_password_field}    //*[@id="headlessui-portal-root"]/div[2]/div/div/div/div/div/div[2]/div/div/p
${view_password_close_button}    //*[@id="headlessui-portal-root"]/div[2]/div/div/div/div/div/div[2]/div/div[2]/button

${check_edit_button}    //*[@id="root"]/main//main/div[2]/div/div/div[1]/div[2]//form/div[7]/div[@class="m-0"]    
${check_cancel_edit_button}    //*[@id="root"]/main//main/div[2]/div/div/div[1]/div[2]//form/div[7]/div[@class="custom-tippy"][1]    
${check_save_edit_button}    //*[@id="root"]/main//main/div[2]/div/div/div[1]/div[2]//form/div[7]/div[@class="custom-tippy"][2]

*** Keywords ***
open_user_management_menu
    Log In Valid
    Wait Until Element Is Visible    ${hamburger_button}
    Click Element    ${hamburger_button}
    Wait Until Element Is Visible    ${setting_button}
    Click Element    ${setting_button}
    Wait Until Element Is Visible    ${user_manage_button}
    Click Element    ${user_manage_button}
    Wait Until Element Is Visible    ${add_new_user_button}    15

open_add_new_user_menu
    open_user_management_menu
    Click Element    ${add_new_user_button}
    Wait Until Element Is Visible    ${add_button}

add_new_user
    [Arguments]    ${email}=sakda@efinancethai.automatetest    ${name}=ชื่อ    ${surname}=นามสกุล
    ...            ${gender}=ชาย    ${company}=บริษัท ต.มานิตย์ การเดินรถ จำกัด    ${branch}=บริษัท ต.มานิตย์ การเดินรถ จำกัด_อู่เอกชัย
    ...            ${employee}=null    ${option}=อีเมล       

    #${email}    get_unique_data
    #${email}    Set Variable    ${email}@efinancethai.com

    Input Text    ${add_email_field}    ${email}
    Input Text    ${add_name_field}    ${name}
    Input Text    ${add_surname_field}    ${surname}

    IF    "${gender}" == "ชาย"
        Click Element    ${add_select_male_gender_box}
    ELSE IF    "${gender}" == "หญิง"
        Click Element    ${add_select_female_gender_box}
    ELSE IF    "${gender}" == "อื่นๆ"
        Click Element    ${add_select_other_gender_box}
    END

    Input Text    ${add_company_field}    ${company}
    Wait Until Element Is Visible    ${add_company_dropdown}//*[text()="${company}"]
    Click Element   ${add_company_dropdown}//*[text()="${company}"]
    Input Text    ${add_branch_field}    ${branch}
    Wait Until Element Is Visible    ${add_branch_dropdown}//*[text()="${branch}"]
    Click Element   ${add_branch_dropdown}//*[text()="${branch}"]


    IF    '${employee}' != 'null'
        Input Text    ${add_employee_field}    ${employee}
        Wait Until Element Is Visible    ${add_employee_dropdown}//*[text()="${employee}"]    15
        Click Element    ${add_employee_dropdown}//*[text()="${employee}"] 
    END
    


    Wait Until Element Is Enabled    ${add_select_email_box}
    IF    "${option}" == "อีเมล"
        Click Element   ${add_select_email_box}
    ELSE IF    "${option}" == "ยืนยันอัตโนมัติ"
        Click Element    ${add_select_auto_verify_box}
    END
    
    Click Element    ${add_button}    

select_user
    [Arguments]    ${email}=sakda.greenwork@gmail.com
    Input Text    ${search_box}    ${email}
    Wait Until Element Is Visible    ${first_search_result}
    Run Keyword And Continue On Failure    Element Text Should Be    ${first_email_result}    ${email}
    Click Element    ${first_search_result}
    Wait Until Element Is Visible    ${edit_button}


*** Test Cases ***
หน้า User Management
    open_user_management_menu
    Run Keyword And Continue On Failure    Element Text Should Be    ${title}    ผู้ใช้งาน
    Run Keyword And Continue On Failure    Element Should Contain    ${total}    ทั้งหมด
    Run Keyword And Continue On Failure    Element Should Contain    ${total}    รายการ
    Run Keyword And Continue On Failure    Element Should Contain    ${active}    ใช้งาน
    Run Keyword And Continue On Failure    Element Should Contain    ${active}    รายการ
    Run Keyword And Continue On Failure    Element Should Contain    ${inactive}    ไม่มีการใช้งาน
    Run Keyword And Continue On Failure    Element Should Contain    ${inactive}    รายการ

    ${place_search}    Get Element Attribute    ${search_box}    placeholder
    Run Keyword And Continue On Failure    Should Be Equal    ${place_search}    ค้นหา...
    Run Keyword And Continue On Failure    Element Text Should Be    ${select_to_view_text}    เลือกเพื่อดูรายละเอียดผู้ใช้
    Mouse Over    ${add_new_user_button}
    Wait Until Element Is Enabled    //*[@id="tippy-1"]//*[text()="เพิ่มพนักงาน"]

กรณีค้นหาข้อมูลที่ไม่มี
    open_user_management_menu
    Input Text    ${search_box}    ข้อมูลที่ไม่มี
    Element Text Should Be    ${no_data_text}    ไม่พบข้อมูล

กรณีค้นหาข้อมูลที่ไม่มีอยู่ในตาราง > กดไปเมนูอื่น > กดมาเมนู User Management
    open_user_management_menu
    Wait Until Element Is Visible    ${first_search_result}    10
    Input Text    ${search_box}    sakda.greenwork@nonexist.data
    Click Element    ${hamburger_button}
    Wait Until Element Is Visible    ${data_manage_button}
    Click Element    ${data_manage_button}
    Wait Until Element Is Visible    ${vehicle_menu}
    Click Element    ${vehicle_menu}
    Wait Until Element Is Visible    ${add_new_user_button}
    Click Element    ${hamburger_button}
    Wait Until Element Is Visible    ${setting_button}
    Click Element    ${setting_button}
    Wait Until Element Is Visible    ${user_manage_button}
    Click Element    ${user_manage_button}
    Wait Until Element Is Visible    ${first_search_result}    10



หน้า Add New User
    open_add_new_user_menu
    Run Keyword And Continue On Failure    Element Text Should Be    ${add_user_data_dropdown_text}    ข้อมูลผู้ใช้งาน
    Run Keyword And Continue On Failure    Element Text Should Be    ${add_email_label}    อีเมล *
    Run Keyword And Continue On Failure    Element Text Should Be    ${add_name_label}    ชื่อ *
    Run Keyword And Continue On Failure    Element Text Should Be    ${add_surname_label}    นามสกุล *
    Run Keyword And Continue On Failure    Element Text Should Be    ${add_gender_label}    เพศ *
    Run Keyword And Continue On Failure    Element Text Should Be    ${add_company_label}    บริษัท *
    Run Keyword And Continue On Failure    Element Text Should Be    ${add_branch_label}    สาขา *    
    Run Keyword And Continue On Failure    Element Text Should Be    ${add_employee_label}    พนักงาน
    Run Keyword And Continue On Failure    Element Text Should Be    ${add_verify_option_label}    ตัวเลือกยืนยัน *
    Run Keyword And Continue On Failure    Element Text Should Be    ${add_select_female_gender_text}    หญิง
    Run Keyword And Continue On Failure    Element Text Should Be    ${add_select_male_gender_text}    ชาย
    Run Keyword And Continue On Failure    Element Text Should Be    ${add_select_other_gender_text}    อื่นๆ
    Run Keyword And Continue On Failure    Element Text Should Be    ${add_select_email_text}    อีเมล
    Run Keyword And Continue On Failure    Element Text Should Be    ${add_select_auto_verify_text}    ยืนยันอัตโนมัติ
    ${email_place}    Get Element Attribute    ${add_email_field}    placeholder
    Run Keyword And Continue On Failure    Should Be Equal    ${email_place}    อีเมล
    ${name_place}    Get Element Attribute    ${add_name_field}    placeholder
    Run Keyword And Continue On Failure    Should Be Equal    ${name_place}    ชื่อ    
    ${surname_place}    Get Element Attribute    ${add_surname_field}    placeholder
    Run Keyword And Continue On Failure    Should Be Equal    ${surname_place}    นามสกุล
    Run Keyword And Continue On Failure    Element Text Should Be    ${add_company_placeholder}    Select...
    Run Keyword And Continue On Failure    Element Text Should Be    ${add_branch_placeholder}    Select...
    Run Keyword And Continue On Failure    Element Text Should Be    ${add_employee_placeholder}    Select...
    Run Keyword And Continue On Failure    Element Text Should Be    ${add_button}    เพิ่ม   

หน้า Add New User ตรวจสอบตัวอักษรสูงสุด
    open_add_new_user_menu
    ${max_email}    Get Element Attribute    ${add_email_field}    maxlength
    Run Keyword And Continue On Failure    Should Be Equal    ${max_email}    50
    ${max_name}    Get Element Attribute    ${add_name_field}    maxlength
    Run Keyword And Continue On Failure    Should Be Equal    ${max_name}    20
    ${max_surname}    Get Element Attribute    ${add_surname_field}    maxlength
    Run Keyword And Continue On Failure    Should Be Equal    ${max_surname}    20

กรณี Add โดยไม่กรอกข้อมูลทุกค่า
    open_add_new_user_menu
    Click Element    ${add_button}
    Run Keyword And Continue On Failure    Element Text Should Be    ${add_email_alert}    โปรดระบุอีเมล
    Run Keyword And Continue On Failure    Element Text Should Be    ${add_name_alert}    โปรดระบุชื่อ
    Run Keyword And Continue On Failure    Element Text Should Be    ${add_surname_alert}    โปรดระบุนามสกุล
    Run Keyword And Continue On Failure    Element Text Should Be    ${add_company_alert}    โปรดระบุบริษัท
    Run Keyword And Continue On Failure    Element Text Should Be    ${add_branch_alert}    โปรดระบุสาขา
    Wait Until Element Is Not Visible    ${confirm_add_edit_delete_button}

กรณี Add โดยกรอกข้อมูลที่ครบถ้วน ยกเว้น Employee
    ${email}    get_unique_data
    ${email}    Set Variable    ${email}@efinancethai.com
    open_add_new_user_menu
    add_new_user    email=${email}
    Wait Until Element Is Visible    ${confirm_add_edit_delete_button}

กรณีกรอก Email ซ้ำกับที่มีอยู่
    open_add_new_user_menu
    add_new_user    email=sakda@efinancethai.com
    Run Keyword And Continue On Failure    Element Text Should Be    ${add_email_alert}    อีเมลนี้ถูกใช้งานแล้ว
    Wait Until Element Is Not Visible    ${confirm_add_edit_delete_button}
    
กรณีกรอก Email ที่ไม่ถูกต้อง
    open_add_new_user_menu
    add_new_user    email=sakda@efinancethai
    Run Keyword And Continue On Failure    Element Text Should Be    ${add_email_alert}    อีเมลไม่ถูกต้อง
    Wait Until Element Is Not Visible    ${confirm_add_edit_delete_button}

กรณีกรอก First Name < 2 ตัวอักษร
    open_add_new_user_menu
    add_new_user    name=a
    Run Keyword And Continue On Failure    Element Text Should Be    ${add_name_alert}    ชื่อต้องมีจำนวนตัวอักษรอย่างน้อย 2 ตัวอักษร
    Wait Until Element Is Not Visible    ${confirm_add_edit_delete_button}

กรณีกรอก Surname < 2 ตัวอักษร
    open_add_new_user_menu
    add_new_user    surname=a
    Run Keyword And Continue On Failure    Element Text Should Be    ${add_surname_alert}    นามสกุลต้องมีจำนวนตัวอักษรอย่างน้อย 2 ตัวอักษร
    Wait Until Element Is Not Visible    ${confirm_add_edit_delete_button}

หน้าต่างยืนยันการ Add
     ${email}    get_unique_data
    ${email}    Set Variable    ${email}@efinancethai.com
    open_add_new_user_menu
    add_new_user    email=${email}
    Wait Until Element Is Visible    ${confirm_add_edit_delete_button}
    Run Keyword And Continue On Failure    Element Text Should Be    ${confirm_add_edit_delete_title}    เพิ่มผู้ใช้
    Run Keyword And Continue On Failure    Element Text Should Be    ${confirm_add_edit_delete_text}   คุณยืนยันที่จะเพิ่มผู้ใช้ใช่หรือไม่?
    Run Keyword And Continue On Failure    Element Text Should Be    ${confirm_add_edit_delete_button}    ยืนยัน
    Run Keyword And Continue On Failure    Element Text Should Be    ${cancel_confirm_add_edit_delete_button}    ยกเลิก

หน้าต่างยืนยันการ Add กรณีกดปุ่ม x
    ${email}    get_unique_data
    ${email}    Set Variable    ${email}@efinancethai.com
    open_add_new_user_menu
    add_new_user    email=${email}
    Wait Until Element Is Visible    ${close_confirm_add_edit_delete}
    Click Element    ${close_confirm_add_edit_delete}
    Wait Until Element Is Not Visible    ${close_confirm_add_edit_delete}

หน้าต่างยืนยันการ Add กรณีกดปุ่ม Cancel
    ${email}    get_unique_data
    ${email}    Set Variable    ${email}@efinancethai.com
    open_add_new_user_menu
    add_new_user    email=${email}
    Wait Until Element Is Visible    ${cancel_confirm_add_edit_delete_button}
    Click Element    ${cancel_confirm_add_edit_delete_button}
    Wait Until Element Is Not Visible    ${cancel_confirm_add_edit_delete_button}

กรณี Add User ด้วยข้อมูลที่ครบถ้วน และ ถูกต้อง โดยเลือก Verify ด้วย Email
    ${name}    Set Variable    ชื่อทดสอบ
    ${lastname}    Set Variable    นามสกุลทดสอบ
    ${email}    get_unique_data
    ${email}    Set Variable    ${email}@efinancethai.com
    ${company}    Set Variable    บริษัท ต.มานิตย์ การเดินรถ จำกัด
    ${branch}    Set Variable    บริษัท ต.มานิตย์ การเดินรถ จำกัด_อู่เอกชัย
    ${employee}    Set Variable    nong mai
    ${option}    Set Variable    อีเมล

    open_add_new_user_menu
    add_new_user    name=${name}    surname=${lastname}    email=${email}    company=${company}    branch=${branch}    employee=${employee}    option=${option}
    Wait Until Element Is Visible    ${confirm_add_edit_delete_button}
    Click Element    ${confirm_add_edit_delete_button}
    Wait Until Element Is Visible    ${top_right_alert}
    Run Keyword And Continue On Failure    Element Text Should Be    ${top_right_alert}    เพิ่มผู้ใช้งานสำเร็จ
    select_user    email=${email}
    Run Keyword And Continue On Failure    Element Should Contain    ${first_name_lastname_result}    ${name}
    Run Keyword And Continue On Failure    Element Should Contain    ${first_name_lastname_result}    ${lastname}

    ${check_email}    Get Element Attribute    ${edit_email_field}    value
    Run Keyword And Continue On Failure    Should Be Equal    ${check_email}    ${email}
    ${check_name}    Get Element Attribute    ${edit_name_field}    value
    Run Keyword And Continue On Failure    Should Be Equal    ${check_name}    ${name}
    ${check_lastname}    Get Element Attribute    ${edit_surname_field}    value
    Run Keyword And Continue On Failure    Should Be Equal    ${check_lastname}    ${lastname}
    Run Keyword And Continue On Failure    Element Text Should Be    ${edit_company_data}    ${company}       
    Run Keyword And Continue On Failure    Element Text Should Be    ${edit_branch_data}    ${branch}
    Run Keyword And Continue On Failure    Element Text Should Be    ${edit_employee_data}    ${employee}

กรณี Add User ด้วยข้อมูลที่ครบถ้วน และ ถูกต้อง โดยเลือก Verify ด้วย Auto verify
    ${name}    Set Variable    ชื่อทดสอบ
    ${lastname}    Set Variable    นามสกุลทดสอบ
    ${email}    get_unique_data
    ${email}    Set Variable    ${email}@efinancethai.com
    ${company}    Set Variable    บริษัท ต.มานิตย์ การเดินรถ จำกัด
    ${branch}    Set Variable    บริษัท ต.มานิตย์ การเดินรถ จำกัด_อู่เอกชัย
    ${employee}    Set Variable    nong mai
    ${option}    Set Variable    ยืนยันอัตโนมัติ

    open_add_new_user_menu
    add_new_user    name=${name}    surname=${lastname}    email=${email}    company=${company}    branch=${branch}    employee=${employee}    option=${option}
    Wait Until Element Is Visible    ${confirm_add_edit_delete_button}
    Click Element    ${confirm_add_edit_delete_button}
    Wait Until Element Is Visible    ${top_right_alert}
    Run Keyword And Continue On Failure    Element Text Should Be    ${top_right_alert}    เพิ่มผู้ใช้งานสำเร็จ
    Wait Until Element Is Visible    ${view_password_close_button}
    Click Element    ${view_password_close_button}
    #${search}    get_unique_data
    select_user    email=${email}
    Run Keyword And Continue On Failure    Element Should Contain    ${first_name_lastname_result}    ${name}
    Run Keyword And Continue On Failure    Element Should Contain    ${first_name_lastname_result}    ${lastname}

    ${check_email}    Get Element Attribute    ${edit_email_field}    value
    Run Keyword And Continue On Failure    Should Be Equal    ${check_email}    ${email}
    ${check_name}    Get Element Attribute    ${edit_name_field}    value
    Run Keyword And Continue On Failure    Should Be Equal    ${check_name}    ${name}
    ${check_lastname}    Get Element Attribute    ${edit_surname_field}    value
    Run Keyword And Continue On Failure    Should Be Equal    ${check_lastname}    ${lastname}
    Run Keyword And Continue On Failure    Element Text Should Be    ${edit_company_data}    ${company}       
    Run Keyword And Continue On Failure    Element Text Should Be    ${edit_branch_data}    ${branch}
    Run Keyword And Continue On Failure    Element Text Should Be    ${edit_employee_data}    ${employee}

หน้าต่าง View password
    ${email}    get_unique_data
    ${email}    Set Variable    ${email}@efinancethai.com
    open_add_new_user_menu
    add_new_user    email=${email}    option=ยืนยันอัตโนมัติ
    Wait Until Element Is Visible    ${confirm_add_edit_delete_button}
    Click Element    ${confirm_add_edit_delete_button}
    Wait Until Element Is Visible    ${view_password_close_button}
    Run Keyword And Continue On Failure    Element Text Should Be    ${view_password_title}    ดูรหัสผ่าน
    Run Keyword And Continue On Failure    Element Text Should Be    ${view_password_label}    รหัสผ่าน (อัตโนมัติ)
    Run Keyword And Continue On Failure    Element Text Should Be    ${view_password_close_button}    ปิด

หน้าต่าง View Password กรณีกดปุ่ม x
    ${email}    get_unique_data
    ${email}    Set Variable    ${email}@efinancethai.com
    open_add_new_user_menu
    add_new_user    email=${email}    option=ยืนยันอัตโนมัติ
    Wait Until Element Is Visible    ${confirm_add_edit_delete_button}
    Click Element    ${confirm_add_edit_delete_button}
    Wait Until Element Is Visible    ${view_password_x_button}
    Click Element    ${view_password_x_button}
    Wait Until Element Is Not Visible    ${view_password_x_button}
    Wait Until Element Is Visible    ${title}

หน้าต่าง View Password กรณีกดปุ่ม close
    ${email}    get_unique_data
    ${email}    Set Variable    ${email}@efinancethai.com
    open_add_new_user_menu
    add_new_user    email=${email}    option=ยืนยันอัตโนมัติ
    Wait Until Element Is Visible    ${confirm_add_edit_delete_button}
    Click Element    ${confirm_add_edit_delete_button}
    Wait Until Element Is Visible    ${view_password_close_button}
    Click Element    ${view_password_close_button}
    Wait Until Element Is Not Visible    ${view_password_close_button}
    Wait Until Element Is Visible    ${title}

กรณีกดเลือก User
    ${email}    Set Variable    sakda.greenwork@gmail.com
    open_user_management_menu
    select_user    ${email}

หน้า User
    ${email}    Set Variable    sakda.greenwork@gmail.com
    open_user_management_menu
    select_user    ${email}
    Run Keyword And Continue On Failure    Element Text Should Be    ${confirm_button}    ยืนยัน
    Run Keyword And Continue On Failure    Element Text Should Be    ${delete_button}    ลบ
    Run Keyword And Continue On Failure    Element Text Should Be    ${edit_user_title}    ผู้ใช้งาน
    Run Keyword And Continue On Failure    Element Text Should Be    ${edit_user_data_dropdown_text}    ข้อมูลผู้ใช้งาน
    Run Keyword And Continue On Failure    Element Text Should Be    ${edit_email_label}    อีเมล
    Run Keyword And Continue On Failure    Element Text Should Be    ${edit_name_label}   ชื่อ *
    Run Keyword And Continue On Failure    Element Text Should Be    ${edit_surname_label}    นามสกุล *
    Run Keyword And Continue On Failure    Element Text Should Be    ${edit_gender_label}    เพศ *
    Run Keyword And Continue On Failure    Element Text Should Be    ${edit_company_label}   บริษัท *
    Run Keyword And Continue On Failure    Element Text Should Be    ${edit_branch_label}    สาขา *
    Run Keyword And Continue On Failure    Element Text Should Be    ${edit_employee_label}    พนักงาน
    Run Keyword And Continue On Failure    Element Text Should Be    ${edit_status_label}    สถานะ *
    ${place_name}    Get Element Attribute    ${edit_name_field}    placeholder
    Run Keyword And Continue On Failure    Should Be Equal    ${place_name}    ชื่อ
    ${place_lastname}    Get Element Attribute    ${edit_surname_field}    placeholder
    Run Keyword And Continue On Failure    Should Be Equal    ${place_lastname}    นามสกุล
    Run Keyword And Continue On Failure    Element Text Should Be    ${edit_select_female_text}    หญิง
    Run Keyword And Continue On Failure    Element Text Should Be    ${edit_select_male_text}    ชาย
    Run Keyword And Continue On Failure    Element Text Should Be    ${edit_select_other_text}    อื่นๆ
    Run Keyword And Continue On Failure    Element Text Should Be    ${edit_status_text}    เปิดใช้งาน
    Mouse Over    ${edit_button}
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    //html/body/div[2]//*[text()="แก้ไข"]
    Run Keyword And Continue On Failure    Element Should Be Disabled    ${edit_email_field}
    Run Keyword And Continue On Failure    Element Should Be Disabled    ${edit_name_field}
    Run Keyword And Continue On Failure    Element Should Be Disabled    ${edit_surname_field}
    Run Keyword And Continue On Failure    Element Should Be Disabled    ${edit_check_disable_female}
    Run Keyword And Continue On Failure    Element Should Be Disabled    ${edit_check_disable_male}
    Run Keyword And Continue On Failure    Element Should Be Disabled    ${edit_check_disable_other}
    Run Keyword And Continue On Failure    Element Should Be Disabled    ${edit_company_field}
    Run Keyword And Continue On Failure    Element Should Be Disabled    ${edit_branch_field}
    Run Keyword And Continue On Failure    Element Should Be Disabled    ${edit_employee_field}
    Run Keyword And Continue On Failure    Element Should Be Disabled    ${edit_status_button}
    
ตัวอักษรสูงสุดหน้า User
    ${email}    Set Variable    sakda.greenwork@gmail.com
    open_user_management_menu
    select_user    ${email} 
    ${max_name}    Get Element Attribute    ${edit_name_field}    maxlength
    Run Keyword And Continue On Failure    Should Be Equal    ${max_name}    20
    ${max_surname}    Get Element Attribute    ${edit_surname_field}    maxlength
    Run Keyword And Continue On Failure    Should Be Equal    ${max_surname}    20

หน้า User กรณีกดปุ่ม Edit
    ${email}    Set Variable    sakda.greenwork@gmail.com
    open_user_management_menu
    select_user    ${email}
    Click Element    ${edit_button}
    Wait Until Element Is Not Visible    ${check_edit_button}
    Wait Until Element Is Visible    ${check_cancel_edit_button}
    Wait Until Element Is Visible    ${check_save_edit_button}
    Run Keyword And Continue On Failure    Element Should Be Disabled    ${save_button}
    Mouse Over    ${cancel_button}
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    //html/body/div[2]//*[text()="ยกเลิกการแก้ไข"]
    Run Keyword And Continue On Failure    Element Should Be Disabled    ${edit_email_field}
    Run Keyword And Continue On Failure    Element Should Be Enabled    ${edit_name_field}
    Run Keyword And Continue On Failure    Element Should Be Enabled    ${edit_surname_field}
    Run Keyword And Continue On Failure    Element Should Be Enabled    ${edit_check_disable_female}
    Run Keyword And Continue On Failure    Element Should Be Enabled    ${edit_check_disable_male}
    Run Keyword And Continue On Failure    Element Should Be Enabled    ${edit_check_disable_other}
    Run Keyword And Continue On Failure    Element Should Be Enabled    ${edit_company_field}
    Run Keyword And Continue On Failure    Element Should Be Enabled    ${edit_branch_field}
    Run Keyword And Continue On Failure    Element Should Be Enabled    ${edit_employee_field}
    Run Keyword And Continue On Failure    Element Should Be Enabled    ${edit_status_button}
    
หน้า User ปุ่ม Save กรณีมีการเปลี่ยนเปลงข้อมูล
    ${email}    Set Variable    sakda.greenwork@gmail.com
    open_user_management_menu
    select_user    ${email}
    Click Element    ${edit_button}
    Wait Until Element Is Not Visible    ${check_edit_button}
    Wait Until Element Is Visible    ${check_cancel_edit_button}
    Wait Until Element Is Visible    ${check_save_edit_button}
    Input Text    ${edit_name_field}    123
    Run Keyword And Continue On Failure    Element Should Be Enabled    ${save_button}
    Mouse Over    ${save_button}
    Run Keyword And Continue On Failure    Wait Until element Is Visible    //html/body/div[2]//*[text()="บันทึก"]

กรณี Edit User โดยลบค่า Name, Lastname ให้ว่าง
    ${email}    Set Variable    sakda.greenwork@gmail.com
    open_user_management_menu
    select_user    ${email}
    Click Element    ${edit_button}
    Clear Element Text    ${edit_name_field}
    Clear Element Text    ${edit_surname_field}
    Click Element    ${save_button}
    Run Keyword And Continue On Failure    Element Text Should Be    ${edit_name_alert}   โปรดระบุชื่อ
    Run Keyword And Continue On Failure    Element Text Should Be    ${edit_surname_alert}   โปรดระบุนามสกุล

กรณี Edit โดยกรอก Name < 2 ตัวอักษร
    ${email}    Set Variable    sakda.greenwork@gmail.com
    open_user_management_menu
    select_user    ${email}
    Click Element    ${edit_button}
    Input Text    ${edit_name_field}    q
    Click Element    ${save_button}
    Element Text Should Be    ${edit_name_alert}    โปรดระบุชื่อ

กรณี Edit โดยกรอก Last Name < 2 ตัวอักษร
    ${email}    Set Variable    sakda.greenwork@gmail.com
    open_user_management_menu
    select_user    ${email}
    Click Element    ${edit_button}
    Input Text    ${edit_surname_field}    q
    Click Element    ${save_button}
    Element Text Should Be    ${edit_surname_alert}    โปรดระบุนามสกุล

หน้าต่างยืนยันการ Edit
    ${email}    Set Variable    sakda.greenwork@gmail.com
    open_user_management_menu
    select_user    ${email}
    Click Element    ${confirm_button}
    Wait Until Element Is Visible    ${confirm_add_edit_delete_button}
    Wait Until Element Is Visible    ${close_confirm_add_edit_delete}
    Run Keyword And Continue On Failure    Element Text Should Be    ${confirm_add_edit_delete_title}    แก้ไขผู้ใช้งาน
    Run Keyword And Continue On Failure    Element Text Should Be    ${confirm_add_edit_delete_text}    คุณยืนยันที่จะแก้ไขผู้ใช้งานใช่หรือไม่?
    Run Keyword And Continue On Failure    Element Text Should Be    ${confirm_add_edit_delete_button}    ยืนยัน
    Run Keyword And Continue On Failure    Element Text Should Be    ${cancel_confirm_add_edit_delete_button}    ยกเลิก
    
กรณีกดปุ่ม x หน้าต่างยืนยันการ Edit
    ${email}    Set Variable    sakda.greenwork@gmail.com
    open_user_management_menu
    select_user    ${email}
    Click Element    ${confirm_button}
    Wait Until Element Is Visible    ${close_confirm_add_edit_delete}
    Click Element    ${close_confirm_add_edit_delete}
    Wait Until Element Is Not Visible    ${close_confirm_add_edit_delete}
    Wait Until Element Is Visible    ${title}

กรณีกดปุ่ม Cancel หน้าต่างยืนยันการ Edit
    ${email}    Set Variable    sakda.greenwork@gmail.com
    open_user_management_menu
    select_user    ${email}
    Click Element    ${confirm_button}
    Wait Until Element Is Visible    ${cancel_confirm_add_edit_delete_button}
    Click Element    ${cancel_confirm_add_edit_delete_button}
    Wait Until Element Is Not Visible    ${cancel_confirm_add_edit_delete_button}
    Wait Until Element Is Visible    ${title}

กรณี Edit ชื่อ
    ${old_name}    Set Variable    Sakda
    ${new_name}    Set Variable    Edit Sakda

    ${email}    Set Variable    sakda.greenwork@gmail.com
    open_user_management_menu
    select_user    ${email}
    Click Element    ${edit_button}
    Input Text    ${edit_name_field}    ${new_name}
    Click Element    ${save_button}
    Click Element    ${save_button}
    Click Element    ${confirm_button}
    Click Element    ${confirm_add_edit_delete_button}
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    ${top_right_alert}
    Run Keyword And Continue On Failure    Element Text Should Be    ${top_right_alert}    แก้ไขผู้ใช้งานสำเร็จ
    Close Browser

    open_user_management_menu
    select_user    ${email}
    Run Keyword And Continue On Failure    Element Should Contain    ${first_name_lastname_result}    ${new_name}      
    ${check_name}    Get Element Attribute    ${edit_name_field}    value        
    Should Be Equal    ${check_name}    ${new_name}
    
    Click Element    ${edit_button}
    Input Text    ${edit_name_field}    ${old_name}
    Click Element    ${save_button}
    Click Element    ${save_button}
    Click Element    ${confirm_button}
    Click Element    ${confirm_add_edit_delete_button}

กรณี Edit นามสกุล
    ${old_lastname}    Set Variable    Lertladasak
    ${new_lastname}    Set Variable    Edit Lertladasak

    ${email}    Set Variable    sakda.greenwork@gmail.com
    open_user_management_menu
    select_user    ${email}
    Click Element    ${edit_button}
    Input Text    ${edit_surname_field}    ${new_lastname}
    Click Element    ${save_button}
    Click Element    ${save_button}
    Click Element    ${confirm_button}
    Click Element    ${confirm_add_edit_delete_button}
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    ${top_right_alert}
    Run Keyword And Continue On Failure    Element Text Should Be    ${top_right_alert}    แก้ไขผู้ใช้งานสำเร็จ
    Close Browser

    open_user_management_menu
    select_user    ${email}
    Run Keyword And Continue On Failure    Element Should Contain    ${first_name_lastname_result}    ${new_lastname}      
    ${check_lastname}    Get Element Attribute    ${edit_surname_field}    value        
    Should Be Equal    ${check_lastname}    ${new_lastname}
    
    Click Element    ${edit_button}
    Input Text    ${edit_surname_field}    ${old_lastname}
    Click Element    ${save_button}
    Click Element    ${save_button}
    Click Element    ${confirm_button}
    Click Element    ${confirm_add_edit_delete_button}

กรณี Edit พนักงาน
    ${old_employee}    Set Variable    nong mai
    ${new_employee}    Set Variable    test test

    ${email}    Set Variable    sakda.greenwork@gmail.com
    open_user_management_menu
    select_user    ${email}
    Click Element    ${edit_button}
   
    Input Text    ${edit_employee_field}    ${new_employee}
    Wait Until Element Is Visible    ${edit_employee_dropdown}//*[text()="${new_employee}"]    15
    Click Element    ${edit_employee_dropdown}//*[text()="${new_employee}"]

    Click Element    ${save_button}
    Click Element    ${confirm_button}
    Click Element    ${confirm_add_edit_delete_button}
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    ${top_right_alert}
    Run Keyword And Continue On Failure    Element Text Should Be    ${top_right_alert}    แก้ไขผู้ใช้งานสำเร็จ
    Close Browser

    open_user_management_menu
    select_user    ${email}     
    Element Text Should Be    ${edit_employee_data}    ${new_employee}
    
    Click Element    ${edit_button}
    Input Text    ${edit_employee_field}    ${old_employee}
    Wait Until Element Is Visible    ${edit_employee_dropdown}//*[text()="${old_employee}"]    15
    Click Element    ${edit_employee_dropdown}//*[text()="${old_employee}"]

    Click Element    ${save_button}
    Click Element    ${confirm_button}
    Click Element    ${confirm_add_edit_delete_button}


#กรณี Edit สาขา

กรณี Edit บริษัท และ สาขา
    ${old_company}    Set Variable    บริษัท ต.มานิตย์ การเดินรถ จำกัด
    ${new_company}    Set Variable    บริษัท หลีกภัยขนส่ง จำกัด

    ${old_branch}    Set Variable    บริษัท ต.มานิตย์ การเดินรถ จำกัด_อู่เอกชัย
    ${new_branch}    Set Variable    บริษัท หลีกภัยขนส่ง จำกัด_อู่บางพูน

    ${email}    Set Variable    sakda.greenwork@gmail.com
    open_user_management_menu
    select_user    ${email}
    Click Element    ${edit_button}
   
    Input Text    ${edit_company_field}    ${new_company}
    Wait Until Element Is Visible    ${edit_company_dropdown}//*[text()="${new_company}"]    10
    Click Element   ${edit_company_dropdown}//*[text()="${new_company}"]
    Input Text    ${edit_branch_field}    ${new_branch}
    Wait Until Element Is Visible    ${edit_branch_dropdown}//*[text()="${new_branch}"]    10
    Click Element   ${edit_branch_dropdown}//*[text()="${new_branch}"]

    Click Element    ${save_button}
    Click Element    ${confirm_button}
    Click Element    ${confirm_add_edit_delete_button}
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    ${top_right_alert}
    Run Keyword And Continue On Failure    Element Text Should Be    ${top_right_alert}    แก้ไขผู้ใช้งานสำเร็จ
    Close Browser

    open_user_management_menu
    select_user    ${email}     
    Element Text Should Be    ${edit_company_data}    ${new_company}
    Element Text Should Be    ${edit_branch_data}    ${new_branch}
    
    Click Element    ${edit_button}
    Input Text    ${edit_company_field}    ${old_company}
    Wait Until Element Is Visible    ${edit_company_dropdown}//*[text()="${old_company}"]    10
    Click Element   ${edit_company_dropdown}//*[text()="${old_company}"]
    Input Text    ${edit_branch_field}    ${old_branch}
    Wait Until Element Is Visible    ${edit_branch_dropdown}//*[text()="${old_branch}"]    10
    Click Element   ${edit_branch_dropdown}//*[text()="${old_branch}"]

    Click Element    ${save_button}
    Click Element    ${confirm_button}
    Click Element    ${confirm_add_edit_delete_button}

กรณีกดปุ่ม Delete
    ${email}    Set Variable    sakda.greenwork@gmail.com    
    open_user_management_menu
    select_user    ${email}
    Click Element    ${delete_button}
    Wait Until Element Is Visible    ${confirm_add_edit_delete_button}

หน้าต่างยืนยันการ Delete
    ${email}    Set Variable    sakda.greenwork@gmail.com    
    open_user_management_menu
    select_user    ${email}
    Click Element    ${delete_button}
    Wait Until Element Is Visible    ${confirm_add_edit_delete_button}
    Run Keyword And Continue On Failure    Element Text Should Be    ${confirm_add_edit_delete_title}    ลบผู้ใช้งาน
    Run Keyword And Continue On Failure    Element Text Should Be    ${confirm_add_edit_delete_text}     คุณยืนยันที่จะลบผู้ใช้งาน : ${email} ใช่หรือไม่?
    Run Keyword And Continue On Failure    Element Text Should Be    ${confirm_add_edit_delete_button}    ยืนยัน
    Run Keyword And Continue On Failure    Element Text Should Be    ${cancel_confirm_add_edit_delete_button}    ยกเลิก
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    ${close_confirm_add_edit_delete}

กรณีกดปุ่ม x หน้าต่างยืนยันการ Delete
    ${email}    Set Variable    sakda.greenwork@gmail.com    
    open_user_management_menu
    select_user    ${email}
    Click Element    ${delete_button}
    Wait Until Element Is Visible    ${close_confirm_add_edit_delete}
    Click Element    ${close_confirm_add_edit_delete}
    Wait Until Element Is Not Visible    ${close_confirm_add_edit_delete}
    Wait Until Element Is Visible    ${title}

กรณีกดปุ่ม Cancel หน้าต่างยืนยันการ Delete   
    ${email}    Set Variable    sakda.greenwork@gmail.com    
    open_user_management_menu
    select_user    ${email}
    Click Element    ${delete_button}
    Wait Until Element Is Visible   ${cancel_confirm_add_edit_delete_button}
    Click Element    ${cancel_confirm_add_edit_delete_button}
    Wait Until Element Is Not Visible    ${cancel_confirm_add_edit_delete_button}
    Wait Until Element Is Visible    ${title}

กรณี Delete ข้อมูล
    ${email}    Set Variable    sakda.greenwork@gmail.com    
    open_user_management_menu
    select_user    ${email}
    Click Element    ${delete_button}
    Wait Until Element Is Visible   ${confirm_add_edit_delete_button}
    Click Element    ${confirm_add_edit_delete_button}
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    ${top_right_alert}
    Run Keyword And Continue On Failure    Element Text Should Be    ${top_right_alert}    ลบผู้ใช้งานสำเร็จ
    Input Text    ${search_box}    ${email}
    Click Element    ${first_search_result}


# เพศ สาขา สถานะ ยังหาวิธีเช็คข้อมูลไม่ได้
# กรณี Edit เพศ
# กรณี Edit สาขา
# กรณี Edit สถานะ
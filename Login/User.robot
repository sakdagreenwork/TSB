*** Settings ***
Library             SeleniumLibrary    screenshot_root_directory=/Users/sakda.l/Desktop/TSB Automate/Login/Failed Screenshot
Library             Collections
Library    OperatingSystem
Resource            keyword.robot

Test Teardown       Close Browser


*** Variables ***
${hamburger_button}                         //*[@id="root"]/main/header/div/div/div[1]/div[2]//*[name()='svg']
${setting_button}                           //*[@id="root"]/main/div[2]//div[1]/div[2]/div/div/div/ul/li[9]
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
${edit_select_female_box}                   //*[@id="root"]/main//main/div[2]/div/div/div[1]/div[2]//form/div[3]/div/div[2]/label/span[2]
${edit_select_male_box}                     //*[@id="root"]/main//main/div[2]/div/div/div[1]/div[2]//form/div[3]/div/div[3]/label/span[1]
${edit_select_female_box}                   //*[@id="root"]/main//main/div[2]/div/div/div[1]/div[2]//form/div[3]/div/div[3]/label/span[2]
${edit_company_field}                       //*[@id="root"]/main//main/div[2]/div/div/div[1]/div[2]//form/div[4]/div[1]/div/div/div[1]/div/input
${edit_branch_field}                        //*[@id="root"]/main//main/div[2]/div/div/div[1]/div[2]//form/div[4]/div[2]/div/div/div[1]/div/input
${edit_employee_field}                      ///*[@id="root"]/main//main/div[2]/div/div/div[1]/div[2]//form/div[5]/div/div/div/div[2]/input
${edit_status_button}                       //*[@id="root"]/main//main/div[2]/div/div/div[1]/div[2]//form/div[6]/div/label/input
${edit_status_text}                         //*[@id="root"]/main//main/div[2]/div/div/div[1]/div[2]//form/div[6]/div/label/span

${edit_name_alert}                          //*[@id="root"]/main//main/div[2]/div/div/div[1]/div[2]//form/div[2]/div[1]/div/div[2]
${edit_surname_alert}                       //*[@id="root"]/main//main/div[2]/div/div/div[1]/div[2]//form/div[2]/div[2]/div/div[2]

${edit_button}                              //*[@id="root"]/main//main/div[2]/div/div/div[1]/div[2]//form/div[7]/div/div/button
${cancel_button}                            //*[@id="root"]/main//main/div[2]/div/div/div[1]/div[2]//form/div[7]/div[1]/button
${save_button}                              //*[@id="root"]/main//main/div[2]/div/div/div[1]/div[2]//form/div[7]/div[2]/button
${confirm_button}                           //*[@id="root"]/main//main/div[2]/div/div[1]/header/div[2]/div/button
${delete_button}                            //*[@id="root"]/main//main/div[2]/div/div[1]/header/div[3]/div/button

${top_right_alert}                          //main/div/div/div/div[@role="alert"]/div[2]

${no_data_text}                             //*[@id="root"]/main//main/div[2]/div[1]/div[2]//text/tspan

*** Keywords ***
open_user_management_menu
    Log In Valid
    Wait Until Element Is Visible    ${hamburger_button}
    Click Element    ${hamburger_button}
    Wait Until Element Is Visible    ${setting_button}
    Click Element    ${setting_button}
    Wait Until Element Is Visible    ${user_manage_button}
    Click Element    ${user_manage_button}
    Wait Until Element Is Visible    ${add_new_user_button}

open_add_new_user_menu
    open_user_management_menu
    Click Element    ${add_new_user_button}
    Wait Until Element Is Visible    ${add_button}

add_new_user
    [Arguments]    ${email}=sakda@efinancethai.automatetest    ${name}=ชื่อ    ${surname}=นามสกุล
    ...            ${gender}=ชาย    ${company}=บริษัท ต.มานิตย์ การเดินรถ จำกัด    ${branch}=บริษัท ต.มานิตย์ การเดินรถ จำกัด_อู่เอกชัย
    ...            ${employee}=nong mai    ${option}=อีเมล       

    Input Text    ${add_email_field}    ${email}
    Input Text    ${add_name_field}    ${name}
    Input Text    ${add_surname_field}    ${surname}
    Click Element    ${add_select_female_gender_box}
    Input Text    ${add_company_field}    ${company}
    Wait Until Element Is Visible    ${add_company_dropdown}//*[text()="${company}"]
    Click Element   ${add_company_dropdown}//*[text()="${company}"]
    Input Text    ${add_branch_field}    ${branch}
    Wait Until Element Is Visible    ${add_branch_dropdown}//*[text()="${branch}"]
    Click Element   ${add_branch_dropdown}//*[text()="${branch}"]
    Input Text    ${add_employee_field}    ${employee}
    Wait Until Element Is Visible    ${add_employee_dropdown}//*[text()="${employee}"]    15
    Click Element    ${add_employee_dropdown}//*[text()="${employee}"]

    Click Element    ${add_button}    

*** Test Cases ***
เปิดหน้า User Management
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
    Run Keyword And Continue On Failure
    ...    Element Text Should Be
    ...    ${select_to_view_text}
    ...    เลือกเพื่อดูรายละเอียดผู้ใช้
    Mouse Over    ${add_new_user_button}
    Wait Until Element Is Enabled    //*[@id="tippy-1"]//*[text()="เพิ่มพนักงาน"]

กรณีค้นหาข้อมูลที่ไม่มี
    open_user_management_menu
    Input Text    ${search_box}    ข้อมูลที่ไม่มี
    Element Text Should Be    ${no_data_text}    ไม่พบข้อมูล

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

กรณี Add โดยไม่กรอกข้อมูล
    open_add_new_user_menu
    Click Element    ${add_button}
    Run Keyword And Continue On Failure    Element Text Should Be    ${add_email_alert}    โปรดระบุอีเมล
    Run Keyword And Continue On Failure    Element Text Should Be    ${add_name_alert}    โปรดระบุชื่อ
    Run Keyword And Continue On Failure    Element Text Should Be    ${add_surname_alert}    โปรดระบุนามสกุล
    Run Keyword And Continue On Failure    Element Text Should Be    ${add_company_alert}    โปรดระบุบริษัท
    Run Keyword And Continue On Failure    Element Text Should Be    ${add_branch_alert}    โปรดระบุสาขา
    Wait Until Element Is Not Visible    ${confirm_add_edit_delete_button}

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
    open_add_new_user_menu
    add_new_user
    Wait Until Element Is Visible    ${confirm_add_edit_delete_button}
    Run Keyword And Continue On Failure    Element Text Should Be    ${confirm_add_edit_delete_title}    เพิ่มผู้ใช้
    Run Keyword And Continue On Failure    Element Text Should Be    ${confirm_add_edit_delete_text}   คุณยืนยันที่จะเพิ่มผู้ใช้ใช่หรือไม่?
    Run Keyword And Continue On Failure    Element Text Should Be    ${confirm_add_edit_delete_button}    ยืนยัน
    Run Keyword And Continue On Failure    Element Text Should Be    ${cancel_confirm_add_edit_delete_button}    ยกเลิก

หน้าต่างยืนยันการ Add กรณีกดปุ่ม x
    open_add_new_user_menu
    add_new_user
    Wait Until Element Is Visible    ${close_confirm_add_edit_delete}
    Click Element    ${close_confirm_add_edit_delete}
    Wait Until Element Is Not Visible    ${close_confirm_add_edit_delete}

หน้าต่างยืนยันการ Add กรณีกดปุ่ม Cancel
    open_add_new_user_menu
    add_new_user
    Wait Until Element Is Visible    ${cancel_confirm_add_edit_delete_button}
    Click Element    ${cancel_confirm_add_edit_delete_button}
    Wait Until Element Is Not Visible    ${cancel_confirm_add_edit_delete_button}

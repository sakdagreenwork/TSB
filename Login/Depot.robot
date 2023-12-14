*** Settings ***
Library    SeleniumLibrary    screenshot_root_directory=/Users/sakda.l/Desktop/TSB Automate/Login/Failed Screenshot
Resource    keyword.robot
Test Teardown    Close Browser 
*** Variables ***
${title}    //*[@id="root"]/main/header/div/div/div[1]/div[3]/h4

${total}    //*[@id="root"]/main//div/div/div/div[2]/div/div/div/div[1]/div[2]/span
${active}    //*[@id="root"]/main//div/div/div/div[2]/div/div/div/div[2]/div[2]/span
${inactive}    //*[@id="root"]/main//div/div/div/div[2]/div/div/div/div[3]/div[2]/span

${search_box}    //*[@id="root"]/main//main/div[1]/div[1]/div/input
${add_button}    //*[@id="root"]/main//main/div[1]/div[2]/div/button
${edit_button}    //*[@id="root"]/main//main/div/div[1]/div[2]/div/div/div/div[1]/div/div[1]/div/button
${delete_button}    //*[@id="root"]/main//main/div/div[1]/div[2]/div/div/div/div[1]/div/div[2]/div/div/button

${add_edit_close_button}    //*[@id="headlessui-portal-root"]/div/div/div/div[2]/div/div/div/button
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

${confirm_delete_title}    //*[@id="headlessui-portal-root"]/div//div[2]//h2
${confirm_delete_text}    //*[@id="headlessui-portal-root"]/div//div[2]//div[2]/div
${confirm_delete_button}    //*[@id="headlessui-portal-root"]/div//div[2]//div[3]/div/div/div[1]
${cancel_confirm_delete_button}    //*[@id="headlessui-portal-root"]/div//div[2]//div[3]/div/div/div[2]


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
open_depot_menu
    Log In Valid
    Wait Until Element Is Visible    //*[@id="root"]/main/header/div/div/div[1]/div[2]//*[name()='svg']    20
    Click Element    //*[@id="root"]/main/header/div/div/div[1]/div[2]//*[name()='svg']
    Wait Until Element Is Visible    //*[@id="root"]/main/div[2]/div[3]/div[1]/div[2]/div/div/div/ul/li[6]/div[1]/div[1]/div    20
    Click Element    //*[@id="root"]/main/div[2]/div[3]/div[1]/div[2]/div/div/div/ul/li[6]/div[1]/div[1]/div
    Wait Until Element Is Visible    //*[@id="root"]/main/div[2]/div[3]/div[1]/div[2]/div/div/div/ul/li[6]/div[2]/div/ul/li[4]/a/span/span[2]    20
    Wait Until Element Is Enabled    //*[@id="root"]/main/div[2]//div[1]/div[2]/div/div/div/ul/li[6]/div[2]/div/ul/li[7]/a/span/span[2]
    Sleep    1
    Click Element    //*[@id="root"]/main/div[2]//div[1]/div[2]/div/div/div/ul/li[6]/div[2]/div/ul/li[7]/a/span/span[2]
    Wait Until Element Is Visible    ${total}    15

open_add_new_depot_menu
    open_depot_menu
    Click Element    ${add_button}
    Wait Until Element Is Visible    ${add_edit_title}

add_new_depot
    [Arguments]    ${depot_name}=อู่แสมรุ้ง    ${type}=Bus    ${status}=active    ${latitude}=999.999    ${longitude}=999.999

    open_add_new_depot_menu
    Clear Element Text    ${latitude_field}
    Clear Element Text    ${longitude_field}
    Input Text    ${depot_name_field}    ${depot_name}
    Click Element    ${type_dropdown_button}
    Input Text    ${type_dropdown_field}    ${type}
    Click Element    //*[@id="headlessui-portal-root"]//form/div[2]/div[1]/div/div[2]//*[text()[contains(.,"${type}")]]
    Click Element    ${status_dropdown_button}
    Input Text    ${status_dropdown_field}    ${status}
    Click Element    //*[@id="headlessui-portal-root"]//form/div[2]/div[2]/div/div[2]//*[text()="${status}"]
    Input Text    ${latitude_field}    ${latitude}
    Input Text    ${longitude_field}    ${longitude}
    Click Element    ${add_edit_button}
    Click Element    ${add_edit_button}


open_edit_depot_menu
    [Arguments]    ${depot}=อู่แสมฟ้า
    open_depot_menu
    select_depot    ${depot}
    Wait Until Element Is Visible    ${edit_button}
    Click Element    ${edit_button}
    Wait Until Element Is Visible    ${add_edit_title}

select_depot
    [Arguments]    ${depot}=อู่แสมฟ้า
    Input Text    ${search_box}    ${depot}
    Wait Until Element Is Visible    ${first_search_result}    10
    Click Element    ${first_search_result}
    Wait Until Element Is Visible    ${middle_depot_name}
    Run Keyword And Continue On Failure    Element Text Should Be    ${middle_depot_name}    ${depot}
    Wait Until Element Is Visible    ${right_depot_name}
    Run Keyword And Continue On Failure    Element Text Should Be    ${right_depot_name}    ${depot}

    
*** Test Cases ***
หน้า Depot
    open_depot_menu
    Run Keyword And Continue On Failure    Element Text Should Be    ${title}    อู่รถ
    Run Keyword And Continue On Failure    Element Should Contain    ${total}    ทั้งหมด
    Run Keyword And Continue On Failure    Element Should Contain    ${total}    รายการ
    Run Keyword And Continue On Failure    Element Should Contain    ${active}    ใช้งาน
    Run Keyword And Continue On Failure    Element Should Contain    ${active}    รายการ
    Run Keyword And Continue On Failure    Element Should Contain    ${inactive}    ไม่มีการใช้งาน
    Run Keyword And Continue On Failure    Element Should Contain    ${active}    รายการ
    ${search_text}    Get Element Attribute    ${search_box}    placeholder
    Run Keyword And Continue On Failure    Should Be Equal    ${search_text}    ค้นหา...
    Run Keyword And Continue On Failure    Element Text Should Be    ${select_to_view_text}    เลือกอู่รถเพื่อดูข้อมูล

หน้า Add New Depot
    open_add_new_depot_menu
    Run Keyword And Continue On Failure    Element Text Should Be    ${add_edit_title}    เพิ่มอู่รถ
    Run Keyword And Continue On Failure    Element Text Should Be    ${depot_name_label}    ชื่ออู่รถ *
    ${name_placeholder}    Get Element Attribute    ${depot_name_field}    placeholder
    Run Keyword And Continue On Failure    Should Be Equal    ${name_placeholder}    ชื่ออู่รถ   
    Run Keyword And Continue On Failure    Element Text Should Be    ${type_label}    ประเภท *
    Run Keyword And Continue On Failure    Element Text Should Be    //*[@id="headlessui-portal-root"]//form/div[2]/div[1]/div/div/div[1]/div[1]    ค้นหา...
    Run Keyword And Continue On Failure    Element Text Should Be    ${status_label}    สถานะ *
    Run Keyword And Continue On Failure    Element Text Should Be    //*[@id="headlessui-portal-root"]//form/div[2]/div[2]/div/div/div[1]/div[1]    ค้นหา...
    Run Keyword And Continue On Failure    Element Text Should Be    ${latitude_label}    ละติจูด *
    ${latitude_placeholder}    Get Element Attribute    ${latitude_field}    placeholder   
    Run Keyword And Continue On Failure    Should Be Equal    ${latitude_placeholder}    ละติจูด
    Run Keyword And Continue On Failure    Element Text Should Be    ${longitude_label}    ลองจิจูด *
    ${longitude_placeholder}    Get Element Attribute    ${longitude_field}    placeholder   
    Run Keyword And Continue On Failure    Should Be Equal    ${latitude_placeholder}    ลองจิจูด
    Run Keyword And Continue On Failure    Element Text Should Be    ${add_edit_button}    เพิ่ม

กรณีเพิ่มโดยไม่กรอกข้อมูล
    open_add_new_depot_menu
    Wait Until Element Is Visible    ${add_edit_button}
    Clear Element Text    ${latitude_field}
    Clear Element Text    ${longitude_field}
    Click Element    ${add_edit_button}
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    ${depot_name_alert}
    Run Keyword And Continue On Failure    Element Text Should Be    ${depot_name_alert}    โปรดระบุชื่ออู่ 
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    ${type_alert}
    Run Keyword And Continue On Failure    Element Text Should Be    ${type_alert}    โปรดระบุประเภท
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    ${status_alert}
    Run Keyword And Continue On Failure    Element Text Should Be    ${status_alert}    โปรดระบุสถานะ
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    ${latitude_alert}
    Run Keyword And Continue On Failure    Element Text Should Be    ${latitude_alert}    โปรดระบุละติจูด
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    ${longitude_alert}
    Run Keyword And Continue On Failure    Element Text Should Be    ${longitude_alert}    โปรดระบุลองจิจูด

กรณีเพิ่มโดยกรอก Depot Name ซ้ำกับที่มีอยู่ในระบบ
    add_new_depot    depot_name=Pk Test Depot7
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    ${depot_name_alert}
    Run Keyword And Continue On Failure    Element Text Should Be    ${depot_name_alert}    ชื่ออู่นี้ถูกใช้งานแล้ว

กรณีเพิ่ม Latitude ที่มีค่า < -999.999999
    add_new_depot    latitude=-999.9999999
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    ${latitude_alert}
    Run Keyword And Continue On Failure    Element Text Should Be    ${latitude_alert}     ละติจูดต้องมีค่ามากกว่าหรือเท่ากับ -999.999999

กรณีเพิ่ม Latitude ที่มีค่า > 999.999999
    add_new_depot    latitude=999.9999999
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    ${latitude_alert}
    Run Keyword And Continue On Failure    Element Text Should Be    ${latitude_alert}     ละติจูดต้องมีค่าน้อยหรือเท่ากับ 999.999999

กรณีเพิ่ม Longitude ที่มีค่า < -999.999999
    add_new_depot    longitude=-999.9999999
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    ${longitude_alert}
    Run Keyword And Continue On Failure    Element Text Should Be    ${longitude_alert}     ลองจิจูดต้องมีค่ามากกว่าหรือเท่ากับ -999.999999

กรณีเพิ่ม Longitude ที่มีค่า > 999.999999
    add_new_depot    longitude=999.9999999
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    ${longitude_alert}
    Run Keyword And Continue On Failure    Element Text Should Be    ${longitude_alert}     ลองจิจูดต้องมีค่าน้อยกว่าหรือเท่ากับ 999.999999

หน้าต่างยืนยันการ Add
    add_new_depot
    Wait Until Element Is Visible    ${confirm_title}
    Run Keyword And Continue On Failure    Element Text Should Be    ${confirm_title}    เพิ่มอู่
    Run Keyword And Continue On Failure    Element Text Should Be    ${confirm_text}    คุณยืนยันที่จะเพิ่มอู่ใช่หรือไม่?
    Run Keyword And Continue On Failure    Element Text Should Be    ${confirm_button}    ยืนยัน
    Run Keyword And Continue On Failure    Element Text Should Be    ${cancel_confirm_button}    ยกเลิก
    


กรณีเพิ่ม Depot ด้วยข้อมูลที่ครบถ้วนและถูกต้อง
    ${depot_name}    Set Variable    อู่แสมรุ้ง    
    ${type}    Set Variable    Bus    
    ${status}    Set Variable    active    
    ${latitude}    Set Variable    999.999    
    ${longitude}    Set Variable    999.999


    add_new_depot    depot_name=${depot_name}   type=${type}    status=${status}
    ...              latitude=${latitude}    longitude=${longitude}
    Click Element    ${confirm_button}
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    ${top_right_alert}
    Run Keyword And Continue On Failure    Element Text Should Be    ${top_right_alert}    เพิ่มอู่สำเร็จ
    Click Element    ${add_edit_close_button}
    
    select_depot    ${depot_name}

    #ตรวจสอบข้อมูลทางด้านขวาว่าตรงกับที่เพิ่มไหม
    Run Keyword And Continue On Failure    Element Text Should Be    ${right_depot_name}    ${depot_name}
    Run Keyword And Continue On Failure    Element Text Should Be    ${right_status_data}    ${status}
    Run Keyword And Continue On Failure    Element Text Should Be    ${right_type_data}    ${type}
    Run Keyword And Continue On Failure    Element Text Should Be    ${right_latitude_data}    ${latitude}
    Run Keyword And Continue On Failure    Element Text Should Be    ${right_longitude_data}    ${longitude} 

    #ตรวจสอบข้อมูลหน้า Edit ว่าตรงกับที่เพิ่มไหม
    Click Element    ${edit_button}
    Wait Until Element Is Visible    ${depot_name_field}
    #Run Keyword And Continue On Failure    Element Text Should Be    ${depot_name_field}    ${depot_name}
    Run Keyword And Continue On Failure    Element Text Should Be    //*[@id="headlessui-portal-root"]//form/div[2]/div[2]/div/div/div[1]/div[1]    ${status}
    Run Keyword And Continue On Failure    Element Text Should Be    //*[@id="headlessui-portal-root"]//form/div[2]/div[1]/div/div/div[1]/div[1]    ${type}
    #Run Keyword And Continue On Failure    Element Text Should Be    ${latitude_field}    ${latitude}
    #Run Keyword And Continue On Failure    Element Text Should Be    ${longitude_field}    ${longitude} 
    
    #depot latitude longitude เช็คข้อมูลไม่ได้
    #depot ที่เพิ่มจะไปลบตอน case delete

ส่วน Subline ตรงกลาง
    ${depot}    Set Variable    อู่แสมฟ้า
    open_depot_menu
    select_depot    ${depot}
    Element Text Should Be    ${start_sub_line}    เริ่มต้นสายย่อย
    Element Text Should Be    ${stop_sub_line}    สิ้นสุดสายย่อย

ส่วน Depot ทางขวา
    ${depot}    Set Variable    อู่แสมฟ้า
    open_depot_menu
    select_depot    ${depot}
    Run Keyword And Continue On Failure    Element Text Should Be    ${right_latitude_label}    ละคิจูด
    Run Keyword And Continue On Failure    Element Text Should Be    ${right_longitude_label}    ลองจิจูด
    Run Keyword And Continue On Failure    Element Text Should Be    ${right_type_label}    ประเภท
    Run Keyword And Continue On Failure    Element Text Should Be    ${right_status_label}    สถานะ

หน้า Edit Depot
    open_edit_depot_menu
    Run Keyword And Continue On Failure    Element Text Should Be    ${add_edit_title}    แก้ไขอู่รถ
    Run Keyword And Continue On Failure    Element Text Should Be    ${depot_name_label}    ชื่ออู่รถ *
    ${name_placeholder}    Get Element Attribute    ${depot_name_field}    placeholder
    Run Keyword And Continue On Failure    Should Be Equal    ${name_placeholder}    ชื่ออู่รถ   
    Run Keyword And Continue On Failure    Element Text Should Be    ${type_label}    ประเภท *
    Run Keyword And Continue On Failure    Element Text Should Be    ${status_label}    สถานะ *
    Run Keyword And Continue On Failure    Element Text Should Be    ${latitude_label}    ละติจูด *
    ${latitude_placeholder}    Get Element Attribute    ${latitude_field}    placeholder   
    Run Keyword And Continue On Failure    Should Be Equal    ${latitude_placeholder}    ละติจูด
    Run Keyword And Continue On Failure    Element Text Should Be    ${longitude_label}    ลองจิจูด *
    ${longitude_placeholder}    Get Element Attribute    ${longitude_field}    placeholder   
    Run Keyword And Continue On Failure    Should Be Equal    ${latitude_placeholder}    ลองจิจูด
    Run Keyword And Continue On Failure    Element Text Should Be    ${add_edit_button}    บันทึก

กรณี Edit โดยข้อมูลว่าง
    open_edit_depot_menu    อู่แสมฟ้า
    Clear Element Text    ${depot_name_field}
    Clear Element Text    ${latitude_field}
    Clear Element Text    ${longitude_field}
    Click Element    ${add_edit_button}
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    ${depot_name_alert}
    Run Keyword And Continue On Failure    Element Text Should Be    ${depot_name_alert}    โปรดระบุชื่ออู่
    Run Keyword And Continue On Failure    Element Text Should Be    ${latitude_alert}    โปรดระบุละติจูด
    Run Keyword And Continue On Failure    Element Text Should Be    ${longitude_alert}    โปรดระบุลองจิจูด

กรณี Edit Depot Name ที่ซ้ำ
    open_edit_depot_menu    อู่แสมฟ้า
    Input Text    ${depot_name_field}    อู่แสมม่วง
    Click Element    ${add_edit_button}
    Wait Until Element Is Visible    ${depot_name_alert}
    Element Text Should Be    ${depot_name_alert}    ชื่ออู่นี้ถูกใช้งานแล้ว 

กรณ๊ Edit Latitude ที่มีค่า < -999.999999
    open_edit_depot_menu    อู่แสมฟ้า
    Input Text    ${latitude_field}    -999.9999999
    Click Element    ${add_edit_button}
    Wait Until Element Is Visible    ${latitude_alert}
    Element Text Should Be    ${latitude_alert}    ละติจูดต้องมีค่ามากกว่าหรือเท่ากับ -999.999999

กรณ๊ Edit Latitude ที่มีค่า > 999.999999
    open_edit_depot_menu    อู่แสมฟ้า
    Input Text    ${latitude_field}    999.9999999
    Click Element    ${add_edit_button}
    Wait Until Element Is Visible    ${latitude_alert}
    Element Text Should Be    ${latitude_alert}    ละติจูดต้องมีค่าน้อยกว่าหรือเท่ากับ 999.999999

กรณ๊ Edit Longitude ที่มีค่า < -999.999999
    open_edit_depot_menu    อู่แสมฟ้า
    Input Text    ${longitude_field}    -999.9999999
    Click Element    ${add_edit_button}
    Wait Until Element Is Visible    ${longitude_alert}
    Element Text Should Be    ${longitude_alert}        ลองจิจูดต้องมีค่ามากกว่าหรือเท่ากับ -999.999999

กรณ๊ Edit Longitude ที่มีค่า > 999.999999
    open_edit_depot_menu    อู่แสมฟ้า
    Input Text    ${longitude_field}    999.9999999
    Click Element    ${add_edit_button}
    Wait Until Element Is Visible    ${longitude_alert}
    Element Text Should Be    ${longitude_alert}        ลองจิจูดต้องมีค่าน้อยกว่าหรือเท่ากับ 999.999999

หน้าต่างยืนยันการ Edit
    open_edit_depot_menu    อู่แสมฟ้า
    Click Element    ${add_edit_button}
    Wait Until Element Is Visible    ${confirm_title}
    Run Keyword And Continue On Failure    Element Text Should Be    ${confirm_title}    แก้ไขอู่
    Run Keyword And Continue On Failure    Element Text Should Be    ${confirm_text}    คุณยืนยันที่จะแก้ไขอู่ใช่หรือไม่?
    Run Keyword And Continue On Failure    Element Text Should Be    ${confirm_button}    ยืนยัน
    Run Keyword And Continue On Failure    Element Text Should Be    ${cancel_confirm_button}    ยกเลิก

กรณี Edit Depot Name
    ${new_depot_name}    Set Variable    อู่แสมแดง
    ${old_depot_name}    Set Variable    อู่แสมฟ้า

    open_edit_depot_menu    ${old_depot_name}
    Input Text    ${depot_name_field}    ${new_depot_name}
    Click Element    ${add_edit_button}
    Click Element    ${confirm_button}
    Wait Until Element Is Visible    ${top_right_alert}
    Run Keyword And Continue On Failure    Element Text Should Be    ${top_right_alert}    อัปเดตอู่สำเร็จ
    Run Keyword And Continue On Failure    Element Text Should Be    ${right_depot_name}    ${new_depot_name}
    Run Keyword And Continue On Failure    Element Text Should Be    ${middle_depot_name}    ${new_depot_name}
    Sleep    2
    Close Browser


    #ส่วนนี้จะเปลี่ยนค่ากลับมาเป็นค่าเดิม
    open_edit_depot_menu    ${new_depot_name}
    Input Text    ${depot_name_field}    ${old_depot_name}
    Click Element    ${add_edit_button}
    Click Element    ${confirm_button}
    Wait Until Element Is Visible    ${top_right_alert}
    Run Keyword And Continue On Failure    Element Text Should Be    ${top_right_alert}    อัปเดตอู่สำเร็จ
    Sleep    2

กรณี Edit Latitude
    ${depot_name}    Set Variable    อู่แสมฟ้า
    ${new_latitude}    Set Variable    888.888
    ${old_latitude}    Set Variable    777.777
    
    open_edit_depot_menu    ${depot_name}
    Input Text    ${latitude_field}    ${new_latitude}
    Click Element    ${add_edit_button}
    Click Element    ${confirm_button}
    Wait Until Element Is Visible    ${top_right_alert}
    Run Keyword And Continue On Failure    Element Text Should Be    ${top_right_alert}    อัปเดตอู่สำเร็จ
    Run Keyword And Continue On Failure    Element Text Should Be    ${right_latitude_data}    ${new_latitude}
    Sleep    2
    Close Browser

    #ส่วนนี้จะเปลี่ยนค่ากลับมาเป็นค่าเดิม
    open_depot_menu
    select_depot    ${depot_name}
    Run Keyword And Continue On Failure    Element Text Should Be    ${right_latitude_data}    ${new_latitude}
    Click Element    ${edit_button}
    Wait Until Element Is Visible    ${add_edit_button}
    #Run Keyword And Continue On Failure    Element Text Should Be    ${depot_name_field}    ${depot_name}
    #Run Keyword And Continue On Failure    Element Text Should Be    ${latitude_field}    ${new_latitude}
    Input Text    ${latitude_field}    ${old_latitude}
    Click Element    ${add_edit_button}
    Click Element    ${confirm_button}
    Wait Until Element Is Visible    ${top_right_alert}
    Run Keyword And Continue On Failure    Element Text Should Be    ${top_right_alert}    อัปเดตอู่สำเร็จ

กรณี Edit Longitude
    ${depot_name}    Set Variable    อู่แสมฟ้า
    ${new_longitude}    Set Variable    888.888
    ${old_longitude}    Set Variable    777.777
    
    open_edit_depot_menu    ${depot_name}
    Input Text    ${longitude_field}    ${new_longitude}
    Click Element    ${add_edit_button}
    Click Element    ${confirm_button}
    Wait Until Element Is Visible    ${top_right_alert}
    Run Keyword And Continue On Failure    Element Text Should Be    ${top_right_alert}    อัปเดตอู่สำเร็จ
    Run Keyword And Continue On Failure    Element Text Should Be    ${right_longitude_data}    ${new_longitude}
    Sleep    2
    Close Browser

    #ส่วนนี้จะเปลี่ยนค่ากลับมาเป็นค่าเดิม
    open_depot_menu
    select_depot    ${depot_name}
    Run Keyword And Continue On Failure    Element Text Should Be    ${right_longitude_data}    ${new_longitude}
    Click Element    ${edit_button}
    Wait Until Element Is Visible    ${add_edit_button}
    #Run Keyword And Continue On Failure    Element Text Should Be    ${depot_name_field}    ${depot_name}
    #Run Keyword And Continue On Failure    Element Text Should Be    ${latitude_field}    ${new_latitude}
    Input Text    ${longitude_field}    ${old_longitude}
    Click Element    ${add_edit_button}
    Click Element    ${confirm_button}
    Wait Until Element Is Visible    ${top_right_alert}
    Run Keyword And Continue On Failure    Element Text Should Be    ${top_right_alert}    อัปเดตอู่สำเร็จ



กรณี Edit Type
    ${depot_name}    Set Variable    อู่แสมฟ้า
    ${new_type}    Set Variable    Boat
    ${old_type}    Set Variable    Bus
    
    open_edit_depot_menu    ${depot_name}

    Click Element    ${type_dropdown_button}
    Input Text    ${type_dropdown_field}    ${new_type}
    Click Element    //*[@id="headlessui-portal-root"]//form/div[2]/div[1]/div/div[2]//*[text()[contains(.,"${new_type}")]]

    Click Element    ${add_edit_button}
    Click Element    ${confirm_button}
    Wait Until Element Is Visible    ${top_right_alert}
    Run Keyword And Continue On Failure    Element Text Should Be    ${top_right_alert}    อัปเดตอู่สำเร็จ
    Run Keyword And Continue On Failure    Element Text Should Be    ${right_type_data}    ${new_type}
    Close Browser

    #ส่วนนี้จะเปลี่ยนค่ากลับมาเป็นค่าเดิม
    open_depot_menu
    select_depot    ${depot_name}
    Run Keyword And Continue On Failure    Element Text Should Be    ${right_type_data}    ${new_type}
    Click Element    ${edit_button}
    Wait Until Element Is Visible    ${add_edit_button}
    #Run Keyword And Continue On Failure    Element Text Should Be    ${depot_name_field}    ${depot_name}
    #Run Keyword And Continue On Failure    Element Text Should Be    ${latitude_field}    ${new_latitude}
    Click Element    ${type_dropdown_button}
    Input Text    ${type_dropdown_field}    ${old_type}
    Click Element    //*[@id="headlessui-portal-root"]//form/div[2]/div[1]/div/div[2]//*[text()[contains(.,"${old_type}")]]
    Click Element    ${add_edit_button}
    Click Element    ${confirm_button}
    Wait Until Element Is Visible    ${top_right_alert}
    Run Keyword And Continue On Failure    Element Text Should Be    ${top_right_alert}    อัปเดตอู่สำเร็จ


กรณี Edit Status
    ${depot_name}    Set Variable    อู่แสมฟ้า
    ${new_status}    Set Variable    inactive
    ${old_status}    Set Variable    active
    
    open_edit_depot_menu    ${depot_name}
    Click Element    ${status_dropdown_button}
    Input Text    ${status_dropdown_field}    ${new_status}
    Click Element    //*[@id="headlessui-portal-root"]//form/div[2]/div[2]/div/div[2]//*[text()="${new_status}"]

    Click Element    ${add_edit_button}
    Click Element    ${confirm_button}
    Wait Until Element Is Visible    ${top_right_alert}
    Run Keyword And Continue On Failure    Element Text Should Be    ${top_right_alert}    อัปเดตอู่สำเร็จ
    Run Keyword And Continue On Failure    Element Text Should Be    ${right_status_data}    ${new_status}
    Close Browser

    #ส่วนนี้จะเปลี่ยนค่ากลับมาเป็นค่าเดิม
    open_depot_menu
    select_depot    ${depot_name}
    Run Keyword And Continue On Failure    Element Text Should Be    ${right_status_data}    ${new_status}
    Click Element    ${edit_button}
    Wait Until Element Is Visible    ${add_edit_button}
    #Run Keyword And Continue On Failure    Element Text Should Be    ${depot_name_field}    ${depot_name}
    #Run Keyword And Continue On Failure    Element Text Should Be    ${latitude_field}    ${new_latitude}
    Click Element    ${status_dropdown_button}
    Input Text    ${status_dropdown_field}    ${old_status}
    Click Element    //*[@id="headlessui-portal-root"]//form/div[2]/div[2]/div/div[2]//*[text()="${old_status}"]
    Click Element    ${add_edit_button}
    Click Element    ${confirm_button}
    Wait Until Element Is Visible    ${top_right_alert}
    Run Keyword And Continue On Failure    Element Text Should Be    ${top_right_alert}    อัปเดตอู่สำเร็จ

หน้าต่างยืนยันการ Delete
    ${depot}    Set Variable    Pk Test Depot3
    open_depot_menu
    select_depot    ${depot}
    Click Element    ${delete_button}
    Wait Until Element Is Visible    ${confirm_delete_button}
    Run Keyword And Continue On Failure    Element Text Should Be    ${confirm_delete_title}    ลบอู่
    Run Keyword And Continue On Failure    Element Text Should Be    ${confirm_delete_text}    คุณยืนยันที่จะแก้ไขอู่ ${depot} ใช่หรือไม่?
    Run Keyword And Continue On Failure    Element Text Should Be    ${confirm_delete_button}    ยืนยัน
    Run Keyword And Continue On Failure    Element Text Should Be    ${cancel_confirm_delete_button}    ยกเลิก
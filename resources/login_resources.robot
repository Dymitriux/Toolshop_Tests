*** Settings ***
Resource    common_resources.robot
Variables    ../locators/login_locators.py

*** Keywords ***
Sign in
    [Arguments]    ${email}=    ${password}=
    Wait Until Element Is Visible    ${signin_button}
    Click Element    ${signin_button}

    Wait Until Element Is Visible    ${email_field}
    Input Text    ${email_field}    ${email}
    Input Text    ${password_field}    ${password}
    Click Element    ${login_button}
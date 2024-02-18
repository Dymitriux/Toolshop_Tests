*** Settings ***
Resource    ../resources/login_resources.robot
Test Setup    Open page
Test Teardown    Close Browser

*** Test cases ***
Correct login
    [Documentation]    Correct login test case
    Sign in    customer@practicesoftwaretesting.com    welcome01

    Wait Until Element Is Visible    ${user_dropdown}
    Element Text Should Be    ${user_dropdown}    Jane Doe


Incorrect login - wrong password
    [Documentation]    Incorrect login test case - wrong password
    Sign in    customer@practicesoftwaretesting.com    unwelcome

    Wait Until Element Is Visible    ${invalid_email_password_message}
    Element Text Should Be    ${invalid_email_password_message}    Invalid email or password


Incorrect login - wrong email
    [Documentation]    Incorrect login test case - wrong email
    Sign in    customer@o2.com    welcome01

    Wait Until Element Is Visible    ${invalid_email_password_message}
    Element Text Should Be    ${invalid_email_password_message}    Invalid email or password


Incorrect login - incorrect email format
    [Documentation]    Incorrect login test case - incorrect email format
    Sign in    customer    welcome01

    Wait Until Element Is Visible    ${email_error}
    Element Text Should Be    ${email_error}    E-mail format is invalid.


Incorrect login - empty email and password fields
    [Documentation]    Incorrect login test case - empty email and password fields
    Sign in

    Wait Until Element Is Visible    ${email_error}
    Element Text Should Be    ${email_error}    E-mail is required.
    Element Text Should Be    ${password_error}    Password is required.
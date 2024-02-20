*** Settings ***
Resource    ../resources/shopping_cart_resources.robot
Test Setup    Open page
Test Teardown    Close Browser
Library    String

*** Test Cases ***
Buy product
    [Documentation]    Add product to cart and process to payment - with login in process
    Add product to cart
    Add product details to dict

    Click Element    ${cart_button}
    Click Element    ${proceed_to_checkout}
    Input Text    ${email_field}    customer@practicesoftwaretesting.com
    Input Text    ${password_field}    welcome01
    Click Element    ${login_button}

    # TODO To be continue
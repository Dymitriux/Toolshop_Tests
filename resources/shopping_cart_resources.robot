*** Settings ***
Resource    common_resources.robot
Variables    ../locators/shopping_cart_locators.py
Variables    ../locators/product_locators.py

*** Variables ***
&{product_dict}

*** Keywords ***
Add product to cart
    Wait Until Element Is Visible    ${products}
    @{products_list}    Get WebElements    ${products}

    ${list_length}    Get Length    ${products_list}
    Log To Console    ${list_length}

    ${number}     Evaluate  random.randint(0, ${list_length} - 1)

    ${element}    Get From List    ${products_list}    ${number}
    Click Element    ${element}

    Wait Until Element Is Visible    ${add_to_cart_button}
    Click Element    ${add_to_cart_button}

    Wait Until Element Is Visible    ${product_added_message}
    Element Text Should Be    ${product_added_message}    Product added to shopping cart.

Add product details to dict
    ${name}    Get Text    ${product_name}
    Set To Dictionary    ${product_dict}    name  ${name}

    ${price}    Get Text    ${product_price}
    Set To Dictionary    ${product_dict}    name  ${price}

    # TODO Update to get value properly
    ${quantity}    Get Text    ${product_quantity}
    Set To Dictionary    ${product_dict}    name  ${quantity}
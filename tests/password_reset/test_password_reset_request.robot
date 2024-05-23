*** Settings ***
Library    SeleniumLibrary
Resource    ../../resources/keywords.robot
Resource    ../../resources/variables.robot
Suite Teardown    Close Browser

*** Test Cases ***
Password Reset Request
    [Documentation]    Ensure that a user can request a password reset.
    [Tags]    positive
    Open Browser To Login Page
    Click Link    id=reset-password-link
    Input Text    id=email_or_username    ${VALID_EMAIL_LOGIN}
    Click Button    id=__next
    Wait Until Element Is Visible    xpath=//*[contains(text(), 'Wiadomość wysłana')]    timeout=10s
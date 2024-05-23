*** Settings ***
Library    SeleniumLibrary
Resource    ../../resources/keywords.robot
Resource    ../../resources/variables.robot
Suite Teardown    Close Browser

*** Test Cases ***
Valid Login
    [Documentation]    Ensure that a registered user can log in with valid credentials.
    [Tags]    positive
    Open Browser To Login Page
    Wait Until Element Is Visible   id=login-username
    Input Text    id=login-username    ${VALID_EMAIL_LOGIN}
    Input Text    id=login-password    ${VALID_PASSWORD}
    Click Button    id=login-button
    Wait Until Element Is Visible    id=root    timeout=10s

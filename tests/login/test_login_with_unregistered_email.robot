*** Settings ***
Library    SeleniumLibrary
Resource    ../../resources/keywords.robot
Resource    ../../resources/variables.robot
Suite Teardown    Close Browser

*** Test Cases ***
Login with Unregistered Email
    [Documentation]    Ensure that a user cannot log in with an unregistered email.
    [Tags]    negative
    Open Browser To Login Page
    Input Text    id=login-username    ${UNREGISTERED_EMAIL}
    Input Text    id=login-password    AnyPassword123
    Click Button    id=login-button
    Wait Until Element Is Visible    xpath=//*[contains(text(), 'Nieprawidłowa nazwa użytkownika lub błędne hasło')]    timeout=10s
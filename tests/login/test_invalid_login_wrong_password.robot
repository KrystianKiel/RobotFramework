*** Settings ***
Library    SeleniumLibrary
Resource    ../../resources/keywords.robot
Resource    ../../resources/variables.robot
Suite Teardown    Close Browser

*** Test Cases ***
Invalid Login - Wrong Password
    [Documentation]    Ensure that a user cannot log in with an incorrect password.
    [Tags]    negative
    Open Browser To Login Page
    Wait Until Element Is Visible   id=login-username
    Input Text    id=login-username    ${VALID_EMAIL_LOGIN}
    Input Text    id=login-password     WrongPassword
    Click Button    id=login-button
    Wait Until Element Is Visible    xpath=//*[contains(text(), 'Nieprawidłowa nazwa użytkownika lub błędne hasło')]

Invalid Login - Without Password
    [Documentation]    Ensure that a user cannot log in without password.
    [Tags]    negative
    Open Browser To Login Page
    Wait Until Element Is Visible   id=login-username
    Input Text    id=login-username    ${VALID_EMAIL_LOGIN}
    Click Button    id=login-button
    Wait Until Element Is Visible    xpath=//*[contains(text(), 'Nieprawidłowa nazwa użytkownika lub błędne hasło')]

Invalid Login - Without Password
    [Documentation]    Ensure that a user cannot log in without password.
    [Tags]    negative
    Open Browser To Login Page
    Wait Until Element Is Visible   id=login-username
    Click Button    id=login-button
    Wait Until Element Is Visible    xpath=//*[contains(text(), 'Nieprawidłowa nazwa użytkownika lub błędne hasło')]

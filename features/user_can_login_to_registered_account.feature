Feature: User can login to a registered account
    As a User
    In order to access my registered account
    I would like to be able to login

    PT-link: https://www.pivotaltracker.com/story/show/159540937

    Background:
            Given the following users exist
            | email                 |
            | pablo@test.com        |
            | task-creator@test.com |
            And I am on the login page 
    
    Scenario: User logs in
        And I fill in 'Email' with 'pablo@test.com'
        And I fill in 'Password' with 'my-password'
        And I click on 'Log in'
        Then I am on the landing page
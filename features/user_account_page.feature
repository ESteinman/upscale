Feature: User can access his/hers account page
    As a user
    In order to keep track of my tasks
    I would like to have a personal account page

    Background:
        Given the following users exist
            | email          |
            | pablo@test.com |

        And the following task exists
            | title       | description                              | location  | budget | user           |
            | My Task     | Really old table that needs refurnishing | Stockholm | 100    | pablo@test.com |
            | My Task New | Ugly new chair                           | Uppsala   | 200    | pablo@test.com |
        And I am logged in as 'pablo@test.com'
        And I am on the landing page
        

        Scenario:
            When I click on 'My Upscale'
            Then I should be on 'My account' page
            And I should see 'My posted tasks'
            And I should see 'My accepted tasks'
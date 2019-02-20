Feature: Login functionality

    Scenario: Login with Invalid data into Slideshare
        Given The user is on the home page and clicks on Login link
        When Enters invalid username and valid password
        And Clicks on login button
        Then Error message should be displayed to the user


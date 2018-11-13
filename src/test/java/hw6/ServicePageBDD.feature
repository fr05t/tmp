@smoke
Feature: ServicePageBDD

  Scenario: Service Page Interface test
    Given I'm on the Home Page!
    Then The browser title is Home Page
    When I login as user epam with password 1234 ...
    Then The user name is displayed on the header
    And Elements are displayed
    When I click on the Service in header menu
    Then The dropdown header menu options are displayed
    When I click on Service in left menu
    Then The left menu contains all options
    When I open Different Elements Page
    Then Page Different Elements is opened
    And Checkboxes are displayed
    And RadioButtins are displayed
    And Dropdown element are displayed
    And 2 buttons are displayed
    And Right section is displayed
    And Left section is displayed
    When I select Water, Wind
    Then Log Section contains Water, Wind
    When I Select radio Selen
    Then Log Section contain Selen
    When I select from dropdown Yellow
    Then Log section contain Yellow
    When I unselect Wster, Wind
    Then Log contains unselected values Water, Wind


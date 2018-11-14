@smoke
Feature: ServicePageBDD

  Scenario: Service Page Interface test
    Given I'm on the Home Page!
    Then The browser title is 'Home Page'
    When I login as user epam with password 1234
    Then The 'PITER CHAILOVSKII' is displayed on the header
    And Page contains all elements:
      | pictures      | 4 |
      | picturesTexts | 4 |
      | headline      | 1 |
      | description   | 1 |

    Then I click on the Service in the header
    When Menu contains elements:
      | DATES              |
      | COMPLEX TABLE      |
      | SIMPLE TABLE       |
      | USER TABLE         |
      | TABLE WITH PAGES   |
      | DIFFERENT ELEMENTS |
      | PERFORMANCE        |
      | SUPPORT            |

    Then I click on the Service in the leftMenu
    When Menu left menu contains elements:
      | Dates              |
      | Complex Table      |
      | Simple Table       |
      | User Table         |
      | Table with pages   |
      | Different elements |
      | Performance        |
      | Support            |

    Then I click on the Service in the header
    And I open menu 'DIFFERENT ELEMENTS'
    Then 'Different Elements' is opened
    When Page contain this elements:
      | checkbox    | 4 |
      | radiobutton | 4 |
      | dropdown    | 1 |
      | button      | 2 |

    And Right section is displayed
    And Left section is displayed

    Then I select conditions:
      | Water |
      | Wind  |
    When Checked elements are displayed














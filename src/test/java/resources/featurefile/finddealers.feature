Feature: Find the dealers and verify


  Scenario Outline:Find the dealers and verify the dealers are in the list
    Given I am on homepage
    When I  a mouse hover on buy+sell tab
    And I click on 'Find a Dealer' page
    Then I navigate to 'car-dealers' page and verify "Find a Car Dealership Near You"
    And I should see the dealers name "<dealersName>" are displayed on page


    Examples:
      | dealersName           |

      | 101 Auto Centre       |
      | 168 Motors            |
      | 1st Choice Car City   |
      | 3 Point Motors - New  |
      | 3 Point Motors Epping |
      | 3 Point Motors Kew    |
      | 365 CAR SALES         |

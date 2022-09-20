Feature: Search functionality

  Background: I am on homepage


  Scenario Outline: Search the buy car with model
    When I mouse hover on buy+sell tab
    And I click Search Cars link
    Then I navigate to 'new and used car search' page
    And I select make "<make>"
    And I Select model "<model>"
    And I select location "<location>"
    And I select price "<price>"
    And I click on Find My Next Car tab
    Then I should see the "<make>" in results


    Examples:
      | make       | model       | location            | price |                                                     
      | Land Rover | Discovery 4 | NSW - All           | 70000 | 
      | BMW        | 118i        | VIC - All           | 50000 |
      | Ford       | Explorer    | NSW - All           | 50000 | 
      | Honda      | Accord      | NSW - Central Coast | 45000 | 
      | Kia        | Picanto     | NT - All            | 50000 | 
      | Jeep       | Cherokee    | NT - All            | 60000 | 


  Scenario Outline: Search the used car with model
    When I mouse hover on buy+sell tab
    And I click on used car link
    And I select make "<make>"
    And I Select model "<model>"
    And I select location "<location>"
    And I select price "<price>"
    And I click on Find My Next Car tab
    Then I should see the "<make>" in results
    Examples:
      | make       | model       | location            | price | 
      | Land Rover | Discovery 4 | NSW - All           | 25000 | 
      | BMW        | 118i        | VIC - All           | 50000 | 
      | Ford       | Explorer    | NSW - All           | 50000 | 
      | Honda      | Accord      | NSW - Central Coast | 45000 | 
      | Kia        | Picanto     | NT - All            | 50000 | 
      | Jeep       | Cherokee    | NT - All            | 60000 | 

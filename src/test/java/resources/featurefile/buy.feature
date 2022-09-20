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
    Then I should see the make in "<results>"


    Examples:
      | make       | model       | location            | price | results                                                      |
      | Land Rover | Discovery 4 | NSW - All           | 70000 | 23 Land Rover Discovery 4s for Sale under $70,000 in NSW     |
      | BMW        | 118i        | VIC - All           | 50000 | 14 BMW 118Is for Sale under $50,000 in VIC                   |
      | Ford       | Explorer    | NSW - All           | 50000 | 2 Ford Explorers for Sale under $50,000 in NSW               |
      | Honda      | Accord      | NSW - Central Coast | 45000 | 5 Honda Accords for Sale under $45,000 in Central Coast, NSW |
      | Kia        | Picanto     | NT - All            | 50000 | 10 Kia Picantos for Sale under $50,000 in NT                 |
      | Jeep       | Cherokee    | NT - All            | 60000 | 4 Jeep Cherokees for Sale under $60,000 in NT                |


  Scenario Outline: Search the used car with model
    When I mouse hover on buy+sell tab
    And I click on used car link
    And I select make "<make>"
    And I Select model "<model>"
    And I select location "<location>"
    And I select price "<price>"
    And I click on Find My Next Car tab
    Then I should see the make in "<results>"
    Examples:
      | make       | model       | location            | price | results                                                |
      | Land Rover | Discovery 4 | NSW - All           | 25000 | We did find these cars that almost match your criteria |
      | BMW        | 118i        | VIC - All           | 50000 | 11 Used BMW 118Is for Sale under $50,000 in VIC|
      | Ford       | Explorer    | NSW - All           | 50000 | 2 Used Ford Explorers for Sale under $50,000 in NSW |
      | Honda      | Accord      | NSW - Central Coast | 45000 | 5 Used Honda Accords for Sale under $45,000 in Central Coast, NSW|
      | Kia        | Picanto     | NT - All            | 50000 | We did find these cars that almost match your criteria |
      | Jeep       | Cherokee    | NT - All            | 60000 | 1 Used Jeep Cherokee for Sale under $60,000 in NT |

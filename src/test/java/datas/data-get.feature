Feature: Get data list

  Background:
    * url "https://petstore.swagger.io/v2/"

  Scenario: Fetch list of pets

    Given path 'pet/findByStatus'
    And params {status:'available'}
    And header Content-Type = 'application/json'
    When method GET
    Then status 200
    And match $ == read('data.json')
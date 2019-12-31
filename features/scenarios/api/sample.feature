Feature: Hit an endpoint

  Scenario: Get a resource from JSONPlaceholder
    When sending a GET request to "/posts/1"
    Then response status should be 200

  Scenario: Create a resource to JSONPlaceholder
    Given headers set:
      | Content-type | application/json; charset=UTF-8 |
    When sending a POST request to "/posts" with body:
      """
      {
        "title": "foo",
        "body": "bar",
        "userId": 1
      }
      """
    Then response status should be 201

Feature: Send GET request and validate the response.

  Background: Setup the base url.
    * url appURL

  @GET
  Scenario: Get single user details and print the response.
    * path '/api/users'
    * method get
    * status 200
    * print response

  @GET
  Scenario: Get single user details with userId as a path parameter.
    * def userId = 2
    * path '/api/users/' + userId
    * method get
    * status 200
    * match response.data.id == '#present'
    * match response.data.email == '#present'
    * match response.data.first_name == '#present'
    * match response.data.last_name == '#present'
    * match response.data.avatar == '#present'
    * match response.data.url == '#notpresent'
    * match response.data.text == '#notpresent'
    * match response.data.id == 2
    * match response.data.first_name == 'Janet'
    * match response.data.id == '#number'
    * match response.data.first_name == '#string'

  @GET
  Scenario Outline: Get single user details with userId as a path parameter.
    * path '/api/users/<userId>'
    * method get
    * status 200
    * match response.data.id == '#present'
    * match response.data.email == '#present'
    * match response.data.first_name == '#present'
    * match response.data.last_name == '#present'
    * match response.data.avatar == '#present'
    * match response.data.url == '#notpresent'
    * match response.data.text == '#notpresent'
    * match response.data.id == 2
    * match response.data.first_name == 'Janet'
    * match response.data.id == '#number'
    * match response.data.first_name == '#string'

    Examples: user id
      | userId |
      | 2      |

  @GET
  Scenario: Get list of users with page = 2 as a query parameter.
    * path '/api/users'
    * param page = 2
    * method get
    * status 200
    * match response.page == 2
    * match response.per_page == 6
    * match response.data == '#[6]'

  @GET
  Scenario: Verify error response from GET request.
    * path '/api/users/999'
    * method get
    * status 404
    * match response == {}


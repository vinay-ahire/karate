Feature: Send POST request and validate the response.

  Background: Setup the base url.
    * url appURL

  @POST
  Scenario: Create user using a POST request with request body stored in variable of type text and validate the response.
    # passing request body of type text.
    * text requestBody =
    """
      {
        "name": "vinay",
        "job": "leader"
      }
    """
    * path '/api/users'
    * header Content-Type = 'application/json'
    * request requestBody
    * method post
    * status 201
    * match response.id == '#present'
    * match response.name == '#present'
    * match response.job == '#present'
    * match response.createdAt == '#present'
    * match response.id == '#notnull'
    * match response.id == '#string'
    * match response.name == 'vinay'
    * match response.job == 'leader'

  @POST
  Scenario: Create user using a POST request with request body stored in Json file and validate the response.
    # Reading json file: create_user.json file present in src/test/resources/data folder
    * json requestBody = read('file:src/test/resources/data/create_user.json')
    * path '/api/users'
    * header Content-Type = 'application/json'
    * request requestBody
    * method post
    * status 201
    * match response.id == '#present'
    * match response.name == '#present'
    * match response.job == '#present'
    * match response.createdAt == '#present'
    * match response.id == '#notnull'
    * match response.id == '#string'
    * match response.name == 'vinay'
    * match response.job == 'leader'
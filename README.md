## API Automation using Karate.

## Table of contents
1. [About the project?](#about)
2. [Pre-requisite](#pre-requisite)
3. [Testing GET request](#get-request)
4. [Testing POST request](#post-request)
5. [How to run the tests?](#test-execution)
6. [Whats next?](#next)

<a name="about"></a>
### About the project
This project has simple examples which demonstrates the API automation using: 
1. [Karate](https://karatelabs.github.io/karate/)
2. JAVA
3. JUnit4

Note: Uses mock API provided by - [REQRES](https://reqres.in/)

<a name="pre-requisite"></a>
### Pre-requisite
1. JAVA - JDK 8+
2. MAVEN

<a name="get-request"></a>
### Testing GET request
1. Example of a simple GET request.
2. Example of a GET request with path parameter.
3. Example of a GET request with query parameter.
4. Example of a GET request with HTTP 404 error response.

<a name="post-request"></a>
### Testing POST request
1. Example of a POST request by passing request body as a string.
2. Example of a POST request by passing request body as json file.

<a name="test-execution"></a>
### How to run the tests?
From command prompt: 
Open terminal / command prompt and navigate to the project.
1. Run all feature files.
   Run the command: mvn test -Dtest=AllFeatureRunner
2. Run all feature files having groups / tags @POST or @GET.
      Run the command: mvn test "-Dkarate.options=--tags '@POST,@GET'" -Dtest=AllFeatureRunner

From IDE:
Run the file AllFeatureRunner.java using JUnit4.

<a name="next"></a>
### What's next?
1. Examples on PUT, DELETE request.
2. Update request body in a json file with Java builder pattern.
3. Examples on authentication using
   - Basic authentication
   - Bearer token
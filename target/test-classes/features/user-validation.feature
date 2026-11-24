Feature: user registration
    Background:
    Given the registration system is available
      #UID1- users must be unique
    Scenario: register with a unique username
      When a user registers with a unique username
      Then the registration should succeed

    Scenario: register with an existing username
      When a user registers with an existing username
      Then the registration should fail

    #UID2 - username length
    Scenario Outline: Validate username length
      When a user registers with a username "<username>"
      Then the username validation should be "<result>"

      Examples:
      |username                       |result|
      |Chri1                          |valid  |
      |Christian12345678909876543212  |valid  |
      |Christian123456789098765432123 |invalid|
      |chr1                           |invalid|


    #UID3 - password length
  Scenario Outline: Validate password length
    When a user registers with a password "<password>"
    Then the password validation should be "<result>"

    Examples:
      |password                       |result|
      |Chri1                         |valid  |
      |christian12345678909876543212  |valid  |
      |christian123456789098765432123 |invalid|
      |chr1                           |invalid|


  #UID4- username must start with a letter
  Scenario Outline: validate is user starts with a letter
    When a user registers with a username "<username>"
    Then the username validation should be "<result>"
    Examples:
      |username|result|
      |Chris123        |valid  |
      |1Chris          |invalid|
      |-Chris          |invalid|

  #UID5- password must start with a letter
  Scenario Outline: validate a password starts with a letter
    When a user registers with a password "<password>"
    Then the password validation should be "<result>"
    Examples:
      |password|result|
      |Chris123        |valid      |
      |1Chris                |invalid           |
      |-Chris1                      |invalid                  |

  #UID6 -username supports upper and lower case numeric, dashes and underscores
  Scenario Outline: validate allowed username characters
    When a user registers with a username "<username>"
    Then the username validation should be "<result>"
    Examples:
      |username|result|
      |Chris_-123        |valid|
      |Chris_-123@       |invalid|

  #UID7 - Password must contain lowercase, uppercase, and numeric characters
  Scenario Outline: validate password requirements
    When a user registers with a password "<password>"
    Then the password validation should be "<result>"
    Examples:
      |password|result|
      |Chris123        |valid      |
      |Chris123@       |invalid    |

  #UID8 - passwords should support dashes and underscores
  Scenario Outline: validate that - and _ are allowed
    When a user registers with a password "<password>"
    Then the password validation should be "<result>"
    Examples:
      |password|result|
      |Chris_-123|valid|
      |Chris_-123@|invalid|



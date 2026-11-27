Feature: User Registration
  Background:
    Given The registration system is available

  # UID1 - Usernames must be unique
  Scenario Outline: Validate username uniqueness
    When A user registers with username: "<username>"
    Then Username validation should be: "<result>"
    Examples:
    | username | result |
    | username01 | valid |
    | Batman     | invalid    |

  # UID2 - Username length
  Scenario Outline: Validate username length
    When A user registers with username: "<username>"
    Then Username validation should be: "<result>"
    Examples:
    | username | result |
    | Ab3_- | valid |
    | Ab3_-0000000000000000000000000 | valid |
    | Ab3_ | invalid |
    | Ab3_-000000000000000000000000000 | invalid |

  # UID3 - Password length
  Scenario Outline: Validate password length
    When A user registers with password: "<password>"
    Then Password validation should be: "<result>"
    Examples:
    | password | result |
    | Pass0 | valid |
    | Password-_00000000000000000000 | valid |
    | Pas0 | invalid |
    | Password00000000000000000000000 | invalid |

  # UID4 - Username must start with a letter
  Scenario Outline: Validate username starts with a letter
    When A user registers with username: "<username>"
    Then Username validation should be: "<result>"
    Examples:
    | username | result |
    | username | valid |
    | _InvalidUsername | invalid |
    | 1InvalidUsername | invalid |

  # UID5 - Password must start with a letter
  Scenario Outline: Validate password starts with a letter
    When A user registers with password: "<password>"
    Then Password validation should be: "<result>"
    Examples:
    | password | result |
    | Password-_00000000000000000000 | valid |
    | _password | invalid |
    | 1password | invalid |

  # UID6 - Username supports uppercase, lowercase, numeric, dashes, and underscores
  Scenario Outline: Validate allowed username characters
    When A user registers with username: "<username>"
    Then Username validation should be: "<result>"
    Examples:
    | username | result |
    | Ab3_-    | valid  |
    | Username% | invalid |

  # UID7 - Password must contain lowercase, uppercase, and numeric characters
  Scenario Outline: Validate password requirements
    When A user registers with password: "<password>"
    Then Password validation should be: "<result>"
    Examples:
    | password | result |
    | Password-_00000000000000000000 | valid |
    | Password-_0% | invalid |
    | password | invalid |

  # UID8 - Passwords should support dashes and underscores
  Scenario Outline: Validate dashes and underscores are allowed
    When A user registers with password: "<password>"
    Then Password validation should be: "<result>"
    Examples:
    | password | result |
    | Password-_00000000000000000000 | valid |
    # Sad path really isn't necessary since we're only checking if those characters are supported
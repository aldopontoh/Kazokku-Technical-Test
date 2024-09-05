Feature: Login

	Scenario: Check completeness of Login Page
		Given User is on login page
		When User check completeness of login page
        Then All element in login page is visible

	Scenario Outline: Login with various credential
      Given User is on login page #variouscred
      When User login with "<variouscred>"
      Then Various expectation is shown "<variousexp>"
      Examples:
            | variouscred | variousexp |
            | valid email valid password | directed to homepage |
            | valid email empty password | error message #1 |
            | empty email valid password | error message #2 |
            | empty email empty password | error message #3 |
			| invalid email invalid password | error message #4 |
            | valid email invalid password | error message #5 |
            | invalid email valid password | error message #6 |

	Scenario Outline: User input incomplete part of email
      Given User is on login page #incompleteemail
      When User input inclomplete part of email "<incompleteemail>"
      Then Various error message in textfield email is shown "<variouserrormessage>"
      Examples:
            | incompleteemail | variouserrormessage |
            | without @ | error message #1 |
            | no characters after @ | error message #2 |
            | no characters before @ | error message #3 |
            | space before @ | error message #4 |
			| space after @ | error message #5 |
			| special character after @ | error message #6 |
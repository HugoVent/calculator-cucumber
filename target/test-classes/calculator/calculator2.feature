Feature: Integer Arithmetic Expressions
  This feature provides a range of scenarios corresponding to the
  intended external behaviour of arithmetic expressions on integers.

  # This is just a comment.
  # You can start with a Background: that will be run before executing each scenario.

  Background:
    Given I initialise a calculator

  Scenario Outline: Evaluating arithmetic operations with two integer parameters in three notations
    Given an integer operation <op>
    When I provide a first number <n1>
    And I provide a second number <n2>
    Then its <not> notation is <output>

    Examples:
      | op  |n1|n2| not | output |
      | "+" | 8| 6| INFIX |( 8 + 6 )|
      | "+" | 8| 6| PREFIX | + (8, 6)|
      | "+" | 8| 6| POSTFIX| (8, 6) +|
      | "-" | 8| 6| INFIX |( 8 - 6 )|
      | "-" | 8| 6| PREFIX | - (8, 6)|
      | "-" | 8| 6| POSTFIX| (8, 6) -|
      | "*" | 8| 6| INFIX |( 8 * 6 )|
      | "*" | 8| 6| PREFIX | * (8, 6)|
      | "*" | 8| 6| POSTFIX| (8, 6) *|
      | "/" | 8| 6| INFIX |( 8 / 6 )|
      | "/" | 8| 6| PREFIX | / (8, 6)|
      | "/" | 8| 6| POSTFIX| (8, 6) /|

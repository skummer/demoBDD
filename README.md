# demoBDD
Demo of a Gherkin script to login and register a user for TOOLS QA - using Robot Framework

Feature: Registration test
Description: This feature will test successful registration

Scenario: Successful registration with valid login information (Happy Case)

Given I have launched the browser and I have navigated to the page
WHEN I have entered the registration information and I have pressed submit button
THEN I should see the thank you message


Keywords:
I have launched the browser
I have navigated to the page
I have entered the registration information
I have pressed submit button
I should get the thank you message

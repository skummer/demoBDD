# demoBDD
Demo of a Gherkin script to login and register a user for TOOLS QA - using Robot Framework
BDD.robot - A test suite with a single Gherkin style test.
This test is functionally identical to the feature description below.
A resource file with reusable keywords and variables is not used since it is a simple example. They are included as part of the test script.
They utilize keywords provided by the imported Selenium2Library

Running BDD.robot:

Running this command can run the above test: pybot  BDD.robot
The browser used is Firefox
The URL is: https://demoqa.cpm/registration

BDD.robot generates a log file and a report called, log.html and report.html


Preconditions: 
A precondition for running the tests is having Robot Framework and Selenium2Library installed, and they in turn require Python. Robot Framework installation instructions cover both Robot and Python installations, and Selenium2Library has its own installation instructions.

Feature: Registration test
Description: This feature will test successful registration

Scenario: Successful registration with valid login information (Happy Case)

Given I have launched the browser and I have opened the registration page
WHEN I have entered the registration information and I have pressed submit button
THEN I should see the thank you message

Keywords:
I have launched the browser
I have opened the registration page
I have entered the registration information
I have pressed submit button
I should see the thank you message
Page does not contain missing field error message
Page does not contain password length error message


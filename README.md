# QA Demo with Robot Framework and Selenium2Library
This is a QA demo, using Robot Framework (RIDE IDE) open source automation framework and Selenium2Library test library.
Robot Framework-RIDE runs python compiler 

      1.	Test Automation Framework is: Robot Framework
      2.	Unit Test Framework: PyUnit unit testing framework for Python
      3.	Continuous Integration: Jenkins


BDD.robot: A test suite with a single Gherkin style test. The functionality description is given below.

A resource file with reusable keywords and variables is not used since it is a simple example. 
They are included as part of the test script.

They utilize keywords provided by the imported Selenium2Library

Running BDD.robot:

          o	Run from command prompt: pybot  BDD.robot
          
          o	The browser used is Firefox
          
          o	The URL is: https://demoqa.cpm/registration


BDD.robot generates a log file and a report called, log.html and report.html



Preconditions: 

            o  Having Robot Framework and Selenium2Library installed, and they in turn require Python. 

            o  Robot Framework installation instructions cover both Robot and Python installations. 
            
            o  Selenium2Library has its own installation instructions.
           
                    


Feature: Registration test

Description: This feature will test successful registration

Scenario: Successful registration with valid login information (Happy Case)

        o	Given I have launched the browser and I have opened the registration page
        o	WHEN I have entered the registration information and I have pressed submit button
        o	THEN I should see the thank you message

        Keywords:
                1.	I have launched the browser
                2.	I have opened the registration page
                3.	I have entered the registration information
                4.	I have pressed submit button
                5.	I should see the thank you message
                6.	Page does not contain missing field error message
                7.	Page does not contain password length error message


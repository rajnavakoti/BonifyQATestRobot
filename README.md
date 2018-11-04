# BonifyQATestRobot
  
## Purpose of this project is to automate 'bonify' web application using selenium tool and robot test framework.
   Test suite includes 11 smoke test cases, 6 Sanity Test Cases, 7 Regression test cases and 1 test case for optional task 3
   covering testing for 'my.bonify.de' login fucntionality
   Robot framework will provide logs, reports and output execution files
   Screenshots are included in the project screenshots folder

### Automation Specifications ###
 Application : My.bonify.de (Web App)
 Automation Tool : Selenium
 Test Framework : Robot
 Supporting language : Python

### Required Tools ###
 Python (V 3.7) -For supporting language
 PIP (V 10.0+) - For python supported library installations
 Selenium - For web app automation
 Robot - For Testing framework (KDD + BDD Framework)
 
### Guide for installation ###
 1.Python installation
  a.Download and install python from https://www.python.org/downloads/
  b.Add environment varaibles for python
  c.Check PIP is installed successfully along with Python. To check run PIP --Version from terminal
 2.Install Robot framework using PIP
  a.run command 'pip install robotframework' from terminal
  b.Check robot installation. To check run 'robot --version' from terminal
 3.Install Selenium Library for robot
  a.run command 'pip install robotframework-seleniumLibrary' from terminal
  
 
### Script execution Details ###
 'robot' is used to run Robot files
  How to run the script ?

   ### Question 2 / Task 2 Execution ###

 1. To run Smoke test cases
    robot <BonifyQATestRobot folder path>/TestSuites/SmokeTest.robot
 2. To run Sanity test cases
    robot <BonifyQATestRobot folder path>/TestSuites/SanityTest.robot
 3. To run Regression test cases
    robot <BonifyQATestRobot folder path>/TestSuites/RegressionTest.robot
 4. To run All test cases
    robot <BonifyQATestRobot folder path>/TestSuites/SmokeTest.robot <BonifyQATestRobot folder path>/TestSuites/SanityTest.robot <BonifyQATestRobot folder path>/TestSuites/RegressionTest.robot
	
   ### Question 3 / Task 3 Execution ###
   
 1. To run Task 3 optional test 
    robot <BonifyQATestRobot folder path>/TestSuites/OptionalTest.robot

### Execution File and Output specifications ###
 Base Test Execution Files : Test/TestSuites/SmokeTest.robot; 
                             Test/TestSuites/SanityTest.robot; 
							 Test/TestSuites/RegressionTest.robot; 
							 Test/TestSuites/OptionalTest.robot;
 Path for Log File : result/log.html
 Path for Reports : result/report.html
 Path for Screesnhotst : Screenshots/


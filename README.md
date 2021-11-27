# vaccine-web-tests

The vaccine web test is test for 3am Vaccine Group. We use Robot Framework to test their application.   

## How to run the tests.

1. Go to folder that you clone this repository.  
     ```
     cd <go to TEST_DIRECTORY_PATH>
     ```     

2. Install all requirements.

    ```
    pip install -r requirements.txt
    ```       
3. Run the tests.               
    ```
    robot 3am_vaccine_test.robot
    ```
### If you can not run you have 2 approach to solve this problem
-  You should set your chrome driver to you machine path.   
or
- Dowmload chrome driver from [here](https://chromedriver.chromium.org/downloads) (select the version that suit for your machine)

## Answer the question
- Which do you think is a better framework for E2E testing of web applications or web services:  Robot Framework or Cucumber with Selenium/HTTP library and JUnit?  
```Answer I think it depend on the application that we test. If we consider on the web application test so the Robot Framework is better. But if we consider on the system test, the Cucumber is better.```

## What tutorial or online resource(s) did you find most helpful for learning Robot Framework?
* This is one is video tutorial in Thai. He explain how robot framework work and demostrate it. This [video].(https://www.youtube.com/watch?v=xqN4DSUf_Gs&t=740s)
* This is one is the library that I use for find some command on robot frame work. [library](https://robotframework.org/Selenium2Library/Selenium2Library.html#)
* This is the official of robot framework. It include all material that you want. [Go](https://robotframework.org/)


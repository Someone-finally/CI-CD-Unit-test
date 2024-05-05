# CI-CD-Unit-test

Created a Continuous integration pipeline for Unit testing via Github actions and Docker

Unit testing frame work used : CppUtest version 4.0 

Used docker to setup an ubuntu image that can create and destroy containers once the Unit tests are checked.
The same workflow is then implemented using Github-actions to set up docker containers to check the Unit test. 

Purpose : Continous Integration frameowork. The unit test will be automated and checked after each succesful push in Github. 


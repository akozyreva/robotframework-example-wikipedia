# robotframework-example-wikipedia

## Demo
I'm sorry for quality, this is my first video!
https://youtu.be/T5WSm6igwtg

## Requirements
Project was written, using:
* Python 3.6x
* robotframework
* seleniumlibrary
* chromedriver (also you need to write PATH to it. For Windows = C:\bin)

## Structure
There are 2 Test Suites:
* Wikipedia Front (https://en.wikipedia.org)
* Wikipedia Back (https://en.wikipedia.org/w/api.php)

In Wikipedia Front I have several tests, which cover Site of Wikipedia (en version)-open site, search for the article, etc. In Wikipedia Back I have 2 tests, which send get Requests, return status and json as response; after then I check key-value pairs in recieving json. 

## Run Tests
In project directiory you need to run the following command:
```
robot -d Results Tests
```
After finishing of execution you see generated report in folder Results.

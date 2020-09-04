# Description

This is the demo project for the [wdio-cucumber-selected-steps](https://github.com/jambit/wdio-cucumber-selected-steps) library, which ships a set of common steps for writing cucumber feature files for use with webdriver.io.

This demo-project is (like the library itself) also based on the official [boilerplate](https://github.com/webdriverio/cucumber-boilerplate), but has been rewritten to use the above project and also fix some errors.

Official repository: https://github.com/jambit/wdio-cucumber-selected-steps-demo

# How to Use

* Download or clone this repository
* Run `npm ci` to install all dependencies
* Then either run `npm test` to execute the tests in chrome
* Or run `npm run test:ci` to execute the tests in headless chrome

# List of Included Steps

This project uses existing step definitions for the most basic steps:

https://github.com/jambit/wdio-cucumber-selected-steps/blob/master/README.md#list-of-included-steps

## Custom Steps

All of these steps can be used with `Given`, `When`, `Then` and `And`.

## githubLogin

- [`I log in on github as "([^"]+)" with password "([^"]+)"`](STEPS.md#githubLogin-step-c114a1c5)\
-> Log in to github

## userTable

- [`I create a user "(User A|User B)"`](STEPS.md#userTable-step-c3346658)\
-> Create a user
- [`I see the user "(User A|User B)" in "(User Table - User A|User Table - User B)"`](STEPS.md#userTable-step-b2d5bc13)\
-> Validate a user row exists and has correct values in the columns

# Documenting Custom Steps

The documentation for the steps included in this project are automatically generated using the package `@jambit/wdio-cucumber-selected-steps-stepdoc`.
This tool was tailored to be used with this project, but you might be able to use it for your tests as well.

# License

Licensed under MIT

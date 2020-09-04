# Detailed List of Included Steps

This project uses existing step definitions for the most basic steps:

https://github.com/jambit/wdio-cucumber-selected-steps/blob/master/STEPS.md

## Custom Steps

All of these steps can be used with `Given`, `When`, `Then` and `And`.

## githubLogin

### `I log in on github as "([^"]+)" with password "([^"]+)"`<a name="githubLogin-step-c114a1c5"></a>

Log in to github

* **ParamTypes:**
  * `string`
    * The username to log in with
  * `string`
    * The corresponding password
* **Calls:**
  * `githubLogin()`

## userTable

### `I create a user "(User A|User B)"`<a name="userTable-step-c3346658"></a>

Create a user

* **ParamTypes:**
  * `selector`
    * The name of the user in userTable.yaml
* **Calls:**
  * `createUser()`

### `I see the user "(User A|User B)" in "(User Table - User A|User Table - User B)"`<a name="userTable-step-b2d5bc13"></a>

Validate a user row exists and has correct values in the columns

* **ParamTypes:**
  * `selector`
    * The name of the user in userTable.yaml
  * `string`
    * The row name to match against
* **Calls:**
  * `validateUser()`

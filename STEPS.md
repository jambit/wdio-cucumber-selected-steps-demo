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

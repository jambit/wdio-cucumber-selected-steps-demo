import {
    click,
    openURL,
    clearValue,
    addValue,
    elementQuery,
    setValue,
    ElementQuery,
    expectText,
} from '@jambit/wdio-cucumber-selected-steps/lib/support';

interface UserData {
    username: string;
    email: string;
}

/**
 * Create a user
 * @param user The name of the user in userTable.yaml
 */
export const createUser = (user: UserData) => {
    setValue(elementQuery('User Table - User Input'), user.username);
    setValue(elementQuery('User Table - E-Mail Input'), user.email);
    click("click", elementQuery('User Table - Add User'));
};

/**
 * Validate a user row exists and has correct values in the columns
 * @param user The name of the user in userTable.yaml
 * @param row  The row name to match against
 */
export const validateUser = (user: UserData, row: string) => {
    expectText("element", elementQuery(`${row} -> User Table - Name Column`), false, user.username);
    expectText("element", elementQuery(`${row} -> User Table - E-Mail Column`), false, user.email);
};

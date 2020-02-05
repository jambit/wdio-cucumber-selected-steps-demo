import {
    click,
    openURL,
    clearValue,
    addValue,
    elementQuery,
} from '@jambit/wdio-cucumber-selected-steps/lib/support';

/**
 * Log in to github
 * @param username  The username to log in with
 * @param password  The corresponding password
 */
export default (username: string, password: string) => {
    openURL('url', 'https://github.com/login');
    clearValue(elementQuery('Github - Login'));
    addValue(username, elementQuery('Github - Login'));
    clearValue(elementQuery('Github - Password'));
    addValue(password, elementQuery('Github - Password'));
    click('click', elementQuery('Github - Sign In'));
}
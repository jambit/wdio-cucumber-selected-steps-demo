import {
    defineTypedStep,
    paramType,
    click,
    openURL,
    clearValue,
    addValue,
    elementQuery,
} from '@jambit/wdio-cucumber-selected-steps/lib/support';

defineTypedStep(
    /^I log in on github as "([^"]+)" with password "([^"]+)"$/,
    [
        paramType.string,
        paramType.string,
    ],
    (username: string, password: string) => {
        openURL('url', 'https://github.com/login');
        clearValue(elementQuery('Github - Login'));
        addValue(username, elementQuery('Github - Login'));
        clearValue(elementQuery('Github - Password'));
        addValue(password, elementQuery('Github - Password'));
        click('click', elementQuery('Github - Sign In'));
    },
);

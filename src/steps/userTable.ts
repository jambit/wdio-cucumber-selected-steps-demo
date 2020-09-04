import {
    defineTypedStep,
    paramType,
} from '@jambit/wdio-cucumber-selected-steps/lib/support';

import {createUser, validateUser} from '../support/userTable';

defineTypedStep(
    /^I create a user "(User A|User B)"$/,
    [
        paramType.selector,
    ],
    createUser,
);

defineTypedStep(
    /^I see the user "(User A|User B)" in "(User Table - User A|User Table - User B)"$/,
    [
        paramType.selector,
        paramType.string,
    ],
    validateUser,
);

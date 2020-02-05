import {
    defineTypedStep,
    paramType,
} from '@jambit/wdio-cucumber-selected-steps/lib/support';

import githubLogin from '../support/githubLogin';

defineTypedStep(
    /^I log in on github as "([^"]+)" with password "([^"]+)"$/,
    [
        paramType.string,
        paramType.string,
    ],
    githubLogin,
);

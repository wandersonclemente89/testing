import {Config} from 'protractor';
// An example configuration file.
export let config: Config = {
  directConnect: true,
  // Capabilities to be passed to the webdriver instance.
  capabilities: {
    'browserName': 'chrome'
  },
  SELENIUM_PROMISE_MANAGER: false,
  // Framework to use
  framework: 'custom',
  frameworkPath: require.resolve('protractor-cucumber-framework'),

  specs: [
    '../features/*.feature'
  ],

  cucumberOpts: {
    require: [
      'steps/*.step.js',
    ]
  }
};
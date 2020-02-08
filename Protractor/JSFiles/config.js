"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
// An example configuration file.
exports.config = {
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
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiY29uZmlnLmpzIiwic291cmNlUm9vdCI6IiIsInNvdXJjZXMiOlsiLi4vY29uZmlnLnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiI7O0FBQ0EsaUNBQWlDO0FBQ3RCLFFBQUEsTUFBTSxHQUFXO0lBQzFCLGFBQWEsRUFBRSxJQUFJO0lBQ25CLHVEQUF1RDtJQUN2RCxZQUFZLEVBQUU7UUFDWixhQUFhLEVBQUUsUUFBUTtLQUN4QjtJQUNELHdCQUF3QixFQUFFLEtBQUs7SUFDL0IsbUJBQW1CO0lBQ25CLFNBQVMsRUFBRSxRQUFRO0lBQ25CLGFBQWEsRUFBRSxPQUFPLENBQUMsT0FBTyxDQUFDLCtCQUErQixDQUFDO0lBRS9ELEtBQUssRUFBRTtRQUNMLHVCQUF1QjtLQUN4QjtJQUVELFlBQVksRUFBRTtRQUNaLE9BQU8sRUFBRTtZQUNQLGlCQUFpQjtTQUNsQjtLQUNGO0NBQ0YsQ0FBQyJ9
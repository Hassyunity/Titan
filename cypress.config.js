const { defineConfig } = require("cypress");

module.exports = defineConfig({
  projectId: '5fcdh5',
  e2e: {
    setupNodeEvents(on, config) {
      // implement node event listeners her
    },
  },
  video: true,
});

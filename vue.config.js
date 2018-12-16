const VuetifyLoaderPlugin = require('vuetify-loader/lib/plugin');

module.exports = {
  outputDir: 'docs',
  configureWebpack: {
    plugins: [new VuetifyLoaderPlugin()]
  }
};

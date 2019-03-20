const { environment } = require('@rails/webpacker')
const CopyPlugin = require('copy-webpack-plugin');

environment.plugins.prepend(
  'Copy',
  new CopyPlugin([
    { from: 'node_modules/govuk-frontend/assets', to: 'govuk-frontend' }
  ])
);
module.exports = environment

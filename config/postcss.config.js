const path = require("path");
const postcssImport = require("/Users/kaoru/ruby_playground/deploy/myapp/node_modules/postcss-import");

module.exports = {
  plugins: [
    postcssImport,
    require("autoprefixer"),
    require("postcss-nested"),
    require("postcss-flexbugs-fixes"),
  ],
};

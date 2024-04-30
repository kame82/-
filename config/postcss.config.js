const path = require("path");
const postcssImportPath = require.resolve("postcss-import");
const postcssImport = require(postcssImportPath);
module.exports = {
  plugins: [
    require(postcssImport),
    require("tailwindcss"),
    require("autoprefixer"),
    require("postcss-nested"),
    require("postcss-flexbugs-fixes"),
  ],
};

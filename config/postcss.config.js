const path = require("path");

module.exports = {
  plugins: [
    require(path.resolve(__dirname, "node_modules", "postcss-import")),
    require("tailwindcss"),
    require("autoprefixer"),
    require("postcss-nested"),
    require("postcss-flexbugs-fixes"),
  ],
};

var webpack = require("webpack");
var path = require('path');

module.exports = {
  entry: './src/index.coffee',

  output: {
    filename: 'public/bundle.js'
  },

  module: {
    loaders: [
      { test: /\.coffee$/, loader: "coffee" }
    ]
  },

  resolve: {
    root: [],
    extensions: ["", ".coffee", ".js"]
  }
}

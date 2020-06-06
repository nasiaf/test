# création App

rails new App

# génération controller

rails g controller home index

# install yarn package

yarn add bootstrap jquery popper.js @fortawesome/fontawesome-free


# ajouter Js & fontawesome dans app/javascript/packs/application.js

require("bootstrap");
require("@fortawesome/fontawesome-free");


# rename application.css en  application.scss && appeler le css bootstrap

$fa-font-path: '@fortawesome/fontawesome-free/webfonts';
@import '@fortawesome/fontawesome-free/scss/fontawesome';
@import '@fortawesome/fontawesome-free/scss/regular';
@import '@fortawesome/fontawesome-free/scss/solid';
@import '@fortawesome/fontawesome-free/scss/brands';
@import 'bootstrap/scss/bootstrap';

# rendre jquery disponible : modifier config/webpack/environment.js

const { environment } = require('@rails/webpacker')
var webpack = require('webpack');
environment.plugins.append(
  'Provide',
  new webpack.ProvidePlugin({
    $: 'jquery',
  })
)
module.exports = environment



## Lancer serveur

rails s
./bin/Webpack-dev-server


Write your CSS (for instance: app/assets/stylesheets/my_makeup.css)
Ensure app/assets/config/manifest.js makes it available for stylesheet_link_tag either through a link_tree, link_directory or a link statement (for instance: link my_makeup.css)
Include it in your view using stylesheet_link_tag (<%= stylesheet_link_tag 'my_makeup' %>)

./bin/webpack-dev-server

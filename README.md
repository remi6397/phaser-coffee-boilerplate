# Phaser CoffeeScript Boilerplate

This is a simple Phaser template for building standard games using the 
Phaser framework and CoffeeScript.

The original idea was to create a small project that contained a robust gulpfile, 
a basic example and *some* kind of folder structure.

## Features

[+] Heavily commented, flexible Gulpfile (that means it uses [Gulp](http://gulpjs.com/)).
[+] [Browserify](https://github.com/substack/node-browserify) + [Coffeeify](https://github.com/jnordberg/coffeeify)
[+] [Browsersync](http://www.browsersync.io/) = Livereload + Mobile debugging with [Weinre](http://people.apache.org/~pmuellr/weinre-docs/latest/).
[+] Example: Extending Phaser & modular development.
[+] Production ([UglifyJS](https://github.com/mishoo/UglifyJS2)) and Development ([Sourcemaps](https://developer.chrome.com/devtools/docs/javascript-debugging#source-maps)) builds.

## Why CoffeeScript?

CoffeeScript [is fast and simple](http://coffeescript.org/).

Anyways, I've been using CoffeeScript for a while in other personal projects, and I currently prefer it over Babel and Typescript. 
I found the new Class-based syntax to be a better fit for my developer needs. Unfortunately, the best way to access
all the features of the new standard is by using a transpiler. This boilerplate is an attempt to reduce the time spent 
configurating a project and installing dependencies by providing a template that can work as an scaffold for any Phaser game.

## Usage

You need [Node.js and npm](https://nodejs.org/). You should also have git installed, but it's not mandatory.

Clone the repository (or download the ZIP file)

`git clone https://github.com/remi6397/phaser-coffeescript-boilerplate.git`

Install dependencies

`npm install`

Run a development build...

`npm start`

...or a production build.

`npm run production`

Development builds will copy `phaser.min.js` together with `phaser.map` and `phaser.js`
Your CoffeeScript code will be transpiled into ES5 and concatenated into a single file.
A sourcemap for your code will also be included (by default `game.map.js`).

Production builds will only copy `phaser.min.js`. Your CoffeeScript code will be transpiled and
minified using UglifyJS.

Any modification to the files inside the `./src` and `./static` folder will trigger a full page reload.

If you modify the contents of other files, please manually restart the server.

### Modifying `gulpfile.js`

See [gulpfile.md](https://github.com/remi6397/phaser-coffescript-boilerplate/blob/master/gulpfile.md)

## Changelog (1.0.2)

* Faster builds (no need to copy static files every time).
* Live reload now works with static files too!

## Contributing

Please report any bugs or add requests on [Github Issues](https://github.com/remi6397/phaser-coffescript-boilerplate/issues).

## About this document

I know that this readme is totally ''borrowed'' from belohlavek's original readme, but why change something, that actually is very good? 

## License

This project is released under the MIT License.

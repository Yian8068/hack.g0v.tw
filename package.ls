#!/usr/bin/env lsc -cj
author: 'Chia-liang Kao'
name: 'hackfoldr'
description: 'hackfoldr'
version: '0.1.1'
homepage: 'https://github.com/hackfoldr/hackfoldr'
repository:
  type: 'git'
  url: 'https://github.com/hackfoldr/hackfoldr'
engines:
  node: '0.8.x'
  npm: '1.1.x'
scripts:
  prepublish: """
    node ./node_modules/LiveScript/bin/lsc -cj package.ls
    node ./node_modules/LiveScript/bin/lsc -c test/*.js.ls
  """
  build: 'gulp --require LiveScript'
  test: 'npm run build && bower i && karma start --browsers PhantomJS --single-run true test/karma.conf.js'
  start: 'gulp --require LiveScript dev'
dependencies: {}
devDependencies:
  LiveScript: '1.1.x'
  'karma': '~0.10.5'
  'karma-live-preprocessor': '~0.2.0'
  'karma-mocha': '~0.1.0'
  'karma-chai': '~0.0.2'
  'karma-ng-scenario': '0.1.0'
  'bower': '1.2.x'
  'mocha': '~1.14.0'
  'chai': '~1.8.0'
  'gulp-livereload': '~1.2.0'
  'connect-livereload': '~0.3.2'
  'gulp-ruby-sass': '~0.4.1'
  'tiny-lr': '0.0.5'
  'gulp-util': '~2.2.14'
  'gulp': '~3.6.0'
  'gulp-jade': '~0.4.2'
  'express': '~3.5.1'
  'gulp-insert': '~0.2.0'
  'gulp-concat': '~2.2.0'
  'gulp-livescript': '~0.2.1'
  'streamqueue': '0.0.6'
  'gulp-commonjs': '~0.1.0'
  'gulp-if': '0.0.5'
  'gulp-uglify': '~0.2.1'
  'gulp-json-editor': '~2.0.2'
  'gulp-less': '~1.2.3'
  'gulp-angular-templatecache': '~1.1.1'
  'gulp-bower': '0.0.3'
  'gulp-filter': '~0.3.1'
  'gulp-bower-files': '~0.2.1'
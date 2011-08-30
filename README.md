# TestTrack

This gem provides sane defaults for using Javascript test frameworks in
the Rails 3.1 Asset Pipeline. It allows you to write and run
[Qunit][qunit] or [Jasmine][jasmine] tests while leveraging the new
compiling power of the Tilt and Sprockets 2.

## How it works

TestTest is a mountable engine whichs provides routes to
Javascript test runners pre-loaded with your application's code and
tests. In addition to the test runners, [Sinon.js][sinon] is included
for mocking, spies, and XHR faking. It's usage is entirely optional and
won't affect pre-existing test suites.

## Usage

In your Rails 3.1 app, just add it to your Gemfile, like this:

    gem 'test_track'

Then create a manifest file named `qunit.js` or `jasmine.js` which
requires all of your test code, include any custom helpers.

    app/assets/javascripts/jasmine.js

    //= require helpers/SpecHelper
    //= require profile_spec
    //= require user_spec

TestTrack automatically adds test paths to your app's asset pipeline, so
relative paths are only necessary with `require_tree` or
`require_directory`. The default locations are

* Jasmine - `spec/javascripts`
* Qunit   - `test/javascripts`

Now just add a route for TestTrack engine to routes.rb.

    mount TestTrack::Engine => "test"

And you're off the the races. An index is provide with links to the test
runners. They would be accessible at `/test/jasmine` and
`/test/qunit` in the example above.


This project rocks and uses MIT-LICENSE.


[jasmine]: https://github.com/pivotal/jasmine
[qunit]:   https://github.com/jquery/qunit
[sinon]:   http://sinonjs.org/


# TestTrack

This gem provides sane defaults for using Javascript test frameworks in
the Rails 3.1 Asset Pipeline. It allows you to write and run
[Qunit][qunit] or [Jasmine][jasmine] tests while leveraging the new
compiling power of Tilt and Sprockets 2. Now enabling more profit when you
write your JS tests in CoffeeScript!

## How it works

TestTrack is a mountable engine whichs provides routes to
Javascript test runners pre-loaded with your application's code and
tests.

## Usage

### 1. Install the Test Track gem
In your Rails 3.1 app, just add it to your Gemfile, like this:

    gem "test_track"

### 2. Create a Manfiest
TestTrack automatically adds test paths to your app's asset pipeline.
The default locations are...

* Jasmine - `spec/javascripts`
* Qunit   - `test/javascripts`

This is a good place for your manfiest file for your framework of choice. Here is a sample Jasmine manifest, called `jasmine.js` in `spec/javascripts` that includes our test suite and helpers:

    // SUITE :: Jasmine
    // SUITE MANIFEST :: spec/javascripts/jasmine.js
    // TEST SRC DIR :: spec/javascripts
    //
    //= require helpers/spec_helper
    //= require profile_spec
    //= require user_spec

*For Qunit, create `qunit.js` in `test/javascripts`, instead.*

We would recommend that you place your test manifests in the
directories listed above, as TestTrack will look for them there by default.  Feel free to place these anywhere else in the asset pipeline, just don't forget to specify its location in an initializer. If it happens to be in the root of an asset directory, no additional configuration is required.

### 3. Set up Initializers (optional)
If you'd like to change a default, such as the name of your Jasmine
manifest, try the following in `config/initializers/test_track.rb`:

    TestTrack.setup do |config|
      config.qunit_manifest = "test/qunit"
    end

To see this in action, check out the sample Rails code in `test/dummy`.
See `lib/test_track.rb` for all available options.

### 4. Mount the TestTrack Engine
In your `routes.rb`:

    mount TestTrack::Engine => "test"

And you're off the the races. An index is provided with links to the test
runners. They would be accessible at `/test/jasmine` and
`/test/qunit` in the example above.

## Sinon.js

In addition to the test runners, [Sinon.js][sinon] is included by
default. It's a great set of tooling for mocking, spies, and XHR
faking. In general, Sinon.js will not affect any pre-existing test
suites, but there are some gotcha's. Be sure to [check the out the
documentation][sinon-docs] if you haven't used it before

In Sinon's default settings, _setTimeout and setInterval are
overwritten_. To change this behavior you need to modify Sinon's config
object before your tests run.

    sinon.config.useFakeTimers = false;

To not include Sinon, add the following to your TestTrack initiailizer.
]
    config.include_sinon = false


## Production

Obviously, you may not want to have these routes available if your app
is running in `:production`. Try this in your `routes.rb`:

    mount TestTrack::Engine => "test" unless Rails.env.production?

## License

This project uses the MIT-LICENSE.


[jasmine]: https://github.com/pivotal/jasmine
[qunit]: https://github.com/jquery/qunit
[sinon]: http://sinonjs.org/
[sinon-docs]: http://sinonjs.org/docs/


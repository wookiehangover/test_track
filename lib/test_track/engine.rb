require "rails"
require "test_track"

module TestTrack

  class Engine < Rails::Engine
    isolate_namespace TestTrack

    initializer :setup_test_track do |app|
      app.assets.append_path "#{app.root}/#{TestTrack.jasmine_path}"
      app.assets.append_path "#{app.root}/#{TestTrack.qunit_path}"
    end
  end

end

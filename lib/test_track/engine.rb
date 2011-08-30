module TestTrack

  class Engine < Rails::Engine
    isolate_namespace TestTrack

    initializer :setup_js_test do |app|
			app.assets.append_path "#{app.root}/#{TestTrack.jasmine_path}"
			app.assets.append_path "#{app.root}/#{TestTrack.qunit_path}"
    end
  end

end

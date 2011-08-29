module JsTestGem

  class Engine < Rails::Engine
    isolate_namespace JsTestGem

    initializer :setup_js_test do |app|
			app.assets.append_path "#{app.root}/#{JsTestGem.jasmine_path}"
			app.assets.append_path "#{app.root}/#{JsTestGem.qunit_path}"
    end
  end

end

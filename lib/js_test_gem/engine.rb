module JsTestGem

  class Engine < Rails::Engine
    isolate_namespace JsTestGem

    initializer :setup_js_test do |app|
      app.assets.append_path "#{app.root}/spec/javascripts"
    end
  end

end

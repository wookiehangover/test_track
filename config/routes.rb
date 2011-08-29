JsTestGem::Engine.routes.draw do
  root :to => "tests#index"
  match '/jasmine' => 'tests#jasmine'
  match '/qunit' => 'tests#qunit'
end

TestTrack::Engine.routes.draw do
  root :to         => "tests#index"
  match '/jasmine' => 'tests#jasmine' , :as => :jasmine
  match '/qunit'   => 'tests#qunit' , :as => :qunit
end

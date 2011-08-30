Dummy::Application.routes.draw do
  #raise "routes"
  mount TestTrack::Engine => "js_test"
end


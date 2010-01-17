ActionController::Routing::Routes.draw do |map|
  map.resources :user_sessions
  map.resources :boks
  map.resources :users
end

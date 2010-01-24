ActionController::Routing::Routes.draw do |map|
  map.resources :user_sessions
  map.resources :boks do |boks|
    boks.resources :bok_children, :as => :children
  end
  map.resources :users
end

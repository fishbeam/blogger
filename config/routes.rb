Blogger::Application.routes.draw do
	root :to => 'articles#index'

	get "tags/index"
	get "tags/show"

	resources :authors
	resources :author_sessions
	resources :comments
	resources :articles
	resources :tags

	match 'login' => 'author_sessions#new', :as => :login
	match 'logout' => 'author_sessions#destroy', :as => :logout
end
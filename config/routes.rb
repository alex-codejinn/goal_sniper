GoalSniper::Application.routes.draw do
	match "/about", to: "pages#about", via: "get"

	resources :goals
end
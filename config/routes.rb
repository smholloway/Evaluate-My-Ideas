EvaluateMyIdeas::Application.routes.draw do

  get "home/index"

  resources :ideas do
    member do
      get 'add_one'
    end
  end

  match 'home' => 'home#index', :as => :home
  match 'idea/{id}' => 'home#index', :as => :home
  #match 'pricing' => 'home#pricing', :as => :pricing
  root :to => "home#index"
  match '*a' => redirect('/')

end

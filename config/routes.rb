EvaluateMyIdeas::Application.routes.draw do

  resources :ideas do
    member do
      get 'add_one'
    end
  end

  match 'home' => 'home#index', :as => :home
  root :to => "ideas#index"
  match '*a' => redirect('/')

end

Rails.application.routes.draw do
  get '/' => "chains#index"
  get '/chains/view_all_chains' => "chains#view_all_chains", as: 'view_all_chains'
  resources :chains do
    resources :userposts
  end 
end

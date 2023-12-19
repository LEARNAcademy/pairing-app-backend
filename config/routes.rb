# api/config/routes
Rails.application.routes.draw do
  resources :pairs
  get '/cohorts/:id/students' => 'students#index'
  resources :students, only: [:create, :update, :destroy] 
  resources :cohorts
  resources :activities
  get 'private/test'
  devise_for :users, 
    path: '', 
    path_names: {
      sign_in: 'login',
      sign_out: 'logout',
      registration: 'signup'
    },
    controllers: {
      sessions: 'users/sessions',
      registrations: 'users/registrations'
    }
end
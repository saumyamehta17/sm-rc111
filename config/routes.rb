SmRc110::Application.routes.draw do
  resources :projects
  resources :searches


  root :to => 'projects#index'
end

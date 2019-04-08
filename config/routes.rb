Rails.application.routes.draw do
  # get 'subjects/index'
  # get 'students/index'
  resources :subjects
  resources :students do
    post :add_marks, on: :collection
  end
  root 'students#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

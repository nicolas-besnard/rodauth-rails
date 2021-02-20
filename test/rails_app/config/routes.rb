Rails.application.routes.draw do
  root to: "test#root"

  controller :test do
    get :auth1
    get :auth2
    get :secondary
  end

  namespace :advanced_admin do
    resources :dashboard, only: [:index]
  end
end

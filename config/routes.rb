Rails.application.routes.draw do
  scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/ do
  resources :izus
  devise_for :users
  root 'pages#home'
end
end

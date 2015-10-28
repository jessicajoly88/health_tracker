Rails.application.routes.draw do
  devise_for :users
  get 'stat_pages/home'

   root "stat_pages#home"

   resources:users 
end

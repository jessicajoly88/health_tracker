Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: "users/sessions" }
  
  get 'stat_pages/home'
   root "stat_pages#home"

   resources:users 
end

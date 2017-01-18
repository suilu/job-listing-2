Rails.application.routes.draw do
  devise_for :users

    resources :jobs
   root 'welcome#index'
   namespace :admin do
     resources :jobs
   end
   namespace :admin do
    resources :jobs do
      member do
        post :publish
        post :hide
      end

      resources :welcome do
    end

      resources :resumes
    end
  end

  resources :jobs do
    resources :resumes
  end
end

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :campaigns do
    resources :ad_groups do
      resources :expanded_text_ad
    end
  end
end

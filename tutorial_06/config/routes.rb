Rails.application.routes.draw do
  get "/path", to: "upload#index"
  post "/path/read", to: "upload#display"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  get "/input", to: "login#index"
  post "/input/success", to: "login#login"
  delete "/logout", to: "login#destory"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

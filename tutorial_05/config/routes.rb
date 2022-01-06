Rails.application.routes.draw do
  get "/file", to: "file#file"
  post "/file/read", to: "file#read_data"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

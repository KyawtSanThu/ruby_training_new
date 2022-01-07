Rails.application.routes.draw do
  get "/date", to: "age#calculate"
  post "/date/display", to: "age#display_age"
end

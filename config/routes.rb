Rails.application.routes.draw do
  get "/hi", controller: 'hello', action: 'hi'
end

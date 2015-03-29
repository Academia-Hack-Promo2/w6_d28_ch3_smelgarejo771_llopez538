Rails.application.routes.draw do
  get "/fiesta" => "samuel#show" 
  get "/fiesta/:id" => "samuel#showspecifit"
  post "/fiesta" => "samuel#create"
  put "/fiesta/:id" => "samuel#update"
  delete "/fiesta/:id" => "samuel#delete"
end

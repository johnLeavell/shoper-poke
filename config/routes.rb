Rails.application.routes.draw do
  # Routes for the Card resource:

  # CREATE
  post("/insert_card", { :controller => "cards", :action => "create" })
          
  # READ
  get("/cards", { :controller => "cards", :action => "index" })
  
  get("/cards/:path_id", { :controller => "cards", :action => "show" })
  
  # UPDATE
  
  post("/modify_card/:path_id", { :controller => "cards", :action => "update" })
  
  # DELETE
  get("/delete_card/:path_id", { :controller => "cards", :action => "destroy" })

  #------------------------------

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

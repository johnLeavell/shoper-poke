Rails.application.routes.draw do
  # Routes for the Category resource:

  # CREATE
  post("/insert_category", { :controller => "categories", :action => "create" })
          
  # READ
  get("/categories", { :controller => "categories", :action => "index" })
  
  get("/categories/:path_id", { :controller => "categories", :action => "show" })
  
  # UPDATE
  
  post("/modify_category/:path_id", { :controller => "categories", :action => "update" })
  
  # DELETE
  get("/delete_category/:path_id", { :controller => "categories", :action => "destroy" })

  #------------------------------

  # Routes for the Subcategory resource:

  # CREATE
  post("/insert_subcategory", { :controller => "subcategories", :action => "create" })
          
  # READ
  get("/subcategories", { :controller => "subcategories", :action => "index" })
  
  get("/subcategories/:path_id", { :controller => "subcategories", :action => "show" })
  
  # UPDATE
  
  post("/modify_subcategory/:path_id", { :controller => "subcategories", :action => "update" })
  
  # DELETE
  get("/delete_subcategory/:path_id", { :controller => "subcategories", :action => "destroy" })

  #------------------------------

  # Routes for the User account:

  # SIGN UP FORM
  get("/user_sign_up", { :controller => "user_authentication", :action => "sign_up_form" })        
  # CREATE RECORD
  post("/insert_user", { :controller => "user_authentication", :action => "create"  })
      
  # EDIT PROFILE FORM        
  get("/edit_user_profile", { :controller => "user_authentication", :action => "edit_profile_form" })       
  # UPDATE RECORD
  post("/modify_user", { :controller => "user_authentication", :action => "update" })
  
  # DELETE RECORD
  get("/cancel_user_account", { :controller => "user_authentication", :action => "destroy" })

  # ------------------------------

  # SIGN IN FORM
  get("/user_sign_in", { :controller => "user_authentication", :action => "sign_in_form" })
  # AUTHENTICATE AND STORE COOKIE
  post("/user_verify_credentials", { :controller => "user_authentication", :action => "create_cookie" })
  
  # SIGN OUT        
  get("/user_sign_out", { :controller => "user_authentication", :action => "destroy_cookies" })
             
  #------------------------------

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

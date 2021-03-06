Rails.application.routes.draw do

  #Route for the Message resource: 
  match("/insert_message", { :controller=>"messages", :action => "create", :via => "post"})

  match("/messages", { :controller=>"messages", :action => "index", :via => "get"})

  match("/messages/:id_from_path", { :controller=>"messages", :action => "show", :via => "get"})

  match("/modify_message/:id_from_path", { :controller=>"messages", :action => "update", :via => "post"})

  match("/delete_message/:id_from_path", { :controller=>"messages", :action => "destroy", :via => "get"})

  # Routes for the Bid resource:

  # CREATE
  match("/insert_bid", { :controller => "bids", :action => "create", :via => "post"})
          
  # READ
  match("/bids", { :controller => "bids", :action => "index", :via => "get"})
  
  match("/bids/:id_from_path", { :controller => "bids", :action => "show", :via => "get"})
  
  # UPDATE
  
  match("/modify_bid/:id_from_path", { :controller => "bids", :action => "update", :via => "post"})
  
  # DELETE
  match("/delete_bid/:id_from_path", { :controller => "bids", :action => "destroy", :via => "get"})

  #------------------------------

  # My own routes 

  match("/my_books", { :controller => "users", :action => "my_books", :via => "get"})

  match("/requested_books", { :controller => "books", :action => "requested_books", :via => "get"})

  match("/available_books", {:controller => "books", :action => "available_books", :via => "get"})


  #--------------------------------------

  # Routes for the Bidding resource:

  # CREATE
  match("/insert_bidding", { :controller => "biddings", :action => "create", :via => "post"})
          
  # READ
  match("/biddings", { :controller => "biddings", :action => "index", :via => "get"})
  
  match("/biddings/:id_from_path", { :controller => "biddings", :action => "show", :via => "get"})
  
  # UPDATE
  
  match("/modify_bidding/:id_from_path", { :controller => "biddings", :action => "update", :via => "post"})
  
  # DELETE
  match("/delete_bidding/:id_from_path", { :controller => "biddings", :action => "destroy", :via => "get"})

  #------------------------------

  # Routes for the Book resource:

  # CREATE
  match("/insert_book", { :controller => "books", :action => "create", :via => "post"})
          
  # READ
  match("/books", { :controller => "books", :action => "index", :via => "get"})
  
  match("/books/:id_from_path", { :controller => "books", :action => "show", :via => "get"})
  
  # UPDATE
  
  match("/modify_book/:id_from_path", { :controller => "books", :action => "update", :via => "post"})
  
  # DELETE
  match("/delete_book/:id_from_path", { :controller => "books", :action => "destroy", :via => "get"})

  #------------------------------

  # Routes for signing up

  match("/user_sign_up", { :controller => "users", :action => "new_registration_form", :via => "get"})
  
  # Routes for signing in
  match("/", { :controller => "user_sessions", :action => "new_session_form", :via => "get"})
  match("/user_sign_in", { :controller => "user_sessions", :action => "new_session_form", :via => "get"})
  
  match("/user_verify_credentials", { :controller => "user_sessions", :action => "add_cookie", :via => "post"})
  
  # Route for signing out
  
  match("/user_sign_out", { :controller => "user_sessions", :action => "remove_cookies", :via => "get"})
  
  # Route for creating account into database 

  match("/post_user", { :controller => "users", :action => "create", :via => "post" })
  
  # Route for editing account
  
  match("/edit_user", { :controller => "users", :action => "edit_registration_form", :via => "get"})
  
  match("/patch_user", { :controller => "users", :action => "update", :via => "post"})
  
  # Route for removing an account
  
  match("/cancel_user_account", { :controller => "users", :action => "destroy", :via => "get"})


  #------------------------------

  # ======= Add Your Routes Above These =============
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
end

Rails.application.routes.draw do
  # Routes for the Pose resource:

  # CREATE
  get("/poses/new", { :controller => "poses", :action => "new_form" })
  post("/create_pose", { :controller => "poses", :action => "create_row" })

  # READ
  get("/poses", { :controller => "poses", :action => "index" })
  get("/poses/:id_to_display", { :controller => "poses", :action => "show" })

  # UPDATE
  get("/poses/:prefill_with_id/edit", { :controller => "poses", :action => "edit_form" })
  post("/update_pose/:id_to_modify", { :controller => "poses", :action => "update_row" })

  # DELETE
  get("/delete_pose/:id_to_remove", { :controller => "poses", :action => "destroy_row" })

  #------------------------------

  devise_for :users
  # Routes for the User resource:

  # READ
  get("/users", { :controller => "users", :action => "index" })
  get("/users/:id_to_display", { :controller => "users", :action => "show" })

  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

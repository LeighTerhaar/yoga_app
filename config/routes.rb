Rails.application.routes.draw do
  # Routes for the Sun c resource:

  # CREATE
  get("/sun_cs/new", { :controller => "sun_cs", :action => "new_form" })
  post("/create_sun_c", { :controller => "sun_cs", :action => "create_row" })

  # READ
  get("/sun_cs", { :controller => "sun_cs", :action => "index" })
  get("/sun_cs/:id_to_display", { :controller => "sun_cs", :action => "show" })

  # UPDATE
  get("/sun_cs/:prefill_with_id/edit", { :controller => "sun_cs", :action => "edit_form" })
  post("/update_sun_c/:id_to_modify", { :controller => "sun_cs", :action => "update_row" })

  # DELETE
  get("/delete_sun_c/:id_to_remove", { :controller => "sun_cs", :action => "destroy_row" })

  #------------------------------

  # Routes for the Sun b resource:

  # CREATE
  get("/sun_bs/new", { :controller => "sun_bs", :action => "new_form" })
  post("/create_sun_b", { :controller => "sun_bs", :action => "create_row" })

  # READ
  get("/sun_bs", { :controller => "sun_bs", :action => "index" })
  get("/sun_bs/:id_to_display", { :controller => "sun_bs", :action => "show" })

  # UPDATE
  get("/sun_bs/:prefill_with_id/edit", { :controller => "sun_bs", :action => "edit_form" })
  post("/update_sun_b/:id_to_modify", { :controller => "sun_bs", :action => "update_row" })

  # DELETE
  get("/delete_sun_b/:id_to_remove", { :controller => "sun_bs", :action => "destroy_row" })

  #------------------------------

  # Routes for the Sun a resource:

  # CREATE
  get("/sun_as/new", { :controller => "sun_as", :action => "new_form" })
  post("/create_sun_a", { :controller => "sun_as", :action => "create_row" })

  # READ
  get("/sun_as", { :controller => "sun_as", :action => "index" })
  get("/sun_as/:id_to_display", { :controller => "sun_as", :action => "show" })

  # UPDATE
  get("/sun_as/:prefill_with_id/edit", { :controller => "sun_as", :action => "edit_form" })
  post("/update_sun_a/:id_to_modify", { :controller => "sun_as", :action => "update_row" })

  # DELETE
  get("/delete_sun_a/:id_to_remove", { :controller => "sun_as", :action => "destroy_row" })

  #------------------------------

  # Routes for the Yoga flow resource:

  # CREATE
  get("/yoga_flows/new", { :controller => "yoga_flows", :action => "new_form" })
  post("/create_yoga_flow", { :controller => "yoga_flows", :action => "create_row" })

  # READ
  get("/yoga_flows", { :controller => "yoga_flows", :action => "index" })
  get("/yoga_flows/:id_to_display", { :controller => "yoga_flows", :action => "show" })

  # UPDATE
  get("/yoga_flows/:prefill_with_id/edit", { :controller => "yoga_flows", :action => "edit_form" })
  post("/update_yoga_flow/:id_to_modify", { :controller => "yoga_flows", :action => "update_row" })

  # DELETE
  get("/delete_yoga_flow/:id_to_remove", { :controller => "yoga_flows", :action => "destroy_row" })

  #------------------------------

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

Rails.application.routes.draw do

  get("/", { :controller => "photos", :action => "index" })

  # Routes to CREATE photos
  get("/photos/new", { :controller => "photos", :action => "new_form"})
  get("/create_photo", { :controller => "photos", :action => "create_row"})

  # Routes to READ photos
  get("/photos",           { :controller => "photos", :action => "index" })
  get("/photos/:id",       { :controller => "photos", :action => "show" })

  # Routes to UPDATE/EDIT photos
  get("/photos/:id/edit", { :controller => "photos", :action => "edit_form"})
  get("/update_photo/:id", { :controller => "photos", :action => "update_row"})
  # Q: Here the /:id makes that segment dynamic so it accounts for any input from the user. But
  # since we know that the action attached to the edit on the index page is grabbing the photo.id
  # from the database, can we not do the same thing with this route (i.e. put in <%= photo.id %> instead of :id?

  # Route to DELETE photos
  get("/delete_photo/:id", { :controller => "photos", :action => "destroy"})



end

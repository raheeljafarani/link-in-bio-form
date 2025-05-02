Rails.application.routes.draw do

  get("/", { :controller => "items", :action => "index" })  

  get("/backdoor", { :controller => "items", :action => "new_link_form"})
  post("/insert_item", { :controller => "items", :action => "create_new_link"})

end

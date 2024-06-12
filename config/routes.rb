Rails.application.routes.draw do
  get("/", { :controller => "dice", :action => "homepage" })
  get("/dice/:number_of_dice/:number_of_sides", { :controller => "dice", :action => "flexible_sides" })
end

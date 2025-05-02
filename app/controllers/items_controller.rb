class ItemsController < ApplicationController
  def index
    @list_of_items = Item.all

    render({ :template => "item_templates/list" })
  end

  def new_link_form
      render({ :template => "item_templates/new_link_form" })
  end

  def create_new_link
    new_item = Item.new

    new_item.link_url = params.fetch("query_link_url")
    new_item.link_description = params.fetch("query_link_description")
    new_item.thumbnail_url = params.fetch("query_thumbnail_url")

    new_item.save

    redirect_to("/")
  end 
end

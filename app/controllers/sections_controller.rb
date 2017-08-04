class SectionsController < ApplicationController
  def index
    unless params[:section]
      redirect_to menu_path(section: Section.first.id)
      return
    end

    @sections = Section.all
    section = Section.find(params[:section])
    @food_items = section.food_items
  end

  def show
    
  end
end
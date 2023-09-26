class SubcategoriesController < ApplicationController
  def index
    matching_subcategories = Subcategory.all

    @list_of_subcategories = matching_subcategories.order({ :created_at => :desc })

    render({ :template => "subcategories/index" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_subcategories = Subcategory.where({ :id => the_id })

    @the_subcategory = matching_subcategories.at(0)

    render({ :template => "subcategories/show" })
  end

  def create
    the_subcategory = Subcategory.new
    the_subcategory.cards_count = params.fetch("query_cards_count")

    if the_subcategory.valid?
      the_subcategory.save
      redirect_to("/subcategories", { :notice => "Subcategory created successfully." })
    else
      redirect_to("/subcategories", { :alert => the_subcategory.errors.full_messages.to_sentence })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_subcategory = Subcategory.where({ :id => the_id }).at(0)

    the_subcategory.cards_count = params.fetch("query_cards_count")

    if the_subcategory.valid?
      the_subcategory.save
      redirect_to("/subcategories/#{the_subcategory.id}", { :notice => "Subcategory updated successfully."} )
    else
      redirect_to("/subcategories/#{the_subcategory.id}", { :alert => the_subcategory.errors.full_messages.to_sentence })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_subcategory = Subcategory.where({ :id => the_id }).at(0)

    the_subcategory.destroy

    redirect_to("/subcategories", { :notice => "Subcategory deleted successfully."} )
  end
end

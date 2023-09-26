class CardsController < ApplicationController
  def index
    matching_cards = Card.all

    @list_of_cards = matching_cards.order({ :created_at => :desc })

    render({ :template => "cards/index" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_cards = Card.where({ :id => the_id })

    @the_card = matching_cards.at(0)

    render({ :template => "cards/show" })
  end

  def create
    the_card = Card.new
    the_card.name = params.fetch("query_name")
    the_card.in_stock = params.fetch("query_in_stock")
    the_card.product_code = params.fetch("query_product_code")
    the_card.category_id = params.fetch("query_category_id")
    the_card.subcategory_id = params.fetch("query_subcategory_id")
    the_card.avatar = params.fetch("query_avatar")

    if the_card.valid?
      the_card.save
      redirect_to("/cards", { :notice => "Card created successfully." })
    else
      redirect_to("/cards", { :alert => the_card.errors.full_messages.to_sentence })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_card = Card.where({ :id => the_id }).at(0)

    the_card.name = params.fetch("query_name")
    the_card.in_stock = params.fetch("query_in_stock")
    the_card.product_code = params.fetch("query_product_code")
    the_card.category_id = params.fetch("query_category_id")
    the_card.subcategory_id = params.fetch("query_subcategory_id")
    the_card.avatar = params.fetch("query_avatar")

    if the_card.valid?
      the_card.save
      redirect_to("/cards/#{the_card.id}", { :notice => "Card updated successfully."} )
    else
      redirect_to("/cards/#{the_card.id}", { :alert => the_card.errors.full_messages.to_sentence })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_card = Card.where({ :id => the_id }).at(0)

    the_card.destroy

    redirect_to("/cards", { :notice => "Card deleted successfully."} )
  end
end

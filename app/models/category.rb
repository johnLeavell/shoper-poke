# == Schema Information
#
# Table name: categories
#
#  id          :integer          not null, primary key
#  cards_count :integer
#  name        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Category < ApplicationRecord
  has_many  :cards, :class_name => "Card", :foreign_key => "category_id", :dependent => :destroy
end

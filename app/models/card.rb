# == Schema Information
#
# Table name: cards
#
#  id             :integer          not null, primary key
#  avatar         :string
#  in_stock       :integer
#  name           :string
#  price          :string
#  product_code   :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  category_id    :integer
#  subcategory_id :integer
#
class Card < ApplicationRecord
  belongs_to :category, :required => true, :class_name => "Category", :foreign_key => "category_id", :counter_cache => true
  belongs_to :subcategory, :required => true, :class_name => "Subcategory", :foreign_key => "subcategory_id", :counter_cache => true
end

# == Schema Information
#
# Table name: subcategories
#
#  id          :integer          not null, primary key
#  cards_count :integer
#  name        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Subcategory < ApplicationRecord
  has_many  :cards, :class_name => "Card", :foreign_key => "subcategory_id", :dependent => :destroy
end

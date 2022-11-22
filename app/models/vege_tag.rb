class VegeTag < ApplicationRecord
  has_many :tag_relations
  has_many :farms, through: :tag_relations
end

class Meal < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :wheat

end

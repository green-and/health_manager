class Goal < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :wheatgoal
end

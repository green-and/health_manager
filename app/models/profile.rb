class Profile < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :wheatgoal

  validates :wheatgoal_id, :calory_goal, :digital_goal, :communication_goal
end

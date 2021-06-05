class Profile < ApplicationRecord
  belongs_to :user, optional: true

  validate :wheatgoal_id, :calory_goal, :digital_goal, :communication_goal
end

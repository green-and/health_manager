class Profile < ApplicationRecord
  belongs_to :user
  belongs_to :wheatgoal
end

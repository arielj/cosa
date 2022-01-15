class Candidate < ApplicationRecord
  validates :name, :last_name, :location, :email, presence: true
end

class Candidate < ApplicationRecord
  validates :name, :lastname, :location, :email, presence: true
end

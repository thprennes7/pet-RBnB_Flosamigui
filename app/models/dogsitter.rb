# Each dogsitter is in one city, makes multiple strolls and strolls many dogs
class Dogsitter < ApplicationRecord
  belongs_to :city
  has_many :strolls
  has_many :dogs, through: :strolls
end

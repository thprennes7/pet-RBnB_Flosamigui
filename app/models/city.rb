# Each city has multiple dogs, multiple dogsitters and multiple strolls takes place in it
class City < ApplicationRecord
  has_many :dogs
  has_many :dogsitters
  has_many :strolls
end

# Each stroll concerns one dogsitter, one dog and takes place in one city
class Stroll < ApplicationRecord
  belongs_to :dogsitter
  belongs_to :dog
  belongs_to :city
end

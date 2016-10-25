class Pet < ApplicationRecord
  belongs_to :user
  validates :name, :age, :breed, :size, :availability, presence: true 
end

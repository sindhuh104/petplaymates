class Profile < ApplicationRecord
  belongs_to :user
  validates :first_name, :last_name, :street, :suburb, :postcode, :phone, presence: true
end

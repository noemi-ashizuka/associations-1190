class Doctor < ActiveRecord::Base
  has_many :interns # plural => returns an array of instances
  has_many :consultations
  has_many :patients, through: :consultations

  validates :last_name, presence: true
  validates :last_name, uniqueness: { scope: :first_name }
  validates :last_name, length: { minimum: 2}
  
end

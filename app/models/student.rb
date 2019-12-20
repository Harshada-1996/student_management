class Student < ApplicationRecord
  belongs_to :standard
  has_many :subjects
  has_many :books,through: :library
end

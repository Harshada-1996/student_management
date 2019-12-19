class Student < ApplicationRecord
    has_one :account
    has_many :subjects
    has_many :books, through: :library
end

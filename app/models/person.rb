class Person < ApplicationRecord
  has_and_belongs_to_many :teams
  validates :name, presence: true,
            length: { minimum: 3 }
  validates :username, presence: true
  validates :user_id, presence: true


end

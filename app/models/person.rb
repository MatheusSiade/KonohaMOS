class Person < ApplicationRecord
  validates :name, presence: true,
            length: { minimum: 3 }
  validates :username, presence: true
  validates :user_id, presence: true


end

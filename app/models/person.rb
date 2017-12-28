class Person < ApplicationRecord
  validates :name, presence: true,
            length: { minimum: 3 }
  validates :username, presence: true
  validates :user_id, presence: true

  has_many :team_person1, :class_name => 'Team', :foreign_key => "person1_id"
  has_many :team_person2, :class_name => 'Team', :foreign_key => "person2_id"
  has_many :team_person3, :class_name => 'Team', :foreign_key => "person3_id"
  has_many :team_personsuperior, :class_name => 'Team', :foreign_key => "personsuperior_id"

end

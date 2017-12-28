class Team < ApplicationRecord
  belongs_to :person1, :class_name => 'Person'
  belongs_to :person2, :class_name => 'Person'
  belongs_to :person3, :class_name => 'Person'
  belongs_to :personsuperior, :class_name => 'Person'
end

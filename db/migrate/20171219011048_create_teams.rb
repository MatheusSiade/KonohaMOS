class CreateTeams < ActiveRecord::Migration[5.1]
  def change
    create_table :teams do |t|
      t.string :person1_id
      t.string :person2_id
      t.string :person3_id
      t.string :personsuperior_id

      t.timestamps
    end
  end
end

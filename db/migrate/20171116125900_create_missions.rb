class CreateMissions < ActiveRecord::Migration[5.1]
  def change
    create_table :missions do |t|
      t.string :title
      t.string :local
      t.string :challenge_label
      t.integer :team
      t.string :creator
      t.text :comments
      t.integer :price

      t.timestamps
    end
  end
end

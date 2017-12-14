class Mission < ApplicationRecord
  validates :title, presence: true, length: { minimum: 1}

  def change
    create_table :missions do |t|
      t.string :title
      t.string :local
      t.string  :challenge_level
      t.integer :team
      t.string :creator
      t.text :comments
      t.integer :price


    end
  end


end

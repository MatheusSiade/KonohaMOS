class CreatePeople < ActiveRecord::Migration[5.1]
  def change
    create_table :people do |t|
      t.string :name
      t.string :user_id
      t.string :birth_date
      t.string :home_address
      t.string :ninja_rank
      t.string :username
      t.string :user_type
      t.string :email

      t.timestamps
    end
  end
end

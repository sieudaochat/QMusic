class CreateLikings < ActiveRecord::Migration[5.0]
  def change
    create_table :likings do |t|
      t.integer :liked_id
      t.string :liked_type

      t.timestamps
    end
  end
end

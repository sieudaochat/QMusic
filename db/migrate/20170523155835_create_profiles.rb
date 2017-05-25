class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.string :name
      t.datetime :date_of_birth
      t.string :address
      t.string :description
      t.boolean :gender
      t.integer :polymorphic_id
      t.string :polymorphic_type

      t.timestamps
    end
  end
end

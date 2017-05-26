class CreateFollowings < ActiveRecord::Migration[5.0]
  def change
    create_table :followings do |t|
      t.integer :followed_id
      t.string :followed_type

      t.timestamps
    end
  end
end

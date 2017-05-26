class CreateNotifications < ActiveRecord::Migration[5.0]
  def change
    create_table :notifications do |t|
      t.string :content
      t.string :followed_id
      t.string :notification_type

      t.timestamps
    end
  end
end

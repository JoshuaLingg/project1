class CreateDiscussions < ActiveRecord::Migration[5.2]
  def change
    create_table :discussions do |t|
      t.text :message
      t.integer :user_id
      t.integer :note_id

      t.timestamps
    end
  end
end

class CreateNotes < ActiveRecord::Migration[5.2]
  def change
    create_table :notes do |t|
      t.text :title
      t.text :message
      t.text :image

      t.timestamps
    end
  end
end

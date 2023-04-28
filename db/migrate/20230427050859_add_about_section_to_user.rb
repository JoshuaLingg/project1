class AddAboutSectionToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :about_section, :text
  end
end

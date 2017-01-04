class AddBioToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :Bio, :text
  end
end

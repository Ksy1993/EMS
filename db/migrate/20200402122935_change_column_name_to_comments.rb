class ChangeColumnNameToComments < ActiveRecord::Migration[5.2]
  def change
  	rename_column :comments, :desciption, :description
  end
end

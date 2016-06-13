class RenameTypeToTitleInProducts < ActiveRecord::Migration
  def change
    rename_column :products, :type, :title
  end
end

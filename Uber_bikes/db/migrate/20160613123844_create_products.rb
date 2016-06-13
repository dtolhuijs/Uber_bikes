class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :type
      t.text :description

      t.timestamps null: false
    end
  end
end

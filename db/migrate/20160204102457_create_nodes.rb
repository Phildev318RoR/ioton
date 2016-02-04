class CreateNodes < ActiveRecord::Migration
  def change
    create_table :nodes do |t|
      t.string :name
      t.integer :node_type_id
      t.integer :iotonserver_id
      t.boolean :downloaded

      t.timestamps null: false
    end
  end
end

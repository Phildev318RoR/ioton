class CreateNodeMessageParrameters < ActiveRecord::Migration
  def change
    create_table :node_message_parrameters do |t|
      t.string :name
      t.integer :node_message_id
      t.integer :value_type_id
      t.integer :value_length
      t.integer :value_index
      t.boolean :downloaded

      t.timestamps null: false
    end
  end
end

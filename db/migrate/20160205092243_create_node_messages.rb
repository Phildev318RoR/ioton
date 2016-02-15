class CreateNodeMessages < ActiveRecord::Migration
  def change
    create_table :node_messages do |t|
      t.string :name
      t.integer :node_type_id
      t.integer :node_message_type_id
      t.boolean :downloaded

      t.timestamps null: false
    end
  end
end

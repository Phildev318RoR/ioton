class CreateRules < ActiveRecord::Migration
  def change
    create_table :rules do |t|
      t.string :name
      t.string :description
      t.integer :node_message_parrameter_id
      t.integer :rule_type_id
      t.string :rule_value
      t.boolean :downloaded

      t.timestamps null: false
    end
  end
end

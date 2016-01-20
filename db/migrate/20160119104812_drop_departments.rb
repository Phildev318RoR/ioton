class DropDepartments < ActiveRecord::Migration
  def up
    drop_table :departments
  end

  def down
    create_table :departments do |t|
      t.string :name
      t.string :description
      t.boolean :downloaded
      t.integer :client_id
      t.timestamps
    end
  end
end

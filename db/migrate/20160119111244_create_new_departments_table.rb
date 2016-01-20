class CreateNewDepartmentsTable < ActiveRecord::Migration
  def change
    create_table :departments do |t|
      t.string :name
      t.string :description
      t.boolean :downloaded
      t.integer :client_id
      t.timestamps
    end
  end
end

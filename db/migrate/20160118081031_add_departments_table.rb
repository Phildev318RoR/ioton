class AddDepartmentsTable < ActiveRecord::Migration
  def change
    create_table :departments do |t|
      t.string :name
      t.string :decription
      t.boolean :downloaded
      t.timestamps
    end
  end
end

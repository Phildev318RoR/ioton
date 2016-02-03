class CreateIotonservers < ActiveRecord::Migration
  def change
    create_table :iotonservers do |t|
      t.string :name
      t.string :description
      t.integer :site_id
      t.boolean :downloaded

      t.timestamps null: false
    end
  end
end

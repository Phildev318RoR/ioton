class AddClientTable < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name
      t.string :decription
      t.string :contact_person
      t.string :contact_phone
      t.boolean :downloaded
      t.timestamps
    end
  end
end

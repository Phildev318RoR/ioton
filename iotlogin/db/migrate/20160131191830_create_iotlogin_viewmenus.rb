class CreateIotloginViewmenus < ActiveRecord::Migration
  def change
    create_table :iotlogin_viewmenus do |t|
      t.string :name
      t.string :description

      t.timestamps null: false
    end
  end
end

class DropNodeTable < ActiveRecord::Migration
  def up
    drop_table :nodes
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end

class AddIotonserverIdToNode < ActiveRecord::Migration
  def change
    add_column:nodes, :iotonserver_id, :integer
  end
end

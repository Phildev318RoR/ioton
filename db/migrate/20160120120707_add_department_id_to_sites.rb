class AddDepartmentIdToSites < ActiveRecord::Migration
  def change
    add_column :sites, :department_id, :integer
  end
end

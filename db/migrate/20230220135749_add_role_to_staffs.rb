class AddRoleToStaffs < ActiveRecord::Migration[7.0]
  def change
    add_column :staffs, :role, :integer, null: false, default: 0
  end
end

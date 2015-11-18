class DeleteFloors < ActiveRecord::Migration
  def change
    remove_column :houses, :floors, :integer
  end
end

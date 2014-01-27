class AddCapacityToGroupes < ActiveRecord::Migration
  def change
    add_column :groupes, :capacity, :integer
  end
end

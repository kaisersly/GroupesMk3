class AddStatusToGroupes < ActiveRecord::Migration
  def change
    add_column :groupes, :status, :string
  end
end

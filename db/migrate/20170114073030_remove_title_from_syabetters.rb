class RemoveTitleFromSyabetters < ActiveRecord::Migration
  def change
    remove_column :syabetteres, :title, :string
  end
end

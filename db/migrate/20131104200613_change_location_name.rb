class ChangeLocationName < ActiveRecord::Migration
  def change
      rename_column :ideas, :loaction, :location
  end
end

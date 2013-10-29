class AddSeasonToIdeas < ActiveRecord::Migration
  def change
    add_column :ideas, :season, :string
  end
end

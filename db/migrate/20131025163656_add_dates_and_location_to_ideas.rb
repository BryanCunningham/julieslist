class AddDatesAndLocationToIdeas < ActiveRecord::Migration
  def change
    add_column :ideas, :loaction, :string
    add_column :ideas, :date, :date
  end
end

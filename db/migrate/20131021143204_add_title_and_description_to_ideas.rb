class AddTitleAndDescriptionToIdeas < ActiveRecord::Migration
  def change
      add_column :ideas, :title, :string
      add_column :ideas, :description, :string
  end
end

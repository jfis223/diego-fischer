class AddRegionToProjects < ActiveRecord::Migration[6.0]
  def change
    add_column :projects, :region, :string
  end
end

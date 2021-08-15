class AddTrailerToProjects < ActiveRecord::Migration[6.0]
  def change
    add_column :projects, :trailer, :string
  end
end

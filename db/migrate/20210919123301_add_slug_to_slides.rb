class AddSlugToSlides < ActiveRecord::Migration[6.0]
  def change
    add_column :slides, :slug, :string
    add_index :slides, :slug, unique: true
  end
end

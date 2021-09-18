class AddLinkToSlides < ActiveRecord::Migration[6.0]
  def change
    add_column :slides, :link, :string
  end
end

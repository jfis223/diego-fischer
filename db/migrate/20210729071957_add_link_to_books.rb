class AddLinkToBooks < ActiveRecord::Migration[6.0]
  def change
    add_column :books, :link, :string
  end
end

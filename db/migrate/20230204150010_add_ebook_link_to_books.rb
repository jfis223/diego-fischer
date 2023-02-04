class AddEbookLinkToBooks < ActiveRecord::Migration[7.0]
  def change
    add_column :books, :ebook_link, :string
  end
end

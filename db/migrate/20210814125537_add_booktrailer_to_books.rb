class AddBooktrailerToBooks < ActiveRecord::Migration[6.0]
  def change
    add_column :books, :booktrailer, :string
  end
end

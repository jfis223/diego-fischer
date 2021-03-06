class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :year
      t.string :description
      t.string :awards
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

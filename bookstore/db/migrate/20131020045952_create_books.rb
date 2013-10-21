class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :name
      t.string :description
      t.string :price
      t.string :publisher
      t.string :publisherdate

      t.timestamps
    end
  end
end

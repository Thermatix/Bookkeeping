class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :day
      t.string :item
      t.string :ref
      t.string :in
      t.string :out
      t.references :shelf, month: true

      t.timestamps
    end
  end
end

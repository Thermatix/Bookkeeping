class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.datetime :transaction_date
      t.string :name
      t.string :reference
      t.string :in_amount
      t.string :out_amount

      t.timestamps
    end
  end
end

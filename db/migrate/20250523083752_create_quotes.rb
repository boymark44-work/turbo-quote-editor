class CreateQuotes < ActiveRecord::Migration[7.1]
  def change
    create_table :quotes do |t|
      # Adding null: false as a constraint to make sure that we will never store an empty name
      t.string :name, null: false 

      t.timestamps
    end
  end
end

class CreateTables < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :foo, null: false
    end

    create_table :items, id: false do |t|
      t.string :bar, null: false
    end
  end
end

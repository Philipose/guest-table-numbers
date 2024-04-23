class CreateFindTables < ActiveRecord::Migration[7.1]
  def change
    create_table :find_tables do |t|
      t.string :first_name
      t.string :last_name
      t.string :table_number
      t.string :related_names

      t.timestamps
    end
  end
end

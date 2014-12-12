class CreateFacts < ActiveRecord::Migration
  def change
  	create_table :facts do |t|
      t.string :name
      t.boolean :statement

      t.timestamps null: false
  end
end
end 
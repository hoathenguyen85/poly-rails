class CreateCats < ActiveRecord::Migration
  def change
    create_table :cats do |t|
      t.string :name
      t.text :description
      t.string :sex
      t.boolean :is_neuter

      t.timestamps null: false
    end
  end
end

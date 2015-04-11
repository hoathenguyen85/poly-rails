class CreateAttributes < ActiveRecord::Migration
  def change
    create_table :attributes do |t|
      t.references :attribute, polymorphic: true, index: true
      t.string :name
      t.string :sex
      t.boolean :is_neuter

      t.timestamps null: false
    end
  end
end

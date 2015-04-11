class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.references :describe, polymorphic: true, index: true
      t.text :description

      t.timestamps null: false
    end
  end
end

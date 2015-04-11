class CreateCatPolies < ActiveRecord::Migration
  def change
    create_table :cat_polies do |t|

      t.timestamps null: false
    end
  end
end

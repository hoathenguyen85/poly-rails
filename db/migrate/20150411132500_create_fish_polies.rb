class CreateFishPolies < ActiveRecord::Migration
  def change
    create_table :fish_polies do |t|

      t.timestamps null: false
    end
  end
end

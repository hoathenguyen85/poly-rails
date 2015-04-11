class CreateDogPolies < ActiveRecord::Migration
  def change
    create_table :dog_polies do |t|

      t.timestamps null: false
    end
  end
end

class CreateFish < ActiveRecord::Migration[5.2]
  def change
    create_table :fish do |t|

      t.timestamps
    end
  end
end

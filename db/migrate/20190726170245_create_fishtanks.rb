class CreateFishtanks < ActiveRecord::Migration[5.2]
  def change
    create_table :fishtanks do |t|

      t.timestamps
    end
  end
end

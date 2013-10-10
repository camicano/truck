class CreateTrucks < ActiveRecord::Migration
  def change
    create_table :trucks do |t|
      t.string :name
      t.string :type_of_food

      t.timestamps
    end
  end
end

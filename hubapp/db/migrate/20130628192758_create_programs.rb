class CreatePrograms < ActiveRecord::Migration
  def change
    create_table :programs do |t|
      t.string :organization_name
      t.string :location
      t.string :type_of_training

      t.timestamps
    end
  end
end

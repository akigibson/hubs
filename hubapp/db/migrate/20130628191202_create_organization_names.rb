class CreateOrganizationNames < ActiveRecord::Migration
  def change
    create_table :organization_names do |t|
      t.string :location
      t.string :type_of_training

      t.timestamps
    end
  end
end

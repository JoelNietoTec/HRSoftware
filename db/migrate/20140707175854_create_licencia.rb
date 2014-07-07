class CreateLicencia < ActiveRecord::Migration
  def change
    create_table :licencia do |t|
      t.string :tipo
      t.string :vehiculo

      t.timestamps
    end
  end
end

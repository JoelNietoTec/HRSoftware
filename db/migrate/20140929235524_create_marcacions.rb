class CreateMarcacions < ActiveRecord::Migration
  def change
    create_table :marcacions do |t|
      t.string :departament
      t.string :name
      t.string :no
      t.datetime :date
      t.string :location
      t.string :id_number
      t.string :verify_code
      t.string :card_no

      t.timestamps
    end
  end
end

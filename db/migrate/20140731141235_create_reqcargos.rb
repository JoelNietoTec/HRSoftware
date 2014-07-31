class CreateReqcargos < ActiveRecord::Migration
  def change
    create_table :reqcargos do |t|
      t.integer :cargo_id
      t.string :nomrequis
      t.boolean :lactivo

      t.timestamps
    end
  end
end

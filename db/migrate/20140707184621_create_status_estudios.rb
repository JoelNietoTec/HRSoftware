class CreateStatusEstudios < ActiveRecord::Migration
  def change
    create_table :status_estudios do |t|
      t.string :nombre
      t.boolean :finalizado

      t.timestamps
    end
  end
end

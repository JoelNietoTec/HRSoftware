class CreateNivelEstudios < ActiveRecord::Migration
  def change
    create_table :nivel_estudios do |t|
      t.string :nombre

      t.timestamps
    end
  end
end

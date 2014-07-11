class CreateNivelIdiomas < ActiveRecord::Migration
  def change
    create_table :nivel_idiomas do |t|
      t.string :nombre

      t.timestamps
    end
  end
end

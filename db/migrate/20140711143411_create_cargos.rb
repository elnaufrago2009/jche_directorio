class CreateCargos < ActiveRecord::Migration
  def change
    create_table :cargos do |t|
      t.string :nombre
      t.text :descripcion

      t.timestamps
    end
  end
end

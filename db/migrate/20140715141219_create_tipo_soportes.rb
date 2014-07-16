class CreateTipoSoportes < ActiveRecord::Migration
  def change
    create_table :tipo_soportes do |t|
      t.string :nombre
      t.text :descripcion

      t.timestamps
    end
  end
end

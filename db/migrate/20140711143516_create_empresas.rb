class CreateEmpresas < ActiveRecord::Migration
  def change
    create_table :empresas do |t|
      t.string :nombre
      t.text :descripcion

      t.timestamps
    end
  end
end

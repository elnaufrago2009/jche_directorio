class CreateReclamos < ActiveRecord::Migration
  def change
    create_table :reclamos do |t|

      t.string :nombre
      t.text :descripcion
      t.integer :tiked_id

      t.timestamps
    end
  end
end

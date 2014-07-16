class CreateComentarios < ActiveRecord::Migration
  def change
    create_table :comentarios do |t|
      t.integer :tiked_id
      t.integer :user_id
      t.integer :admin_id
      t.text :content

      t.timestamps
    end
  end
end

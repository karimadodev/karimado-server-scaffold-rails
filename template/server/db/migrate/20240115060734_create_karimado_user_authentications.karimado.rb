# This migration comes from karimado (originally 20240101092045)
class CreateKarimadoUserAuthentications < ActiveRecord::Migration[7.1]
  def change
    create_table :karimado_user_authentications do |t|
      t.string :provider, null: false
      t.string :uid, null: false

      t.references :user, null: false, foreign_key: false

      t.timestamps
    end

    add_index :karimado_user_authentications, %i[user_id provider], unique: true
    add_index :karimado_user_authentications, %i[provider uid], unique: true
  end
end

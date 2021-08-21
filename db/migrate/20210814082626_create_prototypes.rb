class CreatePrototypes < ActiveRecord::Migration[6.0]
  def change
    create_table :prototypes do |t|
      t.string :prototype,    null:false, default: ""
      t.text   :catch_copy
      t.text   :concept
      t.text   :image
      t.references  :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

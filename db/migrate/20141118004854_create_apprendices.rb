class CreateApprendices < ActiveRecord::Migration
  def change
    create_table :apprendices do |t|
      t.string :name
      t.string :warname
      t.attachment :photo
      t.text :allergy
      t.text :medicines
      t.text :obsevation

      t.timestamps
    end
  end
end

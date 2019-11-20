class CreateProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :email
      t.string :year
      t.string :major
      t.text :philosophy
      t.text :courses
      t.text :about

      t.timestamps
    end
  end
end

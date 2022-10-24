class CreateGrades < ActiveRecord::Migration[6.0]
  def change
    create_table :grades do |t|
      t.string :result
      t.integer :rate
      t.string :title

      t.timestamps
    end
  end
end

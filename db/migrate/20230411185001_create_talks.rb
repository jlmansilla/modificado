class CreateTalks < ActiveRecord::Migration[7.0]
  def change
    create_table :talks do |t|
      t.text :body
      t.references :lead, null: false, foreign_key: true

      t.timestamps
    end
  end
end

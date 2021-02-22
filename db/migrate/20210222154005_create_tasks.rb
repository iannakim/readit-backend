class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :skill
      t.string :prompt
      t.belongs_to :article, null: false, foreign_key: true

      t.timestamps
    end
  end
end

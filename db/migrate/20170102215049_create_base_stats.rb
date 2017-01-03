#
class CreateBaseStats < ActiveRecord::Migration[5.0]
  def change
    create_table :base_stats do |t|
      t.references :heroes, index: true, foreign_key: true
      t.integer :health
      t.integer :armor
      t.integer :sheild

      t.timestamps
    end
  end
end

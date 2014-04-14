class CreateArduinos < ActiveRecord::Migration
  def change
    create_table :arduinos do |t|
      t.integer :position

      t.timestamps
    end
  end
end

class CreateExampleRecord234s < ActiveRecord::Migration
  def change
    create_table :example_record234s do |t|

      t.timestamps null: false
    end
  end
end

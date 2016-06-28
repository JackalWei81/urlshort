class CreateMappings < ActiveRecord::Migration
  def change
    create_table :mappings do |t|

      t.string :longurl
      t.string :shotrurl
      t.integer :connect_counts, :default => 0

      t.timestamps null: false
    end
  end
end

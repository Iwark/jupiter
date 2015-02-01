class CreateUnits < ActiveRecord::Migration
  def change
    create_table :units do |t|
      t.references :user, index: true
      t.references :job, index: true, default: 1
      t.references :field, index: true
      t.string  :type, null: false, index: true
      t.string :name, null: false
      t.string :image
      t.integer :str, default: 1
      t.integer :int, default: 1
      t.integer :dex, default: 1
      t.integer :vit, default: 1
      t.integer :luk, default: 1
      t.integer :ego, default: 1
      t.integer :present_hp, default: 400
      t.integer :max_hp, default: 400
      t.integer :condition, default: 0
      t.integer :exp, default: 0
      t.integer :level, default: 1
      t.integer :gold, default: 500
      t.integer :wins, default: 0
      t.integer :continuous_wins, default: 0
      t.integer :status_points, default: 4

      t.timestamps

      t.index :type
    end
  end
end

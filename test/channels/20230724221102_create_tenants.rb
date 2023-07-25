class CreateTenants < ActiveRecord::Migration[7.0]
  def change
    create_table :tenants do |t|
      t.string :name, limit: 60
      t.uuid :key, null: false, default: 'gen_random_uuid()'
      t.timestamps
      t.index :key, unique: true
    end
  end
end

class CreateTenantUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :tenant_users do |t|
      t.references :user, null: false
      t.references :tenant, null: false
      t.datetime :discarded_at
      t.timestamps
      t.index :discarded_at
    end
    add_index :tenant_users, %i[user_id tenant_id], unique: true
  end
end

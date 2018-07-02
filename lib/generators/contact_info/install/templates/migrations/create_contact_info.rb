class CreateContactInfo < ActiveRecord::Migration<%= migration_version %>
  def change
    create_table :contact_info do |t|
      t.string    :owner_id, null: false
      t.string    :owner_type, null: false
      t.string    :type, null: false
      t.string    :value

      t.timestamps null: false
    end
  end
end
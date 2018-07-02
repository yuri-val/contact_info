class CreateContactInfo < ActiveRecord::Migration[5.2]
  def change
    create_table :contact_info do |t|
      t.string    :owner_id, null: false
      t.string    :owner_type, null: false
      t.string    :type
      t.string    :value
      t.timestamps null: false
    end
  end
end
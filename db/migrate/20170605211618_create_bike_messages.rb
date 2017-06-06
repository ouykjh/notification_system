class CreateBikeMessages < ActiveRecord::Migration[5.1]
  def change
    create_table :bike_messages do |t|
      t.string :client_id,  null: false, default: ''
      t.string :message,    null: false, default: ''
      t.timestamps
    end
  end
end

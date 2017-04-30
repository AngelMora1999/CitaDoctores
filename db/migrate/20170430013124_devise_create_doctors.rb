class DeviseCreateDoctors < ActiveRecord::Migration[5.0]
  def change
    create_table :doctors do |t|
      ## Database authenticatable
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable
      t.integer  :sign_in_count, default: 0, null: false
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.string   :current_sign_in_ip
      t.string   :last_sign_in_ip

      #Datos personales
      t.attachment :avatar
      t.string :identification_card
      t.string :abbreviation
      t.string :first_name
      t.string :second_name
      t.string :surname
      t.string :second_surname
      t.datetime :birth_date
      t.datetime :doctor_since
      t.integer :visit_count, default: 0
      t.string :status
      t.string :notion
      t.references :clinic, foreign_key: true
      t.references :consulting_room, foreign_key: true

      #Contacto
      t.string :state
      t.string :city
      t.string :address
      t.string :phone
      t.string :cell_phone

      ## Confirmable
      # t.string   :confirmation_token
      # t.datetime :confirmed_at
      # t.datetime :confirmation_sent_at
      # t.string   :unconfirmed_email # Only if using reconfirmable

      ## Lockable
      # t.integer  :failed_attempts, default: 0, null: false # Only if lock strategy is :failed_attempts
      # t.string   :unlock_token # Only if unlock strategy is :email or :both
      # t.datetime :locked_at


      t.timestamps null: false
    end

    add_index :doctors, :email,                unique: true
    add_index :doctors, :reset_password_token, unique: true
    # add_index :doctors, :confirmation_token,   unique: true
    # add_index :doctors, :unlock_token,         unique: true
  end
end
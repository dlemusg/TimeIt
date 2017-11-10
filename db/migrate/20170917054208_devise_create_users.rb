class DeviseCreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      ## Database authenticatable
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""
      t.string :idd,            null:false, default: "", unique:true

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

      ## Confirmable
      # t.string   :confirmation_token
      # t.datetime :confirmed_at
      # t.datetime :confirmation_sent_at
      # t.string   :unconfirmed_email # Only if using reconfirmable

      ## Lockable
      # t.integer  :failed_attempts, default: 0, null: false # Only if lock strategy is :failed_attempts
      # t.string   :unlock_token # Only if unlock strategy is :email or :both
      # t.datetime :locked_at

      #additional parts (all users)

      #t.string  :userName,      null:false, default: "" debe eliminarse de la bd
      t.integer :calification
      t.string  :typeId,        null:false, default: ""
      t.string  :firstName,      null:false, default: ""
      t.string  :secondName,      default: ""
      t.string  :firstLastName,      null:false, default: ""
      t.string  :secondLastName,     default: ""
      t.date    :birthDate,        null:false
      t.string  :tel,           null:false, default: ""
      t.string  :cel


      #this is part of user comun
      t.boolean :verified,      null:false, default: false
      t.attachment  :photo
      t.attachment  :photoId1
      t.attachment  :photoId2
      t.integer :time,           null:false, default: 0
      t.string  :location,       null:false, default: ""
      t.string  :direccion,      null:false, default:""
      t.string  :description
      t.integer :calification,           null:false, default: 0


      t.timestamps null: false
    end

    add_index :users, :email,                unique: true
    add_index :users, :reset_password_token, unique: true
    # add_index :users, :confirmation_token,   unique: true
    # add_index :users, :unlock_token,         unique: true
  end
end

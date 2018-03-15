class ChangePhoneNumberToStringInAppointments < ActiveRecord::Migration[5.1]
  def change
    change_column :appointments, :phone_number, :string
  end
end

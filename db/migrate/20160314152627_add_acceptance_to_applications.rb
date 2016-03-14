class AddAcceptanceToApplications < ActiveRecord::Migration
  def change
    add_column :applications, :acceptance, :boolean, default: false
  end
end

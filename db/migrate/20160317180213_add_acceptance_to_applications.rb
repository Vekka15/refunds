class AddAcceptanceToApplications < ActiveRecord::Migration
  def change
    add_column :applications, :acceptance, :boolean
  end
end

class DeleteTimeOnApplications < ActiveRecord::Migration
  def change
    remove_column :applications, :time
  end
end

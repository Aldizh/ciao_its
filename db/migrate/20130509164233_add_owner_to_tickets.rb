class AddOwnerToTickets < ActiveRecord::Migration
  change_table(:tickets) do |t|
    t.string :owner
  end
end

class AddDescriptionToHowtos < ActiveRecord::Migration
  change_table(:howtos) do |t|
    t.string :description
  end
end

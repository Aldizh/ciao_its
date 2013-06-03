class AddDescriptionToAbout < ActiveRecord::Migration
  change_table(:abouts) do |t|
    t.string :description
  end
end

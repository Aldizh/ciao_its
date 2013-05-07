class AddCommenterToComments < ActiveRecord::Migration
  change_table(:comments) do |t|
    t.string :commenter
  end
end

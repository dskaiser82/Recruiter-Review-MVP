class AddAboutToAgencies < ActiveRecord::Migration
  def change
    add_column :agencies, :about, :text
  end
end

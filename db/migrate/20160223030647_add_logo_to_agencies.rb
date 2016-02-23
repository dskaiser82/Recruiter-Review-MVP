class AddLogoToAgencies < ActiveRecord::Migration
  def change
    add_column :agencies, :logo, :string
  end
end

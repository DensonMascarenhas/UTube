class AddLinkToVideo < ActiveRecord::Migration[7.0]
  def change
    add_column :videos, :link, :string, null: false
  end
end

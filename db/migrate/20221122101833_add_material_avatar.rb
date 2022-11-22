class AddMaterialAvatar < ActiveRecord::Migration[7.0]
  def change
    add_column :materials, :materialIcon, :string
  end
end

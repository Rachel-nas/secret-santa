class AddNameAndEmailToParticipants < ActiveRecord::Migration[6.1]
  def change
    add_column :participants, :name, :string
    add_column :participants, :email, :string
  end
end

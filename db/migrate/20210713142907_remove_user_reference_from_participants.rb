class RemoveUserReferenceFromParticipants < ActiveRecord::Migration[6.1]
  def change
    remove_column :participants, :user_id
  end
end

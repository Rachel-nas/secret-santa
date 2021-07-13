class AddSecretsantaidToParticipants < ActiveRecord::Migration[6.1]
  def change
    add_column :participants, :secret_santa_id, :integer
  end
end

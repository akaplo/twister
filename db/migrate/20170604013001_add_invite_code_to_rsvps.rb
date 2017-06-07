class AddInviteCodeToRsvps < ActiveRecord::Migration[5.1]
  def change
    add_column :rsvps, :invite_code, :string
  end
end

class CreateVotes < ActiveRecord::Migration
  def self.up
    create_table :votes do |t|
      t.references :question
      t.string :selected_option

      t.timestamps
    end
  end

  def self.down
    drop_table :votes
  end
end

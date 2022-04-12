class AddRanks < ActiveRecord::Migration[6.1]
  def change
    add_column :all_days, :rank, :integer
    add_column :all_months, :Rank, :integer
    add_column :all_year, :Rank, :integer
    add_column :all_ruikeis, :Rank, :integer
  end
end

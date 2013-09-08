class AddYearToWines < ActiveRecord::Migration
  def change
    add_column :wines, :year, :integer
  end
end

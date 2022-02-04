class ChangePublishedDateToDate < ActiveRecord::Migration[6.1]
  def change
    rename_column :books, :published_date, :date
  end
end

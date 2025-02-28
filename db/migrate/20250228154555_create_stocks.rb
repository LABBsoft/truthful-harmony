class CreateStocks < ActiveRecord::Migration[7.0]
  def change
    create_table :stocks do |t|
      t.string :ticker
      t.string :company_name
      t.string :index
      t.string :sector
      t.integer :market_cap
      t.decimal :dividend_yield
      t.decimal :pe_ratio
      t.decimal :premium_discount

      t.timestamps

      t.index :ticker, unique: true
      t.index :sector
    end
  end
end

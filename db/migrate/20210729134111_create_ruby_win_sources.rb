class CreateRubyWinSources < ActiveRecord::Migration[6.1]
  def change
    create_table :ruby_win_sources do |t|
      t.string :name
      t.string :author
      t.string :url

      t.timestamps
    end
  end
end

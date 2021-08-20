class HomeController < ApplicationController
  def index
    result = ActiveRecord::Base.connection.execute('SELECT * FROM information_schema.tables')
    @table_data = result.to_a.first
  end
end

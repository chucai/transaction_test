require 'rubygems'
require 'mysql2'
require 'active_record'

CONFIG = {
  :db_a => {
    :username => 'xdhe',
    :password => "1qaz2wsx",
    :database => "research_a",
    :adapter  => "mysql2",
    :encoding => 'utf8'
  },

  :db_b => {
    :username => 'xdhe',
    :password => "1qaz2wsx",
    :database => "research_b",
    :adapter  => "mysql2",
    :encoding => 'utf8'
  }
}
ActiveRecord::Base.establish_connection(CONFIG[:db_a])
ActiveRecord::Base.pluralize_table_names =  false


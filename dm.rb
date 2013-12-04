#require 'dm-core'
#require 'dm-timestamps'
#require 'dm-validations'
#require 'dm-migration'
#
##DataMapper.setup :default, 'mysql://#{Dir.pwd}/database.db'
#
#DataMapper.setup(:default, 'mysql://root:mysqlz@localhost/ruby_store_development')
#
#
#class User
#  include DataMapper::Resource
#
#  property :id       , Serial
#  property :username , String
#  property :email    , String
#end
#
#
#
#DataMapper.auto_migrate!
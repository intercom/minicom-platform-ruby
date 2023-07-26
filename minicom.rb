require 'rubygems'
require 'bundler/setup'
Bundler.require(:default)

intercom = Intercom::Client.new(token: 'test', api_version: '2.9')

begin
  p intercom.contacts.find(id: "1")
rescue Intercom::AuthenticationError
  p "All set!"
end


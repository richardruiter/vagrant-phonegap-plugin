begin
  require 'vagrant'
rescue LoadError
  raise 'The protobox plugin must be run within Vagrant.'
end

# sanity check 
if Vagrant::VERSION < "1.5.0"
  raise 'The protobox plugin is only compatible with Vagrant 1.5+'
end

require "phonegap/version"

module VagrantPlugins
	module Phonegap
		class Phonegap < Vagrant.plugin("2")
		  name "Phonegap"
		  
		  command "phonegap" do
			require_relative 'command/root'
			Command::Root
		  end
		  
		end
	end
end

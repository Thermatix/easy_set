require "./easy_set/version"

require 'yaml'
module Easy_Set

	module Singleton_Methods

		def [](key)
			@store[key]
		end

		def display
			@store.inspect
		end

		def generate_rand_string(length=nil)
			o = [('a'..'z'), ('A'..'Z')].map { |i| i.to_a }.flatten
	    return (0...(length||32)).map { o[rand(o.length)] }.join
		end

		def load_config_from path
			@store[:config] = YAML.load_file(path)
		end

    def to_s
      @store.each do |key,value|
        puts "#{key}: #{value.to_s}"
      end
      puts ""
    end

		private
			def set key, value
				@store[key] = value
			end

	end


	def self.included(child)
		child.instance_variable_set(:@store, {})
		child.extend(Singleton_Methods)
	end

	def self.includes_hooks?
    	%w(inherited)
	end
end

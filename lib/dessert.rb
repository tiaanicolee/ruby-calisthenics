class Dessert
	attr_accessor :name, :calories
	
	def initialize(name, calories)
		@name = name
		@calories = calories
	end
	
	#return true iff a dessert is less than 200 calories
	def healthy?
		@calories < 200
	end
	
	#returns true for all desserts
	def delicious?
		true
	end
end

class JellyBean < Dessert
	attr_accessor :flavor
	
	def initialize(flavor)
		@flavor = flavor
		@calories = 5
		@name = flavor + " jelly bean"
	end
	
	#return false if flavor is licorice, but true for all other flavors
	def delicious?
		@flavor != "licorice"
	end
end
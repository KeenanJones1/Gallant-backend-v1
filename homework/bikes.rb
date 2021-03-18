# chainring = 52  
# number of teeth on a bicycle gear 

# cog = 11

# ratio = chainring / cog.to_f
# puts ratio

# chainring2 = 30 
# cog2 = 27 
# ratio2 = chainring2 / cog2.to_f
# puts ratio2

# Let's create a ruby application to calculate gear ratios 

# Look for nouns that represent objects of the domain are the simpliest candiates to be classes

# In the description for this application, intuition says bicycle should be a class, but nothing lists out the behaviors of a Bike so it doesn't qualify for right now. 

# Gear has: chainring, cogs and ratio these are both data and behavior 
class Gear 
 attr_reader :chainring, :cog, :rim, :tire

 def initialize(chainring, cog, rim, tire )
   @chainring = chainring
   @cog = cog
   @tire = tire
   @rim = rim
 end

 def ratio
   chainring / cog.to_f
 end

 def gear_inches
  ratio * (rim + (tires * 2)
 end

end


# The below code breaks because we added the rim and tire args to the init of Gear. 
# This shows that at some point the Gear class needs to be changed, and could be the first in a long list of classes that will have to change as we move along. 
puts Gear.new(52, 11).ratio
puts Gear.new(30, 27).ratio
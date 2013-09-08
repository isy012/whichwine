class VineyardsController < ApplicationController

	def show
		if params[:x] == nil then 
			x = "emptysearch"
		else 
			x = params[:x]
		end
		
		@vineyards = []
		@vineyards << "Beringer"
		@vineyards << "Peju"
		@vineyards << "Domain Chandon"
		@vineyards << "Cakebread Cellars"

		@vineyards.each do |vineyard|
			if (x == vineyard) then 
				@vineyards << "Match Found" 
			else 
				@vineyards << x
			end
		end


	end

end

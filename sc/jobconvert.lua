function jobType( jobType ) -- converts to a jobs name(BRD, RNG, MNK, WAR, PUP) instead of a number
    local jobList = 
    { 
		"WAR", "MNK", "WHM", "BLM", "RDM", "THF",
		"PLD", "DRK", "BST", "BRD", "RNG", "SAM",
		"NIN", "DRG", "SMN", "BLU", "COR", "PUP",
		"DNC", "SCH", "GEO", "RUN",
    }; 
	if (tonumber(jobType) ~= nil) then
		for k,v in pairs(jobList) do
			if (jobType == k) then return v; end		
		end	
	end
	return nil;
end
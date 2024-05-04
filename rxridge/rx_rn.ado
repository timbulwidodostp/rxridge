program define rx_rn
	version 6
	tokenize `"`0'"', parse(" =")
	args subcmd name eq
	mac shift 3
	local i 1 
	while "``i''" != "" {
		local `i' : subinstr local `i' "." "_", all
		local i = `i' + 1
	}
	matrix `subcmd' `name' `eq' `*'
end
		

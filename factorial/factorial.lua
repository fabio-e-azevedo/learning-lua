function Fat (n)
	if n==0 then
		return 1
	else
		return n*Fat(n-1)
	end
end

local a = 5
print(Fat(a))

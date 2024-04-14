function fat (n)
	if n==0 then
		return 1
	else
		return n*fat(n-1)
	end
end

local a = 5
print(fat(a))

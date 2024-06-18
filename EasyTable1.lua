-- EasyTable Module with Warnings
local EasyTable = {}

-- Function to create a new table
function EasyTable:CreateTable()
	local newTable = {}
	return newTable
end

-- Function to add an element to the table
function EasyTable:AddElement(tbl, element : any)
	if type(tbl) ~= "table" then
		warn("AddElement: First argument must be a table")
		return
	end
	table.insert(tbl, element)
end

-- Function to remove an element from the table by value
function EasyTable:RemoveElement(tbl, element : any)
	if type(tbl) ~= "table" then
		warn("RemoveElement: First argument must be a table")
		return
	end
	local found = false
	for i, v in ipairs(tbl) do
		if v == element then
			table.remove(tbl, i)
			found = true
			break
		end
	end
	if not found then
		warn("RemoveElement: Element not found in table", element)
	end
end

-- Function to remove an element from the table by index
function EasyTable:RemoveElementByIndex(tbl, index)
	if type(tbl) ~= "table" then
		warn("RemoveElementByIndex: First argument must be a table")
		return
	end
	if type(index) ~= "number" then
		warn("RemoveElementByIndex: Index must be a number")
		warn("Please make sure that it's not empty.")
		return
	end
	if index < 1 or index > #tbl then
		warn("RemoveElementByIndex: Index out of range")
		return
	end
	table.remove(tbl, index)
end

-- Function to get an element from the table by index
function EasyTable:GetElement(tbl, index)
	if type(tbl) ~= "table" then
		warn("GetElement: First argument must be a table")
		return nil
	end
	if type(index) ~= "number" then
		warn("GetElement: Index must be a number")
		warn("Please make sure that it's not empty.")
		return nil
	end
	if index < 1 or index > #tbl then
		warn("GetElement: Index out of range")
		return nil
	end
	return tbl[index]
end

-- Function to get the length of the table
function EasyTable:GetLength(tbl)
	if type(tbl) ~= "table" then
		warn("GetLength: Argument must be a table")
		return nil
	end
	return #tbl
end

-- Function to print all elements in the table
function EasyTable:PrintTable(tbl)
	if type(tbl) ~= "table" then
		warn("PrintTable: Argument must be a table")
		return
	end
	for i, v in ipairs(tbl) do
		print(i, v)
	end
end

return EasyTable
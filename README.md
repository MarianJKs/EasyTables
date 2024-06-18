# ABOUT
EasyTables is a module that is made to help and ease on making modules.

_NOTE_ EasyTables is mostly useless and should not be used as learning on how tables works is pretty easy.

_NOTE_ Creating Elements inside a Table using EasyTables is cluttered.

# Example
Here is an example code on using EasyTables
```lua
local EasyTables = "Path to EasyTables"

local newTable = EasyTables:CreateTable()
-- Add elements to the table
easyTable:AddElement(newTable, "Apple")

easyTable:PrintTable(newTable)
```

# X-INFO

```lua
EasyTables:CreateTable()
```
Creates an empty table.
```lua
EasyTable:AddElement(tbl, element : any)
```
Add an element inside the given table, can be a string, number, table, etc.
```lua
EasyTable:RemoveElement(tbl, element : any)
```
Removes an element inside the given table.
```lua
EasyTable:RemoveElementByIndex(tbl, index)
```
Removes an element inside a table using an index.
```lua
EasyTable:GetElement(tbl, index)
```
Returns a element inside the given table using an index.
```lua
EasyTable:GetLength(tbl)
```
Returns the given tables length.
```lua
EasyTable:PrintTable(tbl)
```
Prints out a given table.

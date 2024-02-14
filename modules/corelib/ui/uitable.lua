﻿-- chunkname: @/modules/corelib/ui/uitable.lua

TABLE_SORTING_ASC = 0
TABLE_SORTING_DESC = 1
UITable = extends(UIWidget, "UITable")

function UITable.create()
	local table = UITable.internalCreate()

	table.headerRow = nil
	table.headerColumns = {}
	table.dataSpace = nil
	table.rows = {}
	table.rowBaseStyle = nil
	table.columns = {}
	table.columnWidth = {}
	table.columBaseStyle = nil
	table.headerRowBaseStyle = nil
	table.headerColumnBaseStyle = nil
	table.selectedRow = nil
	table.defaultColumnWidth = 80
	table.sortColumn = -1
	table.sortType = TABLE_SORTING_ASC
	table.autoSort = false

	return table
end

function UITable:onDestroy()
	for _, row in pairs(self.rows) do
		row.onClick = nil
	end

	self.rows = {}
	self.columns = {}
	self.headerRow = nil
	self.headerColumns = {}
	self.columnWidth = {}
	self.selectedRow = nil

	if self.dataSpace then
		self.dataSpace:destroyChildren()

		self.dataSpace = nil
	end
end

function UITable:onSetup()
	local header = self:getChildById("header")

	if header then
		self:setHeader(header)
	end
end

function UITable:onStyleApply(styleName, styleNode)
	for name, value in pairs(styleNode) do
		if value ~= false then
			if name == "table-data" then
				addEvent(function()
					self:setTableData(self:getParent():getChildById(value))
				end)
			elseif name == "column-style" then
				addEvent(function()
					self:setColumnStyle(value)
				end)
			elseif name == "row-style" then
				addEvent(function()
					self:setRowStyle(value)
				end)
			elseif name == "header-column-style" then
				addEvent(function()
					self:setHeaderColumnStyle(value)
				end)
			elseif name == "header-row-style" then
				addEvent(function()
					self:setHeaderRowStyle(value)
				end)
			end
		end
	end
end

function UITable:setColumnWidth(width)
	if self:hasHeader() then
		return
	end

	self.columnWidth = width
end

function UITable:setDefaultColumnWidth(width)
	self.defaultColumnWidth = width
end

function UITable:hasHeader()
	return self.headerRow ~= nil
end

function UITable:clearData()
	if not self.dataSpace then
		return
	end

	self.dataSpace:destroyChildren()

	self.selectedRow = nil
	self.columns = {}
	self.rows = {}
end

function UITable:setHeader(headerWidget)
	self:removeHeader()

	if self.dataSpace then
		local newHeight = self.dataSpace:getHeight() - self.headerRow:getHeight() - self.dataSpace:getMarginTop()

		self.dataSpace:applyStyle({
			height = newHeight
		})
	end

	self.headerColumns = {}
	self.columnWidth = {}

	for colId, column in pairs(headerWidget:getChildren()) do
		column.colId = colId
		column.table = self

		table.insert(self.columnWidth, column:getWidth())
		table.insert(self.headerColumns, column)
	end

	self.headerRow = headerWidget
end

function UITable:addHeader(data)
	if not data or type(data) ~= "table" then
		g_logger.error("UITable:addHeaderRow - table columns must be provided in a table")

		return
	end

	self:removeHeader()

	local columns = {}

	for colId, column in pairs(data) do
		local baseStyle = column.style or self.headerColumnBaseStyle
		local col = g_ui.createWidget(baseStyle)

		col.colId = colId
		col.table = self

		for type, value in pairs(column) do
			if type == "width" then
				col:setWidth(value)
			elseif type == "height" then
				col:setHeight(value)
			elseif type == "text" then
				col:setText(value)
			elseif type == "onClick" then
				col.soundClick = true
				col.onClick = value
			end
		end

		table.insert(columns, col)
	end

	local headerRow = g_ui.createWidget(self.headerRowBaseStyle, self)
	local newHeight = self.dataSpace:getHeight() - headerRow:getHeight() - self.dataSpace:getMarginTop()

	self.dataSpace:applyStyle({
		height = newHeight
	})
	headerRow:setId("header")

	self.headerColumns = {}
	self.columnWidth = {}

	for _, column in pairs(columns) do
		headerRow:addChild(column)
		table.insert(self.columnWidth, column:getWidth())
		table.insert(self.headerColumns, column)
	end

	self.headerRow = headerRow

	return headerRow
end

function UITable:removeHeader()
	if self:hasHeader() then
		if self.dataSpace then
			local newHeight = self.dataSpace:getHeight() + self.headerRow:getHeight() + self.dataSpace:getMarginTop()

			self.dataSpace:applyStyle({
				height = newHeight
			})
		end

		self.headerColumns = {}
		self.columnWidth = {}

		self.headerRow:destroy()

		self.headerRow = nil
	end
end

function UITable:addRow(data, height)
	if not self.dataSpace then
		g_logger.error("UITable:addRow - table data space has not been set, cannot add rows.")

		return
	end

	if not data or type(data) ~= "table" then
		g_logger.error("UITable:addRow - table columns must be provided in a table.")

		return
	end

	local row = g_ui.createWidget(self.rowBaseStyle)

	row.table = self

	if height then
		row:setHeight(height)
	end

	local rowId = #self.rows + 1

	row.rowId = rowId

	row:setId("row" .. rowId)
	row:updateBackgroundColor()

	self.columns[rowId] = {}

	for colId, column in pairs(data) do
		local col

		if not column.widget then
			col = g_ui.createWidget(self.columBaseStyle, row)
		else
			col = column.widget

			col:setParent(row)
		end

		col:setId("col" .. colId)

		if column.width then
			col:setWidth(column.width)
		else
			col:setWidth(self.columnWidth[colId] or self.defaultColumnWidth)
		end

		if column.height then
			col:setHeight(column.height)
		end

		if column.text then
			col:setText(column.text)
		end

		if column.sortvalue then
			col.sortvalue = column.sortvalue
		else
			col.sortvalue = column.text or 0
		end

		table.insert(self.columns[rowId], col)
	end

	self.dataSpace:addChild(row)
	table.insert(self.rows, row)

	if self.autoSort then
		self:sort()
	end

	return row
end

function UITable:updateRows()
	for rowId = 1, #self.rows do
		local row = self.rows[rowId]

		row.rowId = rowId

		row:setId("row" .. rowId)
		row:updateBackgroundColor()
	end
end

function UITable:removeRow(row)
	if self.selectedRow == row then
		self:selectRow(nil)
	end

	row.onClick = nil
	row.table = nil

	table.remove(self.columns, row.rowId)
	table.remove(self.rows, row.rowId)
	self.dataSpace:removeChild(row)
	self:updateRows()
end

function UITable:toggleSorting(enabled)
	self.autoSort = enabled
end

function UITable:setSorting(colId, sortType)
	self.headerColumns[colId]:focus()

	if sortType then
		self.sortType = sortType
	elseif self.sortColumn == colId then
		if self.sortType == TABLE_SORTING_ASC then
			self.sortType = TABLE_SORTING_DESC
		else
			self.sortType = TABLE_SORTING_ASC
		end
	else
		self.sortType = TABLE_SORTING_ASC
	end

	self.sortColumn = colId
end

function UITable:sort()
	if self.sortColumn <= 0 then
		return
	end

	if self.sortType == TABLE_SORTING_ASC then
		table.sort(self.rows, function(rowA, b)
			return rowA:getChildByIndex(self.sortColumn).sortvalue < b:getChildByIndex(self.sortColumn).sortvalue
		end)
	else
		table.sort(self.rows, function(rowA, b)
			return rowA:getChildByIndex(self.sortColumn).sortvalue > b:getChildByIndex(self.sortColumn).sortvalue
		end)
	end

	if self.dataSpace then
		for _, child in pairs(self.dataSpace:getChildren()) do
			self.dataSpace:removeChild(child)
		end
	end

	self:updateRows()

	self.columns = {}

	for _, row in pairs(self.rows) do
		if self.dataSpace then
			self.dataSpace:addChild(row)
		end

		self.columns[row.rowId] = {}

		for _, column in pairs(row:getChildren()) do
			table.insert(self.columns[row.rowId], column)
		end
	end
end

function UITable:selectRow(selectedRow)
	if selectedRow == self.selectedRow then
		return
	end

	local previousSelectedRow = self.selectedRow

	self.selectedRow = selectedRow

	if previousSelectedRow then
		previousSelectedRow:setChecked(false)
	end

	if selectedRow then
		selectedRow:setChecked(true)
	end

	signalcall(self.onSelectionChange, self, selectedRow, previousSelectedRow)
end

function UITable:setTableData(tableData)
	local headerHeight = 0

	if self.headerRow then
		headerHeight = self.headerRow:getHeight()
	end

	self.dataSpace = tableData

	self.dataSpace:applyStyle({
		height = self:getHeight() - headerHeight - self:getMarginTop()
	})
end

function UITable:setRowStyle(style, dontUpdate)
	self.rowBaseStyle = style

	if not dontUpdate then
		for _, row in pairs(self.rows) do
			row:setStyle(style)
		end
	end
end

function UITable:setColumnStyle(style, dontUpdate)
	self.columBaseStyle = style

	if not dontUpdate then
		for _, columns in pairs(self.columns) do
			for _, col in pairs(columns) do
				col:setStyle(style)
			end
		end
	end
end

function UITable:setHeaderRowStyle(style)
	self.headerRowBaseStyle = style

	if self.headerRow then
		self.headerRow:setStyle(style)
	end
end

function UITable:setHeaderColumnStyle(style)
	self.headerColumnBaseStyle = style

	for _, col in pairs(self.headerColumns) do
		col:setStyle(style)
	end
end

UITableRow = extends(UIWidget, "UITableRow")

function UITableRow:onFocusChange(focused)
	if focused and self.table then
		self.table:selectRow(self)
	end
end

function UITableRow:onStyleApply(styleName, styleNode)
	for name, value in pairs(styleNode) do
		if name == "even-background-color" then
			self.evenBackgroundColor = value
		elseif name == "odd-background-color" then
			self.oddBackgroundColor = value
		end
	end
end

function UITableRow:updateBackgroundColor()
	self.backgroundColor = nil

	local isEven = self.rowId % 2 == 0

	if isEven and self.evenBackgroundColor then
		self.backgroundColor = self.evenBackgroundColor
	elseif not isEven and self.oddBackgroundColor then
		self.backgroundColor = self.oddBackgroundColor
	end

	if self.backgroundColor then
		self:mergeStyle({
			["background-color"] = self.backgroundColor
		})
	end
end

UITableHeaderColumn = extends(UIButton, "UITableHeaderColumn")

function UITableHeaderColumn:onClick()
	if self.table then
		self.table:setSorting(self.colId)
		self.table:sort()
	end
end

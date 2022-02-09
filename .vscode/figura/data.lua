
data = {}

---Sets the target File name.
---@param name string
function data.setName(name) end

---Gets the target File name.
---@return string
function data.getName(name) end

---Saves a value in the file.
---@param name any
---@param value any
function data.save(name, value) end

---Returns a LuaValue of the key, or nil if not found.
---@param name any
function data.load(name) end

---Returns a LuaTable of all the saved variables.
function data.loadAll() end

---Removes the value from the file.
---@param name string
function data.remove(name) end

---Completely removes the file from the existence.
function data.deleteFile() end
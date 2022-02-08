--================================================================================================--
--=====  FUNCTIONS  ==============================================================================--
--================================================================================================--

---Contains generic rendering functions to get and set shadow size and check if the viewer is in
---first person.
renderer = {}

---Returns the radius of the player's shadow.  
---Returns `nil` if the size has not been set by `.setShadowSize()`.
---@return number|nil
function renderer.getShadowSize() end

---Returns if the model is being viewed in first-person.  
---This will always return false for other clients since they cannot see your first-person model.
---@return boolean
function renderer.isFirstPerson() end

---Sets the radius of the player's shadow.  
---Set the radius to `nil` to reset the shadow.
---@param radius number|nil
function renderer.setShadowSize(radius) end

---custom shader uniform controllers
---@param stringLayer string
---@param stringUniform string
---@param tableValue integer
function renderer.setUniform(stringLayer, stringUniform, tableValue) end

--- returns true if the camera is backwards
---@return boolean
function renderer.isCameraBackwards() end

---Returns the VIEWER's camera pos
---@return VectorPos
function renderer.getCameraPos() end
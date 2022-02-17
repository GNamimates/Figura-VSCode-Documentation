--================================================================================================--
--=====  CLASSES  ================================================================================--
--================================================================================================--

--- Contains the Finctions for controlling the shaders
renderlayers = {}

--- Returns true or false depending on if the shader exists yet
---@param shaderName string
function renderlayers.isShaderReady(shaderName) end

--- Gets the priority of the chosen render layer, or nil if it doesn't exist
---@param renderLayerName string
function renderlayers.getPriority(renderLayerName) end

--- Registers a new render layer with the given name
--- → params is a table where you can set certain keys
--- → startFunction and endFunction - are two lua functions, called when you start rendering and when you stop
--- → vertexFormat - needs to match with the format of any shader you want to use. Same default as in registerShader() 
--- → hasCrumbling - don't know what this does, but it's true by default
--- → translucent - also don't know this one, but true by default rendering this layer. Functions which interact with openGL can only be called inside these
---@param name string
---@param params table
---@param startFunction function
---@param endFunction function
function renderlayers.registerRenderLayer(name, params, startFunction, endFunction) end

--- → Registers a new custom shader with the given name
--- → If format is nil, uses the default of "POSITION_COLOR_TEXTURE_OVERLAY_LIGHT_NORMAL"
--- → Code for the shader is contained in strings, vertexSource and fragmentSource
---@param name string
---@param format string
---@param vertexSource string
---@param fragmentSource string
---@param numSamplers string
---@param customUniforms string
function renderlayers.registerShader(name, format, vertexSource, fragmentSource, numSamplers, customUniforms) end

---Resets the rendering to default state.
function renderlayers.restoreDefaults() end

---Enables lightmap testing.
function renderlayers.enableLightmap() end

---Disables lightmap testing.
function renderlayers.disableLightmap() end

---Enables overlay.
function renderlayers.enableOverlay() end

---Disables overlay.
function renderlayers.disableOverlay() end

---Enables culling.
function renderlayers.enableCull() end

---Disables culling.
function renderlayers.disableCull() end

---Enables depth testing.
function renderlayers.enableDepthTest() end

---Disables depth testing.
function renderlayers.disableDepthTest() end

---Enables blending.
function renderlayers.enableBlend() end 

---Disables blending.
function renderlayers.disableBlend() end

---Enables color logic operations.
function renderlayers.enableColorLogicOp() end 

---Disables color logic operations.
function renderlayers.disableColorLogicOp() end

---Enables stencil testing.
function renderlayers.enableStencil() end 

---Disables stencil testing.
function renderlayers.disableStencil() end

---Sets the GL depth function.
---@param func any
function renderlayers.depthFunc(func) end

---Enables/disables the GL depth mask.
---@param boolean boolean
function renderlayers.depthMask(boolean) end

---Sets the GL blend function.
---@param src any
---@param dst any
function renderlayers.blendFunc(src, dst) end

---Sets the GL blend function.
---@param srcRGB any
---@param dstRGB any
---@param srcAlpha any
---@param dstAlpha any
function renderlayers.blendFuncSeparate(srcRGB, dstRGB, srcAlpha, dstAlpha) end

---A minecraft specific function, resets the GL blend function to default.
function renderlayers.defaultBlendFunc() end

---Sets the GL blend equation.
---@param equation string
function renderlayers.blendEquation(equation) end

---Sets the GL color logic operation.
---@param operation any
function renderlayers.logicOp(operation) end

---Enables/disables the GL color mask
---@param boolean boolean
function renderlayers.colorMask(boolean) end

---Sets the GL stencil mask
---@param number integer
function renderlayers.stencilMask(number) end

---Sets the GL stencil function
---@param func function
---@param ref any
---@param mask any
function renderlayers.stencilFunc(func, ref, mask) end

---Sets the GL stencil operations
---@param sfail any
---@param dpfail any
---@param dppass any
function renderlayers.stencilOp(sfail, dpfail, dppass) end

---Enables GL scissors with those values
---@param x number
---@param y number
---@param width number
---@param height number
function renderlayers.enableScissors(x, y, width, height) end

---Disables GL scissors
function renderlayers.disableScissors() end

---Sets the shader line width
function renderlayers.lineWidth() end
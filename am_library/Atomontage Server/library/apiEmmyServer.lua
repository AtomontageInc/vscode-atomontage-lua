--- @meta

--- @class Server
Server = {}

-- Returns a table of connected client IDs i.e. `{0,1,2,5}`
--- @return table
function Server:GetClients() end

-- Send message to client 
--- @param clientID integer client id i.e from `Server:GetClients()`
--- @param messages table data to send table may contain primitive math classes such as `Quat`, `Vec3` etc  
--- @return nil
function Server:SendMessages(clientID, messages) end

--- @return table
function Server:ReceiveMessages() end

--- @return CommandLine
function Server:GetCommandLine() end


--- @class Script
--- @field component Component
script = {}

-- Called on script instance initialization. Usually after changing `.instance` or `.file` property
function script:Attach() end

-- Called on script release. Usually on object destruction or to release old script instance during change of `.instance` or `.file` property
function script:Detach() end

-- Called once before the first Update
function script:Start() end

-- Called if updates are enabled (they are enabled automatically if attached script has this method). dt is frame time delta in seconds and t is application time in seconds.
--- @param dt number delta time since last update
--- @param t number total time passed
function script:Update(dt, t) end

--- @class Quat
Quat = {}

--- @class ControllerButtons
ControllerButtons = {}

--- @class Angle
--- @field sine number
--- @field cosine number
Angle = {}

--- @return Angle
function Angle() end

--- @param p1 number
--- @param p2 number
--- @return Angle
function Angle(p1, p2) end

--- @param p1 number
--- @return Angle
function Angle(p1) end

--- @return Angle
function Angle() end

--- @param p1 Angle
--- @param p2 Angle
--- @return boolean
function Angle:__eq(p1, p2) end

--- @param p1 number
--- @return nil
function Angle:Set(p1) end

--- @return number
function Angle:Get() end

--- @class Camera
--- @field transformation Transformation
--- @field transform Transformation
Camera = {}

--- @param p1 string
--- @return Camera
function Camera(p1) end

--- @param p1 Object3D
--- @return Transformation
function Camera:GetTransformation(p1) end

--- @param p1 Transformation
--- @return nil
function Camera:SetTransformation(p1) end

--- @param p1 Transformation
--- @return nil
function Camera:SetTransformation(p1) end

--- @param p1 number
--- @return nil
function Camera:MoveForward(p1) end

--- @param p1 number
--- @return nil
function Camera:MoveRight(p1) end

--- @param p1 number
--- @return nil
function Camera:MoveUp(p1) end

--- @param p1 Vec3
--- @return nil
function Camera:Rotate(p1) end

--- @param p1 Object3D
--- @return Vec3
function Camera:GetForward(p1) end

--- @param p1 Object3D
--- @return Vec3
function Camera:GetRight(p1) end

--- @param p1 Object3D
--- @return Vec3
function Camera:GetUp(p1) end

--- @param p1 Object3D
--- @return Mat4
function Camera:GetLtw(p1) end

--- @param p1 Object3D
--- @return Vec3
function Camera:GetPosition(p1) end

--- @param p1 Vec3
--- @return nil
function Camera:SetPosition(p1) end

--- @return Transformation
function Camera:GetTransformation() end

--- @param p1 number
--- @return nil
function Camera:MoveForward(p1) end

--- @param p1 number
--- @return nil
function Camera:MoveRight(p1) end

--- @param p1 number
--- @return nil
function Camera:MoveUp(p1) end

--- @param p1 Vec3
--- @return nil
function Camera:Rotate(p1) end

--- @return Vec3
function Camera:GetForward() end

--- @return Vec3
function Camera:GetRight() end

--- @return Vec3
function Camera:GetUp() end

--- @return Mat4
function Camera:GetLtw() end

--- @return Vec3
function Camera:GetPosition() end

--- @param p1 Vec3
--- @return nil
function Camera:SetPosition(p1) end

--- @return Frustum
function Camera:GetFrustum() end

--- @param p1 Frustum
--- @return nil
function Camera:SetFrustum(p1) end

--- @return Mat4
function Camera:GetProjection() end

--- @param p1 Vec2
--- @return Vec3
function Camera:GetRay(p1) end

--- @param p1 number
--- @return nil
function Camera:SetFovY(p1) end

--- @return number
function Camera:GetFovY() end

--[[


blallblalb lalal bal babl aabab blallblalb lalal bal babl aabab blallblalb lalal bal babl aabab blallblalb lalal bal babl aabab blallblalb lalal bal babl aabab blallblalb lalal bal babl aabab blallblalb lalal bal babl aabab

blallblalb lalal bal babl aabab blallblalb lalal bal babl aabab blallblalb lalal bal babl aabab

[View Documentation](https://docs.atomontage.com/api/Client)
]]
--- @class Client
--- @field platform string
--- @field sysInfo string
Client = {}

--[[
Recieve messages send by server scripts

```lua
-- define your actions for network messages (good example, but user can wrok this out freely)
net_actions = {}
net_actions['Del'] = function(msg) Scene:ClearSphere(msg.pos, msg.rad) end
net_actions[1] = function(msg) Scene:ClearSphere(msg[2], msg[3]) end

-- receive all messages in one call and process them
for i,msg in ipairs(Client:ReceiveMessages()) do
    -- process message example:
    local f = msg.act and net_actions[msg.act]
    if type(f) == 'function' then
        f(msg)
    end
end
```

[View Documentation](https://docs.atomontage.com/api/Client#table-ReceiveMessages)
]]
--- @return table
function Client:ReceiveMessages() end

--- @return nil
function Client:ToggleUICreatorWindow() end

--[[
Returns [`Camera`](/api/camera)

[View Documentation](https://docs.atomontage.com/api/Client#Camera-GetCamera)
]]
--- @return Camera
function Client:GetCamera() end

--- @return boolean
function Client:IsClient() end

--- @return boolean
function Client:IsServer() end

--- @return Client
function Client() end

--- @param message table
--- @return nil
function Client:SendMessage(message) end

--- @param tableOfMessages table
--- @return nil
function Client:SendMessages(tableOfMessages) end

--- @param actionID integer
--- @param item UIItem
--- @param value userdata
--- @return string
function Client:UIItemUpdate(actionID, item, value) end

--- @param keyActionID string
--- @return nil
function Client:OpenKeyboardShortcutInput(keyActionID) end

--- @return nil
function Client:ToggleUIStudioSDK() end

--- @return nil
function Client:ToggleUIVisibility() end

--- @return nil
function Client:ToggleMainMenuVisibility() end

--- @return nil
function Client:SetToClientUI() end

--- @return boolean
function Client:GetUICapturesMouseOrKeyboard() end

--- @return boolean
function Client:GetUICapturesMouse() end

--- @return boolean
function Client:GetUICapturesKeyboard() end

--- @return boolean
function Client:GetUICapturesTextInput() end

--- @return boolean
function Client:GetUIIsInEditMode() end

--- @return nil
function Client:LoadDefaultLayout() end

--- @param windowID string
--- @return nil
function Client:OpenUIWindow(windowID) end

--- @param windowID string
--- @return nil
function Client:CloseUIWindow(windowID) end

--- @param windowID string
--- @return nil
function Client:ToggleUIWindow(windowID) end

--- @param windowID string
--- @return boolean
function Client:IsWindowOpen(windowID) end

--- @param filename string
--- @param line integer
--- @return nil
function Client:OpenScriptFile(filename, line) end

--- @param filename string
--- @param line integer
--- @return nil
function Client:OpenServerScriptFile(filename, line) end

--- @param parameters string
--- @return nil
function Client:OpenZeroBraneStudio(parameters) end

--- @return nil
function Client:OpenZeroBraneStudioActions() end

--- @param scale number
--- @return nil
function Client:SetUIScale(scale) end

--- @return number
function Client:GetUIScale() end

--- @return boolean
function Client:GetUIScaleAuto() end

--- @param autoScale boolean
--- @return nil
function Client:SetUIScaleAuto(autoScale) end

--- @return string
function Client:GetMontageURL() end

--- @param url string
--- @return nil
function Client:SetMontageURL(url) end

--- @return nil
function Client:LoadMontageByURL() end

--- @return nil
function Client:CancelLoadMontageByURL() end

--- @return string
function Client:GetConnectionStatus() end

--- @return nil
function Client:DisconnectFromMontageServer() end

--- @param p1 string
--- @return number
function Client:GetLogValue(p1) end

--- @param p1 string
--- @param p2 number
--- @return nil
function Client:SetLogValue(p1, p2) end

--- @param p1 string
--- @param p2 string
--- @return nil
function Client:SetStrLogValue(p1, p2) end

--- @param p1 integer
--- @return number
function Client:GetLogIValue(p1) end

--- @param p1 integer
--- @return string
function Client:GetLogIValueName(p1) end

--- @param p1 integer
--- @return string
function Client:GetLogIValueOutputName(p1) end

--- @param p1 integer
--- @return boolean
function Client:GetLogIsValue(p1) end

--- @return integer
function Client:GetLogValuesCount() end

--- @param p1 string
--- @return userdata
function Client:GetLogValueForPlot(p1) end

--- @param p1 string
--- @return string
function Client:GetLogStrValue(p1) end

--- @param p1 integer
--- @return string
function Client:GetLogStrIValue(p1) end

--- @param p1 integer
--- @return string
function Client:GetLogStrIValueName(p1) end

--- @param p1 integer
--- @return string
function Client:GetLogStrIValueOutputName(p1) end

--- @param p1 integer
--- @return boolean
function Client:GetLogStrIsValue(p1) end

--- @return integer
function Client:GetLogStrValuesCount() end

--- @return number
function Client:GetTime() end

--- @param p1 string
--- @return number
function Client:GetLogTime(p1) end

--- @return number
function Client:GetFPS() end

--- @return Config
function Client:GetConfigInputActions() end

--- @param p1 Client
--- @return nil
function Client:ConnectToServer(p1) end

--- @param folder string
--- @return boolean
function Client:OpenFolder(folder) end

--- @return integer
function Client:GetScriptsVersion() end

--- @return integer
function Client:GetClientScriptsVersion() end

--- @return nil
function Client:ResendServerLua() end

--- @return nil
function Client:ReloadLua() end

--- @return nil
function Client:LuaOpenDebugger() end

--- @param enable boolean
--- @return nil
function Client:LuaEnableDebugging(enable) end

--- @return nil
function Client:OnLuaLog() end

--- @return nil
function Client:ScrollToLastestLuaLog() end

--- @return userdata
function Client:GetVisibleWindows() end

--- @param uiItem UIItem
--- @return boolean
function Client:IsContainerEnabledAndVisible(uiItem) end

--- @return ConnectionInfo
function Client:GetConnectionInfo() end

--- @return NetworkStat
function Client:GetNetworkStat() end

--- @param p1 string
--- @return nil
function Client:Log(p1) end

--- @return AmStreamingStats
function Client:GetVoxelStreamStats() end

--- @param uiItem UIItem
--- @return nil
function Client:SelectItemInUICreator(uiItem) end

--- @param uiActionID integer
--- @return UIItem
function Client:GetUIItemByUIActionID(uiActionID) end

--- @param uiActionID integer
--- @return string
function Client:GetUIActionType(uiActionID) end

--- @param uiActionID integer
--- @return string
function Client:GetUIActionScript(uiActionID) end

--- @return integer
function Client:GetCurrentUIActionID() end

--- @return nil
function Client:CloseApp() end

--- @return number
function Client:GetDeltaTime() end

--- @return number
function Client:GetTotalTime() end

--- @return Camera
function Client:GetMainCamera() end

--- @return string
function Client:GetEULA() end

--- @return Vec2
function Client:GetViewportSize() end

--- @return CommandLine
function Client:GetCommandLine() end

--- @return boolean
function Client:GetVREnabled() end

--- @param p1 boolean
--- @param p2 string
--- @return nil
function Client:SetVREnabled(p1, p2) end

--- @param p1 string
--- @return nil
function Client:ToggleVREnabled(p1) end

--- @return nil
function Client:TriggerCrash() end

--- @return nil
function Client:TriggerException() end

--- @return nil
function Client:TriggerCriticalError() end

--- @return AssetManager
function Client:GetResourceManScene() end

--- @return AssetManager
function Client:GetResourceManUI() end

--- @return AssetManager
function Client:GetResourceManSettings() end

--- @return nil
function Client:ToggleChannelRendering() end

--- @return nil
function Client:SaveEntityPath() end

--- @param p1 string
--- @param p2 Vec2
--- @param p3 Vec2
--- @param p4 Vec4
--- @param p5 integer
--- @param p6 number
--- @return nil
function Client:WriteToScreen(p1, p2, p3, p4, p5, p6) end

--- @return Vec4
function Client:GetBGColor() end

--- @param p1 Vec4
--- @return nil
function Client:SetBGColor(p1) end

--[[
Send a message to server scripts. The message is a table

```lua
-- send message examples
Client:SendMessage({act = 'erase', pos = Vec3(0,0,0), rad = 1})
-- send message example with no string use
Client:SendMessage({[1] = 1, [2] = 100, [3] = false, [4] = Vec2(0)})
-- send message with no keys, it's the same message as the line above
Client:SendMessage({1, 100, false, Vec2(0)})

-- send more messages in one call
Client:SendMessages({	
    {act = 1}, -- message 1
    {act = 5}, -- message 2
    {1, 100, false}, -- message 3 (with no keys)
    {act = 2, brush = 'paint'}}) -- message 4



local my_msgs = {}
table.insert(my_msgs, {act = 'erase'})
table.insert(my_msgs, {act = 'erase'})
table.insert(my_msgs, {act = 'erase'})
Client:SendMessages(my_msgs)
```

[View Documentation](https://docs.atomontage.com/api/Client#void-SendMessage-table)
]]
--- @param p1 table
--- @return nil
function Client:SendMessage(p1) end

--- @class CommandLine
CommandLine = {}

--- @param p1 string
--- @return CommandLine
function CommandLine(p1) end

--- @param p1 string
--- @return boolean
function CommandLine:HasOption(p1) end

--- @param p1 string
--- @param p2 number
--- @return number
function CommandLine:GetOptionFloat(p1, p2) end

--- @param p1 string
--- @param p2 integer
--- @return integer
function CommandLine:GetOptionInt(p1, p2) end

--- @param p1 string
--- @param p2 string
--- @return string
function CommandLine:GetOption(p1, p2) end

--- @param p1 string
--- @param p2 Vec3
--- @return Vec3
function CommandLine:GetOptionVec3(p1, p2) end

--[[

See also: [ScriptComponent](ScriptComponent)

[View Documentation](https://docs.atomontage.com/api/Component)
]]
--- @class Component
--- @field type string
--- @field object Object
Component = {}

--- @return Component
function Component() end

--- @class Config
Config = {}

--- @return Config
function Config() end

--- @param p1 string
--- @param p2 integer
--- @return nil
function Config:SetInt(p1, p2) end

--- @param p1 string
--- @param p2 number
--- @return nil
function Config:SetFloat(p1, p2) end

--- @param p1 string
--- @param p2 boolean
--- @return nil
function Config:SetBool(p1, p2) end

--- @param p1 string
--- @param p2 string
--- @return nil
function Config:SetString(p1, p2) end

--- @param p1 string
--- @param p2 Vec2
--- @return nil
function Config:SetVec2(p1, p2) end

--- @param p1 string
--- @param p2 Vec3
--- @return nil
function Config:SetVec3(p1, p2) end

--- @param p1 string
--- @param p2 Vec4
--- @return nil
function Config:SetVec4(p1, p2) end

--- @param p1 string
--- @return nil
function Config:Del(p1) end

--- @param p1 string
--- @return boolean
function Config:Exists(p1) end

--- @param p1 string
--- @param p2 integer
--- @return integer
function Config:GetInt(p1, p2) end

--- @param p1 string
--- @return integer
function Config:GetInt(p1) end

--- @param p1 string
--- @param p2 number
--- @return number
function Config:GetFloat(p1, p2) end

--- @param p1 string
--- @return number
function Config:GetFloat(p1) end

--- @param p1 string
--- @param p2 boolean
--- @return boolean
function Config:GetBool(p1, p2) end

--- @param p1 string
--- @return boolean
function Config:GetBool(p1) end

--- @param p1 string
--- @param p2 string
--- @return string
function Config:GetString(p1, p2) end

--- @param p1 string
--- @return string
function Config:GetString(p1) end

--- @param p1 string
--- @param p2 Vec2
--- @return Vec2
function Config:GetVec2(p1, p2) end

--- @param p1 string
--- @return Vec2
function Config:GetVec2(p1) end

--- @param p1 string
--- @param p2 Vec3
--- @return Vec3
function Config:GetVec3(p1, p2) end

--- @param p1 string
--- @return Vec3
function Config:GetVec3(p1) end

--- @param p1 string
--- @param p2 Vec4
--- @return Vec4
function Config:GetVec4(p1, p2) end

--- @param p1 string
--- @return Vec4
function Config:GetVec4(p1) end

--- @param p1 Config
--- @return table
function Config:GetAllValuesStringified(p1) end

--- @class Frustum
--- @field nearPlane number
--- @field farPlane number
--- @field fovY number
--- @field aspectRatio number
Frustum = {}

--- @return Frustum
function Frustum() end

--- @return Frustum
function Frustum() end

--- @class Input
Input = {}

--- @return Input
function Input() end

--- @return Input
function Input() end

--- @param p1 integer
--- @return boolean
function Input:KeyDown(p1) end

--- @param p1 integer
--- @return boolean
function Input:Key(p1) end

--- @param p1 integer
--- @return boolean
function Input:KeyUp(p1) end

--- @param p1 integer
--- @param p2 integer
--- @param p3 integer
--- @return boolean
function Input:KeyCombDown(p1, p2, p3) end

--- @param p1 integer
--- @param p2 integer
--- @return boolean
function Input:KeyCombDown(p1, p2) end

--- @param p1 integer
--- @param p2 integer
--- @param p3 integer
--- @return boolean
function Input:KeyComb(p1, p2, p3) end

--- @param p1 integer
--- @param p2 integer
--- @return boolean
function Input:KeyComb(p1, p2) end

--- @return boolean
function Input:ShiftKey() end

--- @return boolean
function Input:CtrlKey() end

--- @return boolean
function Input:AltKey() end

--- @param p1 integer
--- @return string
function Input:GetKeyName(p1) end

--- @param p1 string
--- @return integer
function Input:GetKeyCode(p1) end

--- @return userdata
function Input:GetKeysDown() end

--- @return userdata
function Input:GetKeys() end

--- @return userdata
function Input:GetKeysUp() end

--- @return integer
function Input:GetKeyShortcutsPressedCount() end

--- @param p1 integer
--- @return string
function Input:GetKeyShortcutPressed(p1) end

--- @param p1 integer
--- @return boolean
function Input:MouseBtnDown(p1) end

--- @param p1 integer
--- @return boolean
function Input:MouseBtn(p1) end

--- @param p1 integer
--- @return boolean
function Input:MouseBtnUp(p1) end

--- @return integer
function Input:MouseWheel() end

--- @return userdata
function Input:GetMouseButtonsDown() end

--- @return userdata
function Input:GetMouseButtons() end

--- @return userdata
function Input:GetMouseButtonsUp() end

--- @return number
function Input:GesturePinch() end

--- @return number
function Input:GestureRotate() end

--- @return integer
function Input:NumFingers() end

--- @param p1 integer
--- @return boolean
function Input:FingerDown(p1) end

--- @param p1 integer
--- @return boolean
function Input:FingerUp(p1) end

--- @param p1 integer
--- @param p2 ControllerButtons
--- @return boolean
function Input:VrBtnDown(p1, p2) end

--- @param p1 integer
--- @return number
function Input:VrHandTrigger(p1) end

--- @param p1 integer
--- @return number
function Input:VrIndexTrigger(p1) end

--- @param p1 integer
--- @return string
function Input:GetJoyBtnName(p1) end

--- @param p1 integer
--- @return string
function Input:GetJoyAxisName(p1) end

--- @param p1 string
--- @return integer
function Input:GetJoyBtnByName(p1) end

--- @param p1 string
--- @return integer
function Input:GetJoyAxisByName(p1) end

--- @return integer
function Input:GetActiveJoypadID() end

--- @param p1 integer
--- @param p2 integer
--- @return boolean
function Input:JoyBtnDown(p1, p2) end

--- @param p1 integer
--- @param p2 integer
--- @return boolean
function Input:JoyBtn(p1, p2) end

--- @param p1 integer
--- @param p2 integer
--- @return boolean
function Input:JoyBtnUp(p1, p2) end

--- @param p1 integer
--- @param p2 integer
--- @return number
function Input:JoyAxis(p1, p2) end

--- @param p1 Input
--- @return table
function Input:GetInputEvents(p1) end

--- @return userdata
function Input:Fingers() end

--- @return boolean
function Input:GetRelativeMouseMode() end

--- @param p1 boolean
--- @return nil
function Input:SetRelativeMouseMode(p1) end

--- @return Vec2
function Input:MousePos() end

--- @return Vec2
function Input:MousePosLast() end

--- @return Vec2
function Input:MouseMove() end

--- @return Vec2
function Input:MousePosRel() end

--- @return Vec2
function Input:MousePosRelLast() end

--- @return Vec2
function Input:MouseMoveRel() end

--- @return Vec2
function Input:GestureMove() end

--- @param p1 integer
--- @return Vec2
function Input:FingerPos(p1) end

--- @param p1 integer
--- @return Vec2
function Input:VrThumbStick(p1) end

--- @class LightingUpdate
--- @field realtimeLighting RealtimeLightingInfo
LightingUpdate = {}

--- @class Mat4
Mat4 = {}

--- @return Mat4
function Mat4() end

--- @param p1 Mat4
--- @return Mat4
function Mat4(p1) end

--- @return Mat4
function Mat4() end

--- @class Material
--- @field shaderFiles ResourceReference
--- @field polygonMode PolygonMode
--- @field depthStencil ResourceReference
--- @field blend ResourceReference
--- @field defines string
--- @field uniforms userdata
Material = {}

--- @param p1 string
--- @param p2 FilePath
--- @return Material
function Material(p1, p2) end

--- @return boolean
function Material:IsValid() end

--- @return boolean
function Material:IsManaged() end

--- @param p1 string
--- @return boolean
function Material:HasProperty(p1) end

--- @param p1 string
--- @return Vec3
function Material:GetPropertyVec3(p1) end

--- @param p1 string
--- @param p2 Vec3
--- @return nil
function Material:SetProperty(p1, p2) end

--- @param p1 string
--- @return Vec4
function Material:GetPropertyVec4(p1) end

--- @param p1 string
--- @param p2 Vec4
--- @return nil
function Material:SetProperty(p1, p2) end

--- @class MeshData
--- @field file string
--- @field data MeshDataBuilder
--- @field type string
--- @field object Object
MeshData = {}

--- @class MeshDataBuilder
--- @field static boolean
--- @field dynamic boolean
--- @field streamed boolean
--- @field topology PrimitiveTopology
MeshDataBuilder = {}

--- @return MeshDataBuilder
function MeshDataBuilder() end

--- @return MeshDataBuilder
function MeshDataBuilder() end

--- @return nil
function MeshDataBuilder:Clear() end

--- @param p1 integer
--- @param p2 integer
--- @param p3 integer
--- @return nil
function MeshDataBuilder:AddIndex(p1, p2, p3) end

--- @param p1 integer
--- @param p2 integer
--- @return nil
function MeshDataBuilder:AddIndex(p1, p2) end

--- @param p1 integer
--- @return nil
function MeshDataBuilder:AddIndex(p1) end

--- @param p1 Vec3
--- @param p2 Vec2
--- @return integer
function MeshDataBuilder:AddVertex(p1, p2) end

--- @param p1 Vec3
--- @return integer
function MeshDataBuilder:AddVertex(p1) end

--- @param p1 Vec3
--- @param p2 Vec4
--- @return integer
function MeshDataBuilder:AddVertex(p1, p2) end

--- @param p1 Vec3
--- @param p2 Vec2
--- @param p3 Vec4
--- @return integer
function MeshDataBuilder:AddVertex(p1, p2, p3) end

--- @class MeshRender
--- @field material userdata
--- @field type string
--- @field object Object
MeshRender = {}

--- @class Object
--- @field s_id integer
--- @field name string
--- @field tag string
--- @field flags integer
--- @field transform2 integer
--- @field meshData integer
--- @field meshRender integer
--- @field voxelData integer
--- @field voxelRender integer
--- @field rigidBody integer
--- @field id integer
--- @field isDestroyed boolean
--- @field componentsCount integer
--- @field update boolean
--- @field active boolean
--- @field transform Transform
--- @field dontSave boolean
Object = {}

--- @return Object
function Object() end

--- @param p1 string
--- @return userdata
function Object:AddComponent(p1) end

--- @param p1 integer
--- @return userdata
function Object:GetComponent(p1) end

--- @param p1 string
--- @return userdata
function Object:RemoveComponent(p1) end

--- @param p1 string
--- @return userdata
function Object:GetComponentByType(p1) end

--- @param p1 Object
--- @return nil
function Object:RemoveAllNonNativeComponents(p1) end

--- @class Object3D
--- @field transformation Transformation
Object3D = {}

--- @param p1 string
--- @return Object3D
function Object3D(p1) end

--- @param p1 Object3D
--- @return Transformation
function Object3D:GetTransformation(p1) end

--- @param p1 Transformation
--- @return nil
function Object3D:SetTransformation(p1) end

--- @param p1 number
--- @return nil
function Object3D:MoveForward(p1) end

--- @param p1 number
--- @return nil
function Object3D:MoveRight(p1) end

--- @param p1 number
--- @return nil
function Object3D:MoveUp(p1) end

--- @param p1 Object3D
--- @return Mat4
function Object3D:GetLtw(p1) end

--- @param p1 Vec3
--- @return nil
function Object3D:Rotate(p1) end

--- @param p1 Object3D
--- @return Vec3
function Object3D:GetForward(p1) end

--- @param p1 Object3D
--- @return Vec3
function Object3D:GetRight(p1) end

--- @param p1 Object3D
--- @return Vec3
function Object3D:GetUp(p1) end

--- @param p1 Object3D
--- @return Vec3
function Object3D:GetPosition(p1) end

--- @param p1 Vec3
--- @return nil
function Object3D:SetPosition(p1) end

--- @class RealtimeLightingInfo
--- @field diffuseSamples integer
--- @field ambientSamples integer
--- @field diffuseRayLength number
--- @field ambientRayLength number
--- @field taskBoxScale integer
--- @field ambient Vec3
--- @field diffuse Vec3
--- @field lightDir Vec3
RealtimeLightingInfo = {}

--- @return RealtimeLightingInfo
function RealtimeLightingInfo() end

--- @class Rotation
--- @field angles Vec3
Rotation = {}

--- @return Rotation
function Rotation() end

--- @param p1 Vec3
--- @return Rotation
function Rotation(p1) end

--- @return Rotation
function Rotation() end

--- @return Rotation
function Rotation() end

--- @class Scene
--- @field SysTransform userdata
--- @field SysMeshRender MeshRender
--- @field SysMeshData MeshData
--- @field lighting LightingUpdate
--- @field SysVoxelData userdata
--- @field SysVoxelRender userdata
Scene = {}

--- @return number
function Scene:GetTime() end

--- @return number
function Scene:GetTimeDelta() end

--- @return boolean
function Scene:Test() end

--- @return Object
function Scene:CreateObject() end

--- @param p1 Object
--- @return nil
function Scene:DestroyObject(p1) end

--- @param p1 string
--- @return userdata
function Scene:CreateMaterial(p1) end

--- @return nil
function Scene:DebugStats() end

--- @param p1 string
--- @return table
function Scene:GetObjectsByName(p1) end

--- @return table
function Scene:GetAllObjects() end

--- @return table
function Scene:GetRootObjects() end

--- @param p1 string
--- @return table
function Scene:GetObjectsByTag(p1) end

--- @param p1 integer
--- @return Object
function Scene:GetObjectById(p1) end

--- @param p1 string
--- @param p2 integer
--- @return userdata
function Scene:GetNativeComponentById(p1, p2) end

--- @return boolean
function Scene:IsServerReady() end

--- @param p1 string
--- @return nil
function Scene:Save(p1) end

--- @param p1 string
--- @return nil
function Scene:ScheduleLoad(p1) end

--- @return nil
function Scene:RebuildLighting() end

--- @param p1 string
--- @return LightingUpdate
function Scene:CreateLighting(p1) end

--- @param p1 string
--- @return VoxelDB
function Scene:GetVoxelDB(p1) end

--- @param p1 Object
--- @return Object
function Scene:CloneObject(p1) end

--- @param p1 string
--- @return integer
function Scene:Merge(p1) end

--[[

See also: [Component](Component)

All script methods are optional.

| Function | Description |
| - | - |
| `Attach(self)` | Called on script instance initialization. Usually after changing `.instance` or `.file` property |
| `Start(self)` | Called once before the first Update |
| `Update(self, dt, t)` | Called if updates are enabled (they are enabled automatically if attached script has this method). dt is frame time delta in seconds and t is application time in seconds. |
| `Detach(self)` | Called on script release. Usually on object destruction or to release old script instance during change of `.instance` or `.file` property |


```lua
local script = {}

function script:Attach()
   print("attached") 
end

function script:Detach()
   print("detached") 
end

function script:Start()
   print("starting") 
end

function script:Update(dt, t)
   
end

return script
```


You can also set script directly as lua table assigning it to `.instance` property. For example:

```lua
function SpawnScriptObject()
	local obj = Scene:CreateObject()
	obj.name = "LocalScript"

	local sc = obj:AddComponent('Script')
sc.instance = {
		n=10,
		Update=function(self)
			print("Self destruct in "..self.n)
			self.n = self.n - 1
			if self.n == 0 then
				Scene:DestroyObject(self.component.object)
			end
		end
	}	
	return obj	
end
```

[View Documentation](https://docs.atomontage.com/api/ScriptComponent)
]]
--- @class ScriptComponent
--- @field type string
--- @field object Object
--- @field fileName string
--- @field isValid boolean
--- @field instance table
--- @field file string
ScriptComponent = {}

--- @return ScriptComponent
function ScriptComponent() end

--- @class Transform
--- @field childCount integer
--- @field rot Quat
--- @field localScale number
--- @field localRot Quat
--- @field parent Transform
--- @field invalid Transform
--- @field type string
--- @field object Object
--- @field pos Vec3
--- @field localPos Vec3
--- @field right Vec3
--- @field up Vec3
--- @field forward Vec3
Transform = {}

--- @param p1 string
--- @return Transform
function Transform:Get(p1) end

--- @param p1 integer
--- @return Transform
function Transform:GetChild(p1) end

--- @param p1 Vec3
--- @return Vec3
function Transform:LocalToWorld(p1) end

--- @param p1 Vec3
--- @return Vec3
function Transform:WorldToLocal(p1) end

--- @param p1 Vec3
--- @return Vec3
function Transform:LocalToWorldVec(p1) end

--- @param p1 Vec3
--- @return Vec3
function Transform:WorldToLocalVec(p1) end

--- @class Transformation
--- @field rotation Rotation
--- @field position Vec3
Transformation = {}

--- @return Transformation
function Transformation() end

--- @return Transformation
function Transformation() end

--- @param p1 structAsObject
--- @return Transformation
function Transformation(p1) end

--- @return Transformation
function Transformation() end

--- @param p1 structAsObject
--- @return Transformation
function Transformation(p1) end

--- @return Transformation
function Transformation() end

--- @return Transformation
function Transformation() end

--- @param p1 structAsObject
--- @return Transformation
function Transformation(p1) end

--- @param p1 Rotation
--- @param p2 Vec3
--- @return Transformation
function Transformation(p1, p2) end

--- @class UIItem
UIItem = {}

--- @return UIItem
function UIItem() end

--- @param p1 string
--- @return UIItem
function UIItem(p1) end

--- @return string
function UIItem:GetID() end

--- @return string
function UIItem:GetType() end

--- @return string
function UIItem:GetLabel() end

--- @class Vec2
--- @field x number
--- @field y number
--- @field length number
--- @field zero Vec2
--- @field normalized Vec2
Vec2 = {}

--- @return Vec2
function Vec2() end

--- @param p1 number
--- @param p2 number
--- @return Vec2
function Vec2(p1, p2) end

--- @param p1 number
--- @return Vec2
function Vec2(p1) end

--- @return Vec2
function Vec2() end

--- @param p1 structAsObject
--- @return Vec2
function Vec2(p1) end

--- @param p1 structAsRawPointegerer
--- @return Vec2
function Vec2(p1) end

--- @return Vec2
function Vec2() end

--- @param p1 structAsObject
--- @return Vec2
function Vec2(p1) end

--- @param p1 structAsRawPointegerer
--- @return Vec2
function Vec2(p1) end

--- @param p1 Vec2
--- @param p2 number
--- @return Vec2
function Vec2:__mul(p1, p2) end

--- @param p1 number
--- @param p2 Vec2
--- @return Vec2
function Vec2:__mul(p1, p2) end

--- @param p1 Vec2
--- @param p2 Vec2
--- @return Vec2
function Vec2:__mul(p1, p2) end

--- @param p1 Vec2
--- @param p2 number
--- @return Vec2
function Vec2:__div(p1, p2) end

--- @param p1 Vec2
--- @param p2 Vec2
--- @return Vec2
function Vec2:__div(p1, p2) end

--- @param p1 Vec2
--- @param p2 Vec2
--- @return Vec2
function Vec2:__add(p1, p2) end

--- @param p1 Vec2
--- @param p2 Vec2
--- @return Vec2
function Vec2:__sub(p1, p2) end

--- @param p1 Vec2
--- @param p2 Vec2
--- @return Vec2
function Vec2:__unm(p1, p2) end

--- @param p1 Vec2
--- @param p2 Vec2
--- @return number
function Vec2:Dot(p1, p2) end

--- @param p1 Vec2
--- @return boolean
function Vec2:IsZero(p1) end

--- @return number
function Vec2:Length() end

--- @return number
function Vec2:SqrLength() end

--- @return Angle
function Vec2:GetAngle() end

--- @return number
function Vec2:GetAngleRad() end

--- @return nil
function Vec2:Normalize() end

--- @param p1 number
--- @return nil
function Vec2:NormalizeTo(p1) end

--- @return Vec2
function Vec2:GetNormalized() end

--- @param p1 number
--- @return Vec2
function Vec2:GetNormalizedTo(p1) end

--- @param p1 Vec2
--- @param p2 number
--- @return nil
function Vec2:MorphTo(p1, p2) end

--- @param p1 Vec2
--- @param p2 number
--- @return Vec2
function Vec2:GetMorphedTo(p1, p2) end

--- @return nil
function Vec2:RotateRight90() end

--- @param p1 Angle
--- @return nil
function Vec2:RotateRight(p1) end

--- @param p1 number
--- @return nil
function Vec2:RotateRight(p1) end

--- @param p1 Angle
--- @return Vec2
function Vec2:GetRotatedRight(p1) end

--- @param p1 number
--- @return Vec2
function Vec2:GetRotatedRight(p1) end

--- @return Vec2
function Vec2:GetRotatedRight90() end

--- @return nil
function Vec2:RotateLeft90() end

--- @param p1 Angle
--- @return nil
function Vec2:RotateLeft(p1) end

--- @param p1 number
--- @return nil
function Vec2:RotateLeft(p1) end

--- @param p1 Angle
--- @return Vec2
function Vec2:GetRotatedLeft(p1) end

--- @param p1 number
--- @return Vec2
function Vec2:GetRotatedLeft(p1) end

--- @return Vec2
function Vec2:GetRotatedLeft90() end

--- @return nil
function Vec2:Rotate90() end

--- @param p1 Angle
--- @return nil
function Vec2:Rotate(p1) end

--- @param p1 number
--- @return nil
function Vec2:Rotate(p1) end

--- @param p1 Angle
--- @return Vec2
function Vec2:GetRotated(p1) end

--- @param p1 number
--- @return Vec2
function Vec2:GetRotated(p1) end

--- @return Vec2
function Vec2:GetRotated90() end

--- @param p1 Vec2
--- @return Vec2
function Vec2(p1) end

--- @param p1 Vec2i
--- @return Vec2
function Vec2(p1) end

--- @param p1 Vec2
--- @param p2 integer
--- @return number
function Vec2:__index(p1, p2) end

--- @param p1 Vec2
--- @param p2 integer
--- @param p3 number
--- @return nil
function Vec2:__newindex(p1, p2, p3) end

--- @param p1 Vec2
--- @param p2 Vec2i
--- @return Vec2
function Vec2:__mul(p1, p2) end

--- @param p1 Vec2
--- @param p2 Vec2i
--- @return Vec2
function Vec2:__div(p1, p2) end

--- @param p1 Vec2
--- @param p2 Vec2i
--- @return Vec2
function Vec2:__add(p1, p2) end

--- @param p1 Vec2
--- @param p2 Vec2i
--- @return Vec2
function Vec2:__sub(p1, p2) end

--- @param p1 Vec2
--- @param p2 Vec2i
--- @return boolean
function Vec2:__eq(p1, p2) end

--- @param p1 Vec2
--- @param p2 Vec2
--- @return boolean
function Vec2:__eq(p1, p2) end

--- @param p1 Vec2
--- @param p2 Vec2
--- @return number
function Vec2:__len(p1, p2) end

--- @return number
function Vec2:Sum() end

--- @return number
function Vec2:Sub() end

--- @return number
function Vec2:Diff() end

--- @return number
function Vec2:Prod() end

--- @return number
function Vec2:LinLen() end

--- @return number
function Vec2:Len() end

--- @return number
function Vec2:SqLen() end

--- @return number
function Vec2:MaxComponent() end

--- @return number
function Vec2:MinComponent() end

--- @return number
function Vec2:GetMax() end

--- @return number
function Vec2:GetMin() end

--- @param p1 number
--- @return boolean
function Vec2:IsWithin(p1) end

--- @param p1 number
--- @return boolean
function Vec2:IsIn(p1) end

--- @param p1 number
--- @return nil
function Vec2:Insert(p1) end

--- @return Vec2
function Vec2:GetAbs() end

--- @return number
function Vec2:GetAvg() end

--- @return Vec2
function Vec2:XY() end

--- @return Vec2
function Vec2:YX() end

--- @return boolean
function Vec2:IsAnyNaN() end

--- @return Vec2
function Vec2:GetUnit() end

--- @return Vec2
function Vec2:GetUnitSafe() end

--- @return Vec2
function Vec2:SetAbs() end

--- @param p1 Vec2
--- @param p2 Vec2i
--- @return number
function Vec2:Dot(p1, p2) end

--- @param p1 Vec2
--- @param p2 Vec2i
--- @return Vec3
function Vec2:Cross(p1, p2) end

--- @param p1 Vec2
--- @param p2 Vec2
--- @return Vec3
function Vec2:Cross(p1, p2) end

--- @param p1 Vec2
--- @param p2 Vec2
--- @param p3 number
--- @return Vec2
function Vec2:Lerp(p1, p2, p3) end

--- @param p1 Vec2
--- @param p2 Vec2
--- @param p3 number
--- @return Vec2
function Vec2:Mix(p1, p2, p3) end

--- @param p1 Vec2
--- @param p2 Vec2
--- @param p3 Vec2
--- @return nil
function Vec2:Clamp(p1, p2, p3) end

--- @param p1 Vec2
--- @param p2 number
--- @param p3 number
--- @return nil
function Vec2:Clamp(p1, p2, p3) end

--- @param p1 Vec2
--- @param p2 Vec2
--- @param p3 Vec2
--- @return Vec2
function Vec2:GetClamped(p1, p2, p3) end

--- @param p1 Vec2
--- @param p2 number
--- @param p3 number
--- @return Vec2
function Vec2:GetClamped(p1, p2, p3) end

--- @param p1 Vec2
--- @return nil
function Vec2:Ceil(p1) end

--- @param p1 Vec2
--- @return Vec2
function Vec2:GetCeiled(p1) end

--- @param p1 Vec2
--- @return nil
function Vec2:Floor(p1) end

--- @param p1 Vec2
--- @return Vec2
function Vec2:GetFloored(p1) end

--- @return nil
function Vec2:Round() end

--- @param p1 Vec2
--- @return Vec2
function Vec2:GetRounded(p1) end

--- @param p1 Vec2
--- @param p2 number
--- @return nil
function Vec2:SetLength(p1, p2) end

--- @param p1 Vec2
--- @param p2 Vec2
--- @return number
function Vec2:DistanceTo(p1, p2) end

--- @class Vec2i
--- @field x integer
--- @field y integer
--- @field length number
--- @field zero Vec2i
--- @field normalized Vec2
Vec2i = {}

--- @return Vec2i
function Vec2i() end

--- @param p1 integer
--- @param p2 integer
--- @return Vec2i
function Vec2i(p1, p2) end

--- @param p1 integer
--- @return Vec2i
function Vec2i(p1) end

--- @param p1 Vec2i
--- @return Vec2i
function Vec2i(p1) end

--- @return Vec2i
function Vec2i() end

--- @param p1 structAsObject
--- @return Vec2i
function Vec2i(p1) end

--- @param p1 structAsRawPointegerer
--- @return Vec2i
function Vec2i(p1) end

--- @return Vec2i
function Vec2i() end

--- @param p1 structAsObject
--- @return Vec2i
function Vec2i(p1) end

--- @param p1 structAsRawPointegerer
--- @return Vec2i
function Vec2i(p1) end

--- @param p1 Vec2i
--- @param p2 integer
--- @return integer
function Vec2i:__index(p1, p2) end

--- @param p1 Vec2i
--- @param p2 integer
--- @param p3 integer
--- @return nil
function Vec2i:__newindex(p1, p2, p3) end

--- @param p1 Vec2i
--- @param p2 Vec2
--- @return Vec2
function Vec2i:__mul(p1, p2) end

--- @param p1 Vec2i
--- @param p2 integer
--- @return Vec2i
function Vec2i:__mul(p1, p2) end

--- @param p1 integer
--- @param p2 Vec2i
--- @return Vec2i
function Vec2i:__mul(p1, p2) end

--- @param p1 Vec2i
--- @param p2 Vec2i
--- @return Vec2i
function Vec2i:__mul(p1, p2) end

--- @param p1 Vec2i
--- @param p2 Vec2
--- @return Vec2
function Vec2i:__div(p1, p2) end

--- @param p1 Vec2i
--- @param p2 integer
--- @return Vec2i
function Vec2i:__div(p1, p2) end

--- @param p1 Vec2i
--- @param p2 Vec2i
--- @return Vec2i
function Vec2i:__div(p1, p2) end

--- @param p1 Vec2i
--- @param p2 Vec2
--- @return Vec2
function Vec2i:__add(p1, p2) end

--- @param p1 Vec2i
--- @param p2 Vec2i
--- @return Vec2i
function Vec2i:__add(p1, p2) end

--- @param p1 Vec2i
--- @param p2 Vec2
--- @return Vec2
function Vec2i:__sub(p1, p2) end

--- @param p1 Vec2i
--- @param p2 Vec2i
--- @return Vec2i
function Vec2i:__sub(p1, p2) end

--- @param p1 Vec2i
--- @param p2 Vec2i
--- @return Vec2i
function Vec2i:__unm(p1, p2) end

--- @param p1 Vec2i
--- @param p2 Vec2
--- @return boolean
function Vec2i:__eq(p1, p2) end

--- @param p1 Vec2i
--- @param p2 Vec2i
--- @return boolean
function Vec2i:__eq(p1, p2) end

--- @param p1 Vec2i
--- @param p2 Vec2i
--- @return number
function Vec2i:__len(p1, p2) end

--- @param p1 Vec2i
--- @param p2 integer
--- @return Vec2i
function Vec2i:__mod(p1, p2) end

--- @param p1 Vec2i
--- @param p2 Vec2i
--- @return Vec2i
function Vec2i:__mod(p1, p2) end

--- @param p1 Vec2i
--- @param p2 integer
--- @return Vec2i
function Vec2i:__band(p1, p2) end

--- @param p1 Vec2i
--- @param p2 Vec2i
--- @return Vec2i
function Vec2i:__band(p1, p2) end

--- @param p1 Vec2i
--- @param p2 integer
--- @return Vec2i
function Vec2i:__bor(p1, p2) end

--- @param p1 Vec2i
--- @param p2 Vec2i
--- @return Vec2i
function Vec2i:__bor(p1, p2) end

--- @param p1 Vec2i
--- @param p2 integer
--- @return Vec2i
function Vec2i:__bxor(p1, p2) end

--- @param p1 Vec2i
--- @param p2 Vec2i
--- @return Vec2i
function Vec2i:__bxor(p1, p2) end

--- @param p1 Vec2i
--- @param p2 Vec2i
--- @return Vec2i
function Vec2i:__bnot(p1, p2) end

--- @param p1 Vec2i
--- @param p2 integer
--- @return Vec2i
function Vec2i:__shl(p1, p2) end

--- @param p1 Vec2i
--- @param p2 Vec2i
--- @return Vec2i
function Vec2i:__shl(p1, p2) end

--- @param p1 Vec2i
--- @param p2 integer
--- @return Vec2i
function Vec2i:__shr(p1, p2) end

--- @param p1 Vec2i
--- @param p2 Vec2i
--- @return Vec2i
function Vec2i:__shr(p1, p2) end

--- @return integer
function Vec2i:Sum() end

--- @return integer
function Vec2i:Sub() end

--- @return integer
function Vec2i:Diff() end

--- @return integer
function Vec2i:Prod() end

--- @return integer
function Vec2i:LinLen() end

--- @param p1 Vec2i
--- @return number
function Vec2i:Len(p1) end

--- @return integer
function Vec2i:SqLen() end

--- @return integer
function Vec2i:MaxComponent() end

--- @return integer
function Vec2i:MinComponent() end

--- @return integer
function Vec2i:GetMax() end

--- @return integer
function Vec2i:GetMin() end

--- @param p1 integer
--- @return boolean
function Vec2i:IsWithin(p1) end

--- @param p1 integer
--- @return boolean
function Vec2i:IsIn(p1) end

--- @param p1 integer
--- @return nil
function Vec2i:Insert(p1) end

--- @return Vec2i
function Vec2i:GetAbs() end

--- @param p1 Vec2i
--- @return number
function Vec2i:GetAvg(p1) end

--- @return integer
function Vec2i:GetOr() end

--- @return integer
function Vec2i:GetXor() end

--- @return integer
function Vec2i:GetAnd() end

--- @return Vec2i
function Vec2i:XY() end

--- @return Vec2i
function Vec2i:YX() end

--- @return Vec2i
function Vec2i:GetUnit() end

--- @return Vec2i
function Vec2i:GetUnitSafe() end

--- @return Vec2i
function Vec2i:SetAbs() end

--- @param p1 Vec2i
--- @param p2 Vec2
--- @return number
function Vec2i:Dot(p1, p2) end

--- @param p1 Vec2i
--- @param p2 Vec2i
--- @return integer
function Vec2i:Dot(p1, p2) end

--- @param p1 Vec2i
--- @param p2 Vec2
--- @return Vec3
function Vec2i:Cross(p1, p2) end

--- @param p1 Vec2i
--- @param p2 Vec2i
--- @return Vec3i
function Vec2i:Cross(p1, p2) end

--- @param p1 Vec2i
--- @param p2 Vec2i
--- @param p3 integer
--- @return Vec2
function Vec2i:Lerp(p1, p2, p3) end

--- @param p1 Vec2i
--- @param p2 Vec2i
--- @param p3 integer
--- @return Vec2
function Vec2i:Mix(p1, p2, p3) end

--- @param p1 Vec2i
--- @return boolean
function Vec2i:IsZero(p1) end

--- @param p1 Vec2i
--- @return number
function Vec2i:Length(p1) end

--- @param p1 Vec2i
--- @return number
function Vec2i:SqrLength(p1) end

--- @param p1 Vec2i
--- @return Angle
function Vec2i:GetAngle(p1) end

--- @param p1 Vec2i
--- @return number
function Vec2i:GetAngleRad(p1) end

--- @param p1 Vec2i
--- @return Vec2
function Vec2i:GetNormalized(p1) end

--- @param p1 Vec2i
--- @param p2 number
--- @return Vec2
function Vec2i:GetNormalizedTo(p1, p2) end

--- @param p1 Vec2i
--- @param p2 Vec2i
--- @param p3 Vec2i
--- @return nil
function Vec2i:Clamp(p1, p2, p3) end

--- @param p1 Vec2i
--- @param p2 integer
--- @param p3 integer
--- @return nil
function Vec2i:Clamp(p1, p2, p3) end

--- @param p1 Vec2i
--- @param p2 Vec2i
--- @param p3 Vec2i
--- @return Vec2i
function Vec2i:GetClamped(p1, p2, p3) end

--- @param p1 Vec2i
--- @param p2 integer
--- @param p3 integer
--- @return Vec2i
function Vec2i:GetClamped(p1, p2, p3) end

--- @param p1 Vec2i
--- @return nil
function Vec2i:Ceil(p1) end

--- @param p1 Vec2i
--- @return Vec2i
function Vec2i:GetCeiled(p1) end

--- @param p1 Vec2i
--- @return nil
function Vec2i:Floor(p1) end

--- @param p1 Vec2i
--- @return Vec2i
function Vec2i:GetFloored(p1) end

--- @param p1 Vec2i
--- @return nil
function Vec2i:Round(p1) end

--- @param p1 Vec2i
--- @return Vec2i
function Vec2i:GetRounded(p1) end

--- @param p1 Vec2i
--- @param p2 Vec2i
--- @return number
function Vec2i:DistanceTo(p1, p2) end

--- @param p1 Vec2i
--- @param p2 Vec2i
--- @param p3 number
--- @return Vec2
function Vec2i:GetMorphedTo(p1, p2, p3) end

--- @return nil
function Vec2i:RotateRight90() end

--- @param p1 Vec2i
--- @param p2 Angle
--- @return Vec2
function Vec2i:GetRotatedRight(p1, p2) end

--- @param p1 Vec2i
--- @param p2 number
--- @return Vec2
function Vec2i:GetRotatedRight(p1, p2) end

--- @return Vec2i
function Vec2i:GetRotatedRight90() end

--- @return nil
function Vec2i:RotateLeft90() end

--- @param p1 Vec2i
--- @param p2 Angle
--- @return Vec2
function Vec2i:GetRotatedLeft(p1, p2) end

--- @param p1 Vec2i
--- @param p2 number
--- @return Vec2
function Vec2i:GetRotatedLeft(p1, p2) end

--- @return Vec2i
function Vec2i:GetRotatedLeft90() end

--- @return nil
function Vec2i:Rotate90() end

--- @param p1 Vec2i
--- @param p2 Angle
--- @return Vec2
function Vec2i:GetRotated(p1, p2) end

--- @param p1 Vec2i
--- @param p2 number
--- @return Vec2
function Vec2i:GetRotated(p1, p2) end

--- @return Vec2i
function Vec2i:GetRotated90() end

--[[

Representation of 3D vectors and points.

This structure is used throughout Atomontage to pass 3D positions and directions around. It also contains functions for doing common vector operations.

:::tip My tip

Wwo!!

:::

:::danger Take care

This action is dangerous

:::

[View Documentation](https://docs.atomontage.com/api/Vec3)
]]
--- @class Vec3
--- @field x number
--- @field y number
--- @field z number
--- @field length number
--- @field zero Vec3
--- @field up Vec3
--- @field right Vec3
--- @field forward Vec3
--- @field normalized Vec3
--- @field down Vec3
--- @field left Vec3
--- @field back Vec3
Vec3 = {}

--[[
Returns Vec3(0, 0, 0).

```lua
local vec = Vec3()
```

[View Documentation](https://docs.atomontage.com/api/Vec3#Vec3)
]]
--- @return Vec3
function Vec3() end

--[[
```lua
local vec = Vec3(0.5, 10, 33.33)
```

[View Documentation](https://docs.atomontage.com/api/Vec3#Vec3-float-float-float)
]]
--- @param p1 number
--- @param p2 number
--- @param p3 number
--- @return Vec3
function Vec3(p1, p2, p3) end

--- @param p1 integer
--- @param p2 integer
--- @param p3 integer
--- @return Vec3
function Vec3(p1, p2, p3) end

--- @param p1 number
--- @return Vec3
function Vec3(p1) end

--- @return Vec3
function Vec3() end

--- @return Vec3
function Vec3() end

--[[
Metamethod overload to multiply vec3 with float number 
```lua
local vec = Vec3(0, 10, 0)
local res = vec * 3 --res is Vec3(0, 30, 0)
```

[View Documentation](https://docs.atomontage.com/api/Vec3#Vec3-mul-Vec3-float)
]]
--- @param p1 Vec3
--- @param p2 number
--- @return Vec3
function Vec3:__mul(p1, p2) end

--- @param p1 number
--- @param p2 Vec3
--- @return Vec3
function Vec3:__mul(p1, p2) end

--- @param p1 Vec3
--- @param p2 Vec3
--- @return Vec3
function Vec3:__mul(p1, p2) end

--- @param p1 Vec3
--- @param p2 number
--- @return Vec3
function Vec3:__div(p1, p2) end

--- @param p1 Vec3
--- @param p2 Vec3
--- @return Vec3
function Vec3:__div(p1, p2) end

--- @param p1 Vec3
--- @param p2 Vec3
--- @return Vec3
function Vec3:__add(p1, p2) end

--- @param p1 Vec3
--- @param p2 Vec3
--- @return Vec3
function Vec3:__sub(p1, p2) end

--- @param p1 Vec3
--- @param p2 Vec3
--- @return Vec3
function Vec3:__unm(p1, p2) end

--- @param p1 Vec3
--- @param p2 Vec3
--- @return number
function Vec3:Dot(p1, p2) end

--- @param p1 Vec3
--- @param p2 Vec3
--- @param p3 number
--- @return Vec3
function Vec3:Lerp(p1, p2, p3) end

--- @param p1 Vec3
--- @param p2 Vec3
--- @param p3 number
--- @return Vec3
function Vec3:Mix(p1, p2, p3) end

--- @param p1 Vec3
--- @param p2 number
--- @param p3 number
--- @return nil
function Vec3:Clamp(p1, p2, p3) end

--- @param p1 Vec3
--- @param p2 number
--- @param p3 number
--- @return Vec3
function Vec3:GetClamped(p1, p2, p3) end

--- @param p1 Vec3
--- @return nil
function Vec3:Ceil(p1) end

--- @param p1 Vec3
--- @return Vec3
function Vec3:GetCeiled(p1) end

--- @param p1 Vec3
--- @return nil
function Vec3:Floor(p1) end

--- @param p1 Vec3
--- @return Vec3
function Vec3:GetFloored(p1) end

--- @param p1 Vec3
--- @return nil
function Vec3:Round(p1) end

--- @param p1 Vec3
--- @return Vec3
function Vec3:GetRounded(p1) end

--- @param p1 Vec3
--- @param p2 number
--- @return nil
function Vec3:SetLength(p1, p2) end

--- @param p1 Vec3
--- @param p2 Vec3
--- @return number
function Vec3:Length(p1, p2) end

--- @param p1 Vec3
--- @return number
function Vec3:Length(p1) end

--- @param p1 Mat4
--- @param p2 Vec3
--- @return Vec4
function Vec3:__mul(p1, p2) end

--- @param p1 Vec3
--- @return Vec3
function Vec3(p1) end

--- @param p1 Vec3i
--- @return Vec3
function Vec3(p1) end

--- @param p1 Vec2
--- @param p2 number
--- @return Vec3
function Vec3(p1, p2) end

--- @param p1 structAsObject
--- @return Vec3
function Vec3(p1) end

--- @param p1 structAsRawPointegerer
--- @return Vec3
function Vec3(p1) end

--- @param p1 structAsObject
--- @return Vec3
function Vec3(p1) end

--- @param p1 structAsRawPointegerer
--- @return Vec3
function Vec3(p1) end

--- @param p1 Vec3
--- @param p2 integer
--- @return number
function Vec3:__index(p1, p2) end

--- @param p1 Vec3
--- @param p2 integer
--- @param p3 number
--- @return nil
function Vec3:__newindex(p1, p2, p3) end

--- @param p1 Vec3
--- @param p2 Quat
--- @return Vec3
function Vec3:__mul(p1, p2) end

--- @param p1 Vec3
--- @param p2 Vec3i
--- @return Vec3
function Vec3:__mul(p1, p2) end

--- @param p1 Vec3
--- @param p2 Vec3i
--- @return Vec3
function Vec3:__div(p1, p2) end

--- @param p1 Vec3
--- @param p2 Vec3i
--- @return Vec3
function Vec3:__add(p1, p2) end

--- @param p1 Vec3
--- @param p2 Vec3i
--- @return Vec3
function Vec3:__sub(p1, p2) end

--- @param p1 Vec3
--- @param p2 Vec3i
--- @return boolean
function Vec3:__eq(p1, p2) end

--- @param p1 Vec3
--- @param p2 Vec3
--- @return boolean
function Vec3:__eq(p1, p2) end

--- @param p1 Vec3
--- @param p2 Vec3
--- @return number
function Vec3:__len(p1, p2) end

--- @return number
function Vec3:Sum() end

--- @return number
function Vec3:GetMul() end

--- @return number
function Vec3:Prod() end

--- @param p1 Vec3
--- @param p2 number
--- @return Vec3
function Vec3:GetPow(p1, p2) end

--- @return number
function Vec3:LinLen() end

--- @return number
function Vec3:Len() end

--- @return number
function Vec3:SqLen() end

--- @return number
function Vec3:MaxComponent() end

--- @return number
function Vec3:MinComponent() end

--- @return number
function Vec3:GetMax() end

--- @return number
function Vec3:GetMin() end

--- @return number
function Vec3:GetMid() end

--- @return number
function Vec3:MidComponent() end

--- @param p1 number
--- @return boolean
function Vec3:IsIn(p1) end

--- @param p1 number
--- @return integer
function Vec3:GetCompIdx(p1) end

--- @param p1 number
--- @return integer
function Vec3:GetCompIdxSafe(p1) end

--- @return integer
function Vec3:GetMinIndex() end

--- @return integer
function Vec3:GetMidIndex() end

--- @return integer
function Vec3:GetMaxIndex() end

--- @param p1 number
--- @return Vec3
function Vec3:GetGreaterSigned(p1) end

--- @return Vec3
function Vec3:GetAbs() end

--- @return number
function Vec3:GetAvg() end

--- @param p1 Vec3
--- @return Vec2
function Vec3:V2(p1) end

--- @return Vec2
function Vec3:XY() end

--- @return Vec2
function Vec3:XZ() end

--- @return Vec2
function Vec3:YX() end

--- @return Vec2
function Vec3:YZ() end

--- @return Vec2
function Vec3:ZX() end

--- @return Vec2
function Vec3:ZY() end

--- @return Vec3
function Vec3:X0Z() end

--- @return Vec3
function Vec3:XZY() end

--- @param p1 integer
--- @param p2 integer
--- @return Vec2
function Vec3:UV(p1, p2) end

--- @param p1 integer
--- @param p2 integer
--- @param p3 integer
--- @return Vec3
function Vec3:UVW(p1, p2, p3) end

--- @return boolean
function Vec3:IsAnyNaN() end

--- @return Vec3
function Vec3:GetUnit() end

--- @return Vec3
function Vec3:GetUnitSafe() end

--- @return Vec3
function Vec3:SetAbs() end

--- @param p1 Vec3
--- @param p2 Vec3i
--- @return number
function Vec3:Dot(p1, p2) end

--- @param p1 Vec3
--- @param p2 Vec3i
--- @return Vec3
function Vec3:Cross(p1, p2) end

--- @param p1 Vec3
--- @param p2 Vec3
--- @return Vec3
function Vec3:Cross(p1, p2) end

--- @return Vec3
function Vec3:Normalize() end

--- @return Vec3
function Vec3:NormalizeSafe() end

--- @return Vec3
function Vec3:GetNormalized() end

--- @return Vec3
function Vec3:GetNormalizedSafe() end

--- @param p1 number
--- @return Vec3
function Vec3:ClampRadius(p1) end

--- @return Vec3
function Vec3:Nonzero() end

--- @return Vec3
function Vec3:Signs() end

--- @return Vec3
function Vec3:SignsUnits() end

--- @return Vec3i
function Vec3:Signsi() end

--- @return Vec3i
function Vec3:SignsUnitsi32() end

--- @return Vec3i
function Vec3:GetVec3i() end

--- @param p1 Vec3
--- @return Vec3
function Vec3:IsNaN(p1) end

--- @param p1 Vec3
--- @return boolean
function Vec3:IsZero(p1) end

--- @param p1 Vec3
--- @param p2 Vec3
--- @return number
function Vec3:DistanceTo(p1, p2) end

--- @class Vec3i
--- @field x integer
--- @field y integer
--- @field z integer
--- @field length number
--- @field normalized Vec3
--- @field zero Vec3i
--- @field up Vec3i
--- @field right Vec3i
--- @field forward Vec3i
--- @field down Vec3i
--- @field left Vec3i
--- @field back Vec3i
Vec3i = {}

--- @return Vec3i
function Vec3i() end

--- @param p1 integer
--- @param p2 integer
--- @param p3 integer
--- @return Vec3i
function Vec3i(p1, p2, p3) end

--- @param p1 Vec3
--- @return Vec3i
function Vec3i(p1) end

--- @param p1 integer
--- @return Vec3i
function Vec3i(p1) end

--- @param p1 Vec3i
--- @return Vec3i
function Vec3i(p1) end

--- @return Vec3i
function Vec3i() end

--- @param p1 structAsObject
--- @return Vec3i
function Vec3i(p1) end

--- @param p1 structAsRawPointegerer
--- @return Vec3i
function Vec3i(p1) end

--- @return Vec3i
function Vec3i() end

--- @param p1 structAsObject
--- @return Vec3i
function Vec3i(p1) end

--- @param p1 structAsRawPointegerer
--- @return Vec3i
function Vec3i(p1) end

--- @param p1 Vec3i
--- @param p2 integer
--- @return integer
function Vec3i:__index(p1, p2) end

--- @param p1 Vec3i
--- @param p2 integer
--- @param p3 integer
--- @return nil
function Vec3i:__newindex(p1, p2, p3) end

--- @param p1 Vec3i
--- @param p2 Vec3
--- @return Vec3
function Vec3i:__mul(p1, p2) end

--- @param p1 Vec3i
--- @param p2 integer
--- @return Vec3i
function Vec3i:__mul(p1, p2) end

--- @param p1 integer
--- @param p2 Vec3i
--- @return Vec3i
function Vec3i:__mul(p1, p2) end

--- @param p1 Vec3i
--- @param p2 Vec3i
--- @return Vec3i
function Vec3i:__mul(p1, p2) end

--- @param p1 Vec3i
--- @param p2 Vec3
--- @return Vec3
function Vec3i:__div(p1, p2) end

--- @param p1 Vec3i
--- @param p2 integer
--- @return Vec3i
function Vec3i:__div(p1, p2) end

--- @param p1 Vec3i
--- @param p2 Vec3i
--- @return Vec3i
function Vec3i:__div(p1, p2) end

--- @param p1 Vec3i
--- @param p2 Vec3
--- @return Vec3
function Vec3i:__add(p1, p2) end

--- @param p1 Vec3i
--- @param p2 Vec3i
--- @return Vec3i
function Vec3i:__add(p1, p2) end

--- @param p1 Vec3i
--- @param p2 Vec3
--- @return Vec3
function Vec3i:__sub(p1, p2) end

--- @param p1 Vec3i
--- @param p2 Vec3i
--- @return Vec3i
function Vec3i:__sub(p1, p2) end

--- @param p1 Vec3i
--- @param p2 Vec3i
--- @return Vec3i
function Vec3i:__unm(p1, p2) end

--- @param p1 Vec3i
--- @param p2 Vec3
--- @return boolean
function Vec3i:__eq(p1, p2) end

--- @param p1 Vec3i
--- @param p2 Vec3i
--- @return boolean
function Vec3i:__eq(p1, p2) end

--- @return number
function Vec3i:__len() end

--- @param p1 Vec3i
--- @param p2 integer
--- @return Vec3i
function Vec3i:__mod(p1, p2) end

--- @param p1 Vec3i
--- @param p2 Vec3i
--- @return Vec3i
function Vec3i:__mod(p1, p2) end

--- @param p1 Vec3i
--- @param p2 integer
--- @return Vec3i
function Vec3i:__band(p1, p2) end

--- @param p1 Vec3i
--- @param p2 Vec3i
--- @return Vec3i
function Vec3i:__band(p1, p2) end

--- @param p1 Vec3i
--- @param p2 integer
--- @return Vec3i
function Vec3i:__bor(p1, p2) end

--- @param p1 Vec3i
--- @param p2 Vec3i
--- @return Vec3i
function Vec3i:__bor(p1, p2) end

--- @param p1 Vec3i
--- @param p2 integer
--- @return Vec3i
function Vec3i:__bxor(p1, p2) end

--- @param p1 Vec3i
--- @param p2 Vec3i
--- @return Vec3i
function Vec3i:__bxor(p1, p2) end

--- @param p1 Vec3i
--- @param p2 Vec3i
--- @return Vec3i
function Vec3i:__bnot(p1, p2) end

--- @param p1 Vec3i
--- @param p2 integer
--- @return Vec3i
function Vec3i:__shl(p1, p2) end

--- @param p1 Vec3i
--- @param p2 Vec3i
--- @return Vec3i
function Vec3i:__shl(p1, p2) end

--- @param p1 Vec3i
--- @param p2 integer
--- @return Vec3i
function Vec3i:__shr(p1, p2) end

--- @param p1 Vec3i
--- @param p2 Vec3i
--- @return Vec3i
function Vec3i:__shr(p1, p2) end

--- @return integer
function Vec3i:Sum() end

--- @return number
function Vec3i:Prod() end

--- @param p1 Vec3i
--- @param p2 number
--- @return Vec3
function Vec3i:GetPow(p1, p2) end

--- @return integer
function Vec3i:LinLen() end

--- @return number
function Vec3i:Len() end

--- @return number
function Vec3i:SqLen() end

--- @return integer
function Vec3i:MaxComponent() end

--- @return integer
function Vec3i:MinComponent() end

--- @return integer
function Vec3i:GetMax() end

--- @return integer
function Vec3i:GetMin() end

--- @param p1 Vec3i
--- @return number
function Vec3i:GetMid(p1) end

--- @return integer
function Vec3i:MidComponent() end

--- @param p1 integer
--- @return boolean
function Vec3i:IsIn(p1) end

--- @param p1 integer
--- @return integer
function Vec3i:GetCompIdx(p1) end

--- @param p1 integer
--- @return integer
function Vec3i:GetCompIdxSafe(p1) end

--- @return integer
function Vec3i:GetMinIndex() end

--- @return integer
function Vec3i:GetMidIndex() end

--- @return integer
function Vec3i:GetMaxIndex() end

--- @param p1 integer
--- @return Vec3i
function Vec3i:GetGreaterSigned(p1) end

--- @return Vec3i
function Vec3i:GetAbs() end

--- @param p1 Vec3i
--- @return number
function Vec3i:GetAvg(p1) end

--- @param p1 Vec3i
--- @return Vec2i
function Vec3i:V2(p1) end

--- @return Vec2i
function Vec3i:XY() end

--- @return Vec2i
function Vec3i:XZ() end

--- @return Vec2i
function Vec3i:YX() end

--- @return Vec2i
function Vec3i:YZ() end

--- @return Vec2i
function Vec3i:ZX() end

--- @return Vec2i
function Vec3i:ZY() end

--- @return Vec3i
function Vec3i:X0Z() end

--- @return Vec3i
function Vec3i:XZY() end

--- @param p1 integer
--- @param p2 integer
--- @return Vec2i
function Vec3i:UV(p1, p2) end

--- @param p1 integer
--- @param p2 integer
--- @param p3 integer
--- @return Vec3i
function Vec3i:UVW(p1, p2, p3) end

--- @return integer
function Vec3i:GetOr() end

--- @return integer
function Vec3i:GetXor() end

--- @return integer
function Vec3i:GetAnd() end

--- @return integer
function Vec3i:GetMul() end

--- @return Vec3i
function Vec3i:GetUnit() end

--- @return Vec3i
function Vec3i:GetUnitSafe() end

--- @return Vec3i
function Vec3i:SetAbs() end

--- @param p1 Vec3i
--- @param p2 Vec3
--- @return number
function Vec3i:Dot(p1, p2) end

--- @param p1 Vec3i
--- @param p2 Vec3i
--- @return integer
function Vec3i:Dot(p1, p2) end

--- @param p1 Vec3i
--- @param p2 Vec3
--- @return Vec3
function Vec3i:Cross(p1, p2) end

--- @param p1 Vec3i
--- @param p2 Vec3i
--- @return Vec3i
function Vec3i:Cross(p1, p2) end

--- @param p1 Vec3i
--- @param p2 Vec3i
--- @param p3 integer
--- @return Vec3
function Vec3i:Lerp(p1, p2, p3) end

--- @param p1 Vec3i
--- @param p2 Vec3i
--- @param p3 integer
--- @return Vec3
function Vec3i:Mix(p1, p2, p3) end

--- @param p1 Vec3i
--- @return boolean
function Vec3i:IsZero(p1) end

--- @return number
function Vec3i:Length() end

--- @return number
function Vec3i:SqrLength() end

--- @param p1 Vec3i
--- @return Vec3
function Vec3i:GetNormalized(p1) end

--- @param p1 Vec3i
--- @return Vec3
function Vec3i:GetNormalizedSafe(p1) end

--- @param p1 Vec3i
--- @param p2 Vec3i
--- @param p3 Vec3i
--- @return nil
function Vec3i:Clamp(p1, p2, p3) end

--- @param p1 Vec3i
--- @param p2 integer
--- @param p3 integer
--- @return nil
function Vec3i:Clamp(p1, p2, p3) end

--- @param p1 Vec3i
--- @param p2 Vec3i
--- @param p3 Vec3i
--- @return Vec3i
function Vec3i:GetClamped(p1, p2, p3) end

--- @param p1 Vec3i
--- @param p2 integer
--- @param p3 integer
--- @return Vec3i
function Vec3i:GetClamped(p1, p2, p3) end

--- @param p1 number
--- @return Vec3i
function Vec3i:ClampRadius(p1) end

--- @return Vec3i
function Vec3i:Nonzero() end

--- @return Vec3i
function Vec3i:Signs() end

--- @return Vec3i
function Vec3i:SignsUnits() end

--- @return Vec3i
function Vec3i:Signsi() end

--- @return Vec3i
function Vec3i:SignsUnitsi32() end

--- @param p1 Vec3i
--- @return nil
function Vec3i:Ceil(p1) end

--- @param p1 Vec3i
--- @return Vec3i
function Vec3i:GetCeiled(p1) end

--- @param p1 Vec3i
--- @return nil
function Vec3i:Floor(p1) end

--- @param p1 Vec3i
--- @return Vec3i
function Vec3i:GetFloored(p1) end

--- @param p1 Vec3i
--- @return nil
function Vec3i:Round(p1) end

--- @param p1 Vec3i
--- @return Vec3i
function Vec3i:GetRounded(p1) end

--- @param p1 Vec3i
--- @param p2 Vec3i
--- @return number
function Vec3i:DistanceTo(p1, p2) end

--- @param p1 Vec3i
--- @param p2 Vec3i
--- @return number
function Vec3i:Length(p1, p2) end

--- @param p1 Vec3i
--- @return number
function Vec3i:Length(p1) end

--- @class Vec4
--- @field x number
--- @field y number
--- @field z number
--- @field w number
--- @field zero Vec4
--- @field length number
--- @field normalized Vec4
Vec4 = {}

--- @return Vec4
function Vec4() end

--- @param p1 number
--- @param p2 number
--- @param p3 number
--- @param p4 number
--- @return Vec4
function Vec4(p1, p2, p3, p4) end

--- @param p1 integer
--- @param p2 integer
--- @param p3 integer
--- @param p4 integer
--- @return Vec4
function Vec4(p1, p2, p3, p4) end

--- @param p1 number
--- @return Vec4
function Vec4(p1) end

--- @return Vec4
function Vec4() end

--- @return Vec4
function Vec4() end

--- @param p1 Mat4
--- @param p2 Vec4
--- @return Vec4
function Vec4:__mul(p1, p2) end

--- @param p1 Vec4
--- @param p2 number
--- @return Vec4
function Vec4:__mul(p1, p2) end

--- @param p1 number
--- @param p2 Vec4
--- @return Vec4
function Vec4:__mul(p1, p2) end

--- @param p1 Vec4
--- @param p2 Vec4
--- @return Vec4
function Vec4:__mul(p1, p2) end

--- @param p1 Vec4
--- @param p2 number
--- @return Vec4
function Vec4:__div(p1, p2) end

--- @param p1 Vec4
--- @param p2 Vec4
--- @return Vec4
function Vec4:__div(p1, p2) end

--- @param p1 Vec4
--- @param p2 Vec4
--- @return Vec4
function Vec4:__add(p1, p2) end

--- @param p1 Vec4
--- @param p2 Vec4
--- @return Vec4
function Vec4:__sub(p1, p2) end

--- @param p1 Vec4
--- @param p2 Vec4
--- @return Vec4
function Vec4:__unm(p1, p2) end

--- @param p1 Vec4
--- @return Vec4
function Vec4(p1) end

--- @param p1 Vec2
--- @param p2 number
--- @param p3 number
--- @return Vec4
function Vec4(p1, p2, p3) end

--- @param p1 Vec3
--- @param p2 number
--- @return Vec4
function Vec4(p1, p2) end

--- @param p1 structAsObject
--- @return Vec4
function Vec4(p1) end

--- @param p1 structAsRawPointegerer
--- @return Vec4
function Vec4(p1) end

--- @param p1 structAsObject
--- @return Vec4
function Vec4(p1) end

--- @param p1 structAsRawPointegerer
--- @return Vec4
function Vec4(p1) end

--- @param p1 Vec4
--- @param p2 integer
--- @return number
function Vec4:__index(p1, p2) end

--- @param p1 Vec4
--- @param p2 integer
--- @param p3 number
--- @return nil
function Vec4:__newindex(p1, p2, p3) end

--- @param p1 Vec4
--- @param p2 Quat
--- @return Vec4
function Vec4:__mul(p1, p2) end

--- @param p1 Vec4
--- @param p2 Vec4
--- @return boolean
function Vec4:__eq(p1, p2) end

--- @param p1 Vec4
--- @param p2 Vec4
--- @return number
function Vec4:__len(p1, p2) end

--- @return number
function Vec4:Sum() end

--- @return number
function Vec4:GetMul() end

--- @return number
function Vec4:Prod() end

--- @return number
function Vec4:LinLen() end

--- @return number
function Vec4:Len() end

--- @return number
function Vec4:SqLen() end

--- @return number
function Vec4:MaxComponent() end

--- @return number
function Vec4:MinComponent() end

--- @return integer
function Vec4:GetMinIndex() end

--- @return integer
function Vec4:GetMaxIndex() end

--- @return Vec4
function Vec4:GetAbs() end

--- @param p1 Vec4
--- @return Vec2
function Vec4:V2(p1) end

--- @param p1 Vec4
--- @return Vec3
function Vec4:V3(p1) end

--- @return Vec2
function Vec4:XY() end

--- @return Vec2
function Vec4:XZ() end

--- @return Vec2
function Vec4:YZ() end

--- @return Vec3
function Vec4:YZW() end

--- @return Vec3
function Vec4:ZYX() end

--- @return Vec3
function Vec4:ZWX() end

--- @return boolean
function Vec4:IsAnyNaN() end

--- @return Vec4
function Vec4:GetUnit() end

--- @return Vec4
function Vec4:GetUnitSafe() end

--- @return Vec4
function Vec4:SetAbs() end

--- @param p1 Vec4
--- @param p2 Vec4
--- @return number
function Vec4:Dot(p1, p2) end

--- @param p1 Vec4
--- @param p2 Vec4
--- @param p3 number
--- @return Vec4
function Vec4:Lerp(p1, p2, p3) end

--- @param p1 Vec4
--- @param p2 Vec4
--- @param p3 number
--- @return Vec4
function Vec4:Mix(p1, p2, p3) end

--- @return Vec4
function Vec4:Normalize() end

--- @return Vec4
function Vec4:NormalizeSafe() end

--- @return Vec4
function Vec4:GetNormalized() end

--- @return Vec4
function Vec4:GetNormalizedSafe() end

--- @param p1 Vec4
--- @param p2 number
--- @param p3 number
--- @return nil
function Vec4:Clamp(p1, p2, p3) end

--- @param p1 Vec4
--- @param p2 number
--- @param p3 number
--- @return Vec4
function Vec4:GetClamped(p1, p2, p3) end

--- @return Vec4
function Vec4:Signs() end

--- @param p1 Vec4
--- @return nil
function Vec4:Ceil(p1) end

--- @param p1 Vec4
--- @return Vec4
function Vec4:GetCeiled(p1) end

--- @param p1 Vec4
--- @return nil
function Vec4:Floor(p1) end

--- @param p1 Vec4
--- @return Vec4
function Vec4:GetFloored(p1) end

--- @param p1 Vec4
--- @return nil
function Vec4:Round(p1) end

--- @param p1 Vec4
--- @return Vec4
function Vec4:GetRounded(p1) end

--- @param p1 Vec4
--- @param p2 number
--- @return nil
function Vec4:SetLength(p1, p2) end

--- @param p1 Vec4
--- @param p2 Vec4
--- @return number
function Vec4:Length(p1, p2) end

--- @param p1 Vec4
--- @return number
function Vec4:Length(p1) end

--- @param p1 Vec4
--- @return Vec4
function Vec4:IsNaN(p1) end

--- @param p1 Vec4
--- @return boolean
function Vec4:IsZero(p1) end

--- @param p1 Vec4
--- @param p2 Vec4
--- @return number
function Vec4:DistanceTo(p1, p2) end

--- @class VoxelDB
--- @field autoLightingUpdate boolean
--- @field voxelDim integer
VoxelDB = {}

--- @return VoxelDB
function VoxelDB() end

--- @return nil
function VoxelDB:Clear() end

--- @return nil
function VoxelDB:UseTemporaryLayers() end

--- @return nil
function VoxelDB:Flush() end

--- @param p1 number
--- @return integer
function VoxelDB:FromWorld(p1) end

--- @param p1 number
--- @return number
function VoxelDB:ToWorld(p1) end

--- @param p1 Vec3i
--- @param p2 boolean
--- @return nil
function VoxelDB:SetMask(p1, p2) end

--- @param p1 Vec3i
--- @return boolean
function VoxelDB:GetMask(p1) end

--- @param p1 Vec3i
--- @return userdata
function VoxelDB:GetColor(p1) end

--- @param p1 integer
--- @param p2 Vec3i
--- @param p3 integer
--- @return nil
function VoxelDB:ClearShape(p1, p2, p3) end

--- @param p1 Vec3i
--- @param p2 integer
--- @return nil
function VoxelDB:ClearSphere(p1, p2) end

--- @param p1 Vec3i
--- @param p2 integer
--- @param p3 number
--- @param p4 number
--- @param p5 number
--- @return nil
function VoxelDB:InflateRadius(p1, p2, p3, p4, p5) end

--- @param p1 integer
--- @return nil
function VoxelDB:FreeTmpLayers(p1) end

--- @param p1 Vec3i
--- @param p2 Vec3i
--- @param p3 integer
--- @param p4 integer
--- @return nil
function VoxelDB:FillTmpLayers(p1, p2, p3, p4) end

--- @return nil
function VoxelDB:ClearContent() end

--- @param p1 string
--- @return boolean
function VoxelDB:Load(p1) end

--- @param p1 boolean
--- @return nil
function VoxelDB:RebuildLods(p1) end

--- @param p1 string
--- @param p2 string
--- @return boolean
function VoxelDB:CopyLayer(p1, p2) end

--- @param p1 string
--- @return boolean
function VoxelDB:ClearLayer(p1) end

--- @return nil
function VoxelDB:RemoveHiddenVoxelsC32() end

--- @return nil
function VoxelDB:RemoveHiddenVoxelsN16() end

--- @return table
function VoxelDB:GetInfo() end

--- @param p1 VoxelDB
--- @return nil
function VoxelDB:CopyTo(p1) end

--- @param p1 string
--- @param p2 string
--- @param p3 integer
--- @return boolean
function VoxelDB:Save(p1, p2, p3) end

--- @param p1 Vec3i
--- @param p2 integer
--- @param p3 integer
--- @param p4 userdata
--- @param p5 integer
--- @return VoxelInspectData
function VoxelDB:Inspect(p1, p2, p3, p4, p5) end

--- @return string
function VoxelDB:GetLayers() end

--- @param p1 Vec3
--- @return Vec3i
function VoxelDB:FromWorld(p1) end

--- @param p1 Vec3i
--- @return Vec3
function VoxelDB:ToWorld(p1) end

--- @param p1 Vec3i
--- @param p2 Vec3
--- @return nil
function VoxelDB:SetColor(p1, p2) end

--- @param p1 Vec3i
--- @return Vec3
function VoxelDB:GetNormal(p1) end

--- @param p1 Vec3i
--- @return Vec3
function VoxelDB:GetFilteredNormal(p1) end

--- @param p1 Vec3i
--- @param p2 Vec3
--- @param p3 number
--- @return userdata
function VoxelDB:TraceRay(p1, p2, p3) end

--- @param p1 Vec3i
--- @param p2 integer
--- @param p3 Vec3
--- @return nil
function VoxelDB:PaintSphere(p1, p2, p3) end

--- @param p1 Vec3i
--- @param p2 integer
--- @param p3 Vec3
--- @param p4 number
--- @param p5 number
--- @param p6 number
--- @return nil
function VoxelDB:PaintSphereBlend(p1, p2, p3, p4, p5, p6) end

--- @param p1 Vec3i
--- @param p2 integer
--- @param p3 Vec3
--- @return nil
function VoxelDB:MakeSphere(p1, p2, p3) end

--- @param p1 Vec3
--- @param p2 Quat
--- @param p3 number
--- @return nil
function VoxelDB:InstantiateIE(p1, p2, p3) end

--- @param p1 Vec3i
--- @param p2 Vec3
--- @param p3 number
--- @return userdata
function VoxelDB:TraceRayTmp(p1, p2, p3) end

--- @class VoxelData
--- @field resource string
--- @field type string
--- @field object Object
VoxelData = {}

--- @class VoxelInspectData
--- @field voxelSize number
--- @field texts string
--- @field positions userdata
VoxelInspectData = {}

--- @return VoxelInspectData
function VoxelInspectData() end

--- @class VoxelRender
--- @field type string
--- @field object Object
VoxelRender = {}

--- @class AttachmentFlags
AttachmentFlags = {
	-- test
	Depth = 0,
	DepthAndStencil = 1,
	-- bladdddla
	Color0 = 2,
	Color1 = 3,
	Color2 = 4,
	Color3 = 5,
}

--- @class BlendFactor
BlendFactor = {
	Zero = 0,
	SrcColor = 1,
	DstColor = 2,
	OneMinusDstColor = 3,
	SrcAlpha = 4,
	OneMinusSrcAlpha = 5,
	DstAlpha = 6,
	OneMinusDstAlpha = 7,
	One = 8,
	OneMinusSrcColor = 9,
	ConstantColor = 10,
	OneMinusConstantColor = 11,
	ConstantAlpha = 12,
	OneMinusConstantAlpha = 13,
	SrcAlphaSaturate = 14,
	Src1Color = 15,
	OneMinusSrc1Color = 16,
	Src1Alpha = 17,
	OneMinusSrc1Alpha = 18,
}

--- @class BlendOp
BlendOp = {
	Add = 0,
	Subtract = 1,
	ReverseSubtract = 2,
	Min = 3,
	Max = 4,
}

--- @class CpuArch
CpuArch = {
	Unknown = 0,
	X86 = 1,
	X86_64 = 2,
	Arm = 3,
	Arm64 = 4,
	Wasm = 5,
}

--- @class CullMode
CullMode = {
	None = 0,
	Front = 1,
	Back = 2,
	FrontAndBack = 3,
}

--- @class DepthBufferMode
DepthBufferMode = {
	None = 0,
	DepthOnly = 1,
	DepthAndStencil = 2,
}

--- @class DrawingCommandsFlags
DrawingCommandsFlags = {
	BaseVertex = 0,
	BaseInstance = 1,
}

--- @class FrontFaceWinding
FrontFaceWinding = {
	Clockwise = 0,
	CounterClockwise = 1,
}

--- @class Function
Function = {
	Never = 0,
	Less = 1,
	Equal = 2,
	Lequl = 3,
	Greater = 4,
	Notequal = 5,
	Gequal = 6,
	Always = 7,
}

--- @class LuaErrorType
LuaErrorType = {
	None = 0,
	DoFile = 1,
	Runtime = 2,
	UIAction = 3,
}

--- @class MemTarget
MemTarget = {
	SystemMem = 0,
	VideoMem = 1,
}

--- @class MessageLevel
MessageLevel = {
	Critical = 0,
	Error = 1,
	Warn = 2,
	Info = 3,
	Debug = 4,
	Trace = 5,
}

--- @class Operation
Operation = {
	Keep = 0,
	Zero = 1,
	Replace = 2,
	Increment = 3,
	IncrementWrap = 4,
	Decrement = 5,
	DecrementWrap = 6,
	Invert = 7,
}

--- @class PixelFormat
PixelFormat = {
	Unknown = 0,
	RGB888 = 1,
	RGBA8888 = 2,
	RGB565 = 3,
	RGBA5551 = 4,
	RGBA4444 = 5,
	BGR888 = 6,
	BGRA8888 = 7,
	Depth16 = 8,
	Depth24 = 9,
	Depth32 = 10,
	Depth24Stencil8 = 11,
	A8 = 12,
	LA88 = 13,
	R32f = 14,
	RGB32f = 15,
	RGBA32f = 16,
	R16f = 17,
	RGB16f = 18,
	RGBA16f = 19,
	DXT1 = 20,
	DXT1_with_ALPHA = 21,
	DXT3 = 22,
	DXT5 = 23,
	ATC_RGB = 24,
	ATC_RGBEA = 25,
	ATC_RGBIA = 26,
	ETC_RGB = 27,
	ETC2_RGB = 28,
	ETC2_RGBA_PUNCHTHROUGH_ALPHA = 29,
	ETC2_RGBA = 30,
	PVRTC4_RGB = 31,
	PVRTC2_RGB = 32,
	PVRTC4_RGBA = 33,
	PVRTC2_RGBA = 34,
	Int8 = 35,
	Int16 = 36,
	Int32 = 37,
	UInt8 = 38,
	UInt16 = 39,
	UInt32 = 40,
}

--- @class PolygonMode
PolygonMode = {
	Fill = 0,
	Line = 1,
	Point = 2,
}

--- @class PrimitiveTopology
PrimitiveTopology = {
	Points = 0,
	LineStrip = 1,
	Lines = 2,
	TriangleStrip = 3,
	TriangleFan = 4,
	Triangles = 5,
}

--- @class RTXShaderGroupType
RTXShaderGroupType = {
	General = 0,
	TrianglesHitGroup = 1,
	ProceduralHitGroup = 2,
}

--- @class RenderTargetAttachmentLayout
RenderTargetAttachmentLayout = {
	Undefined = 0,
	General = 1,
	ColorAttachmentOptimal = 2,
	DepthStencilAttachmentOptimal = 3,
	DepthStencilReadOnlyOptimal = 4,
	ShaderReadOnlyOptimal = 5,
	TransferSrcOptimal = 6,
	TransferDstOptimal = 7,
	Preinitialized = 8,
	DepthReadOnlyStencilAttachmentOptimal = 9,
	DepthAttachmentStencilReadOnlyOptimal = 10,
	PresentSrc = 11,
	SharedPresentSrc = 12,
	ShadingRateOptimal = 13,
	FragmentDensityMapOptimal = 14,
}

--- @class RenderTargetAttachmentLoadOp
RenderTargetAttachmentLoadOp = {
	Load = 0,
	Clear = 1,
	DontCare = 2,
}

--- @class RenderTargetAttachmentStoreOp
RenderTargetAttachmentStoreOp = {
	Store = 0,
	DontCare = 1,
}

--- @class ResourceMemoryUsage
ResourceMemoryUsage = {
	Unknown = 0,
	GpuOnly = 1,
	CpuToGpu = 2,
	GpuToCpu = 3,
}

--- @class ResourceState
ResourceState = {
	Unknown = 0,
	Undefined = 1,
	VertexBuffer = 2,
	ConstantBuffer = 3,
	IndexBuffer = 4,
	SBTBuffer = 5,
	RenderTarget = 6,
	UnorderedAccess = 7,
	DepthWrite = 8,
	DepthRead = 9,
	ShaderResource = 10,
	IndirectArgument = 11,
	CopyDest = 12,
	CopySource = 13,
	AccelerationStructure = 14,
	Present = 15,
}

--- @class ResourceStateTransitionMode
ResourceStateTransitionMode = {
	None = 0,
	Transition = 1,
	Verify = 2,
}

--- @class ResourceUsage
ResourceUsage = {
	Static = 0,
	Dynamic = 1,
	Stream = 2,
}

--- @class ShaderResourceType
ShaderResourceType = {
	Unknown = 0,
	Bool = 1,
	BoolVec2 = 2,
	BoolVec3 = 3,
	BoolVec4 = 4,
	Int = 5,
	IntVec2 = 6,
	IntVec3 = 7,
	IntVec4 = 8,
	UInt = 9,
	UIntVec2 = 10,
	UIntVec3 = 11,
	UIntVec4 = 12,
	Float = 13,
	FloatVec2 = 14,
	FloatVec3 = 15,
	FloatVec4 = 16,
	FloatMat2x2 = 17,
	FloatMat2x3 = 18,
	FloatMat2x4 = 19,
	FloatMat3x2 = 20,
	FloatMat3x3 = 21,
	FloatMat3x4 = 22,
	FloatMat4x2 = 23,
	FloatMat4x3 = 24,
	FloatMat4x4 = 25,
	Double = 26,
	DoubleVec2 = 27,
	DoubleVec3 = 28,
	DoubleVec4 = 29,
	DoubleMat2x2 = 30,
	DoubleMat2x3 = 31,
	DoubleMat2x4 = 32,
	DoubleMat3x2 = 33,
	DoubleMat3x3 = 34,
	DoubleMat3x4 = 35,
	DoubleMat4x2 = 36,
	DoubleMat4x3 = 37,
	DoubleMat4x4 = 38,
	Image = 39,
	Texture = 40,
	Buffer = 41,
	AccelerationStructure = 42,
}

--- @class SharePermission
SharePermission = {
	View = 0,
}

--- @class System
System = {
	Unknown = 0,
	Windows = 1,
	Linux = 2,
	WebBrowser = 3,
	MacOS = 4,
	iOS = 5,
	Android = 6,
}

--- @class TextureFiltering
TextureFiltering = {
	None = 0,
	Linear = 1,
	Bilinear = 2,
	Trilinear = 3,
	Anisotropic = 4,
}

--- @class TextureWrappingMode
TextureWrappingMode = {
	ClampToEdge = 0,
	Repeat = 1,
	MirroredRepeat = 2,
}

--- @class Type
Type = {
	Unknown = 0,
	TopLevel = 1,
	BottomLevel = 2,
}

--- @class UpdateFrequency
UpdateFrequency = {
	Once = 0,
	Frame = 1,
	ObjectFrame = 2,
	ObjectDraw = 3,
}

--- @class UsageFlagBits
UsageFlagBits = {
	UsageTransferSrcBIT = 0,
	UsageTransferDstBIT = 1,
	UsageUniformTexelBufferBIT = 2,
	UsageStorageTexelBufferBIT = 3,
	UsageUniformBufferBIT = 4,
	UsageStorageBufferBIT = 5,
	UsageIndexBufferBIT = 6,
	UsageVertexBufferBIT = 7,
	UsageIndirectBufferBIT = 8,
	UsageConditionalRenderingBIT = 9,
	UsageRayTracingBIT = 10,
	UsageShaderDeviceAddressBIT = 11,
}

--- @class VSyncMode
VSyncMode = {
	Default = 0,
	Enabled = 1,
	Disabled = 2,
	Adaptive = 3,
}

--- @class VertexComponent
VertexComponent = {
	Position0 = 0,
	Position1 = 1,
	Position2 = 2,
	Position3 = 3,
	TexCoord0 = 4,
	TexCoord1 = 5,
	TexCoord2 = 6,
	TexCoord3 = 7,
	TexCoord4 = 8,
	Color0 = 9,
	Color1 = 10,
	Index0 = 11,
	Index1 = 12,
	Normal0 = 13,
	Normal1 = 14,
	Tangent = 15,
	Bitangent = 16,
	Index = 17,
	Unknown = 18,
}

--- @class VertexComponentFormat
VertexComponentFormat = {
	Unknown = 0,
	Int8 = 1,
	Int8Vec2 = 2,
	Int8Vec3 = 3,
	Int8Vec4 = 4,
	Int16 = 5,
	Int16Vec2 = 6,
	Int16Vec3 = 7,
	Int16Vec4 = 8,
	Int32 = 9,
	Int32Vec2 = 10,
	Int32Vec3 = 11,
	Int32Vec4 = 12,
	UInt8 = 13,
	UInt8Vec2 = 14,
	UInt8Vec3 = 15,
	UInt8Vec4 = 16,
	UInt16 = 17,
	UInt16Vec2 = 18,
	UInt16Vec3 = 19,
	UInt16Vec4 = 20,
	UInt32 = 21,
	UInt32Vec2 = 22,
	UInt32Vec3 = 23,
	UInt32Vec4 = 24,
	Float = 25,
	FloatVec2 = 26,
	FloatVec3 = 27,
	FloatVec4 = 28,
}


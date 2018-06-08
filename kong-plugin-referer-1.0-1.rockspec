-- This file was automatically generated for the LuaDist project.

package = "kong-plugin-referer"
version = "1.0-1"

local pluginName = package:match("^kong%-plugin%-(.+)$")

supported_platforms = {"linux", "macosx"}
-- LuaDist source
source = {
  tag = "1.0-1",
  url = "git://github.com/LuaDist-testing/kong-plugin-referer.git"
}
-- Original source
-- source = {
--   url = "git://github.com/eyolas/kong-plugin-referer",
--   tag = "v1.0"
-- }

description = {
  summary = "Easily add referer access to your API by enabling this plugin",
  license = "MIT"
}

build = {
  type = "builtin",
  modules = {
    ["kong.plugins."..pluginName..".handler"] = "kong/plugins/"..pluginName.."/handler.lua",
    ["kong.plugins."..pluginName..".schema"] = "kong/plugins/"..pluginName.."/schema.lua"
  }
}
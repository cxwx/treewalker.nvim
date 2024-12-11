local lines = require("treewalker.lines")
local stub = require('luassert.stub')
local assert = require("luassert")
local load_fixture = require("tests.load_fixture")

describe("lines", function()
  describe(".get_line", function()
    it("gets the line", function()
      load_fixture("lua.lua", "lua")
      local line = lines.get_line(3)
      assert.equals("local M = {}", line)
    end)
  end)

  describe(".get_indent", function()
    it("gets the line", function()
      load_fixture("lua.lua", "lua")
      local indent = lines.get_start_col("  local line = lines.get_indent()")
      assert.equals(3, indent)
    end)
  end)
end)
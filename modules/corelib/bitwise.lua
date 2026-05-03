Bit = {}

function Bit.bit(p)
  return 2 ^ p
end

function Bit.hasBit(x, p)
  return x % (p + p) >= p
end

function Bit.setbit(x, p)
  return Bit.hasBit(x, p) and x or x + p
end

function Bit.clearbit(x, p)
  return Bit.hasBit(x, p) and x - p or x
end

-- Lua 5.2 bit32 compatibility shim for LuaJIT.
-- The C++ side registers the full bit32 library (lbitlib.cpp/luaopen_bit32).
-- This fallback ensures bit32 is available even if C++ registration is skipped.
if not bit32 and bit then
  bit32 = bit
end

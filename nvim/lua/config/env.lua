-- Load environment variables from .env file
local function load_env_file()
  local env_file = vim.fn.stdpath("config") .. "/.env"
  if vim.fn.filereadable(env_file) == 1 then
    for line in io.lines(env_file) do
      -- Skip comments and empty lines
      if not line:match("^%s*#") and line:match("%S") then
        local name, value = line:match("^%s*(%S+)%s*=%s*(.+)%s*$")
        if name and value then
          -- Remove quotes if they exist
          value = value:gsub("^[\"'](.-)[\"\']$", "%1")
          -- Set environment variable
          vim.fn.setenv(name, value)
        end
      end
    end
    print("Environment variables loaded from .env file")
  else
    print("No .env file found at: " .. env_file)
  end
end

-- Call the function to load environment variables
load_env_file()

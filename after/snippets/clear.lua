local function getYarnkedValue()
  local registers = vim.api.nvim_eval("execute('registers \"\"')")
  local index = 0;
  local result = "";
  for i in string.gmatch(registers, "%S+") do
    index = index + 1
    if index == 6 then
      result = i
    end
  end
  return result
end

-- NOTE: console.log("name: ", value)

return {
  s("log", {
    t("console.log(\""), f(getYarnkedValue), t(': \", '), f(getYarnkedValue), t(')')
  })
}

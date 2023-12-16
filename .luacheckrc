---@diagnostic disable: lowercase-global

ingnore = {
	"111", -- setting non-standard global variable
	"212/_.*", -- unsuded argument, for vars with "_" prefix
	"214", -- user variable with unsued hint ("_" prefix)
	"121", -- setting read-only global variable 'vim'
	"122", -- setting read-only field of global variable 'vim'
}

-- Global object defined by C code
read_globals = {
	"vim",
}

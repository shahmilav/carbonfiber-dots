-- [[ 
--  _         _  _       _
-- (_)       (_)| |     | |
--  _  _ __   _ | |_    | | _   _   __ _
-- | || '_ \ | || __|   | || | | | / _` |
-- | || | | || || |_  _ | || |_| || (_| |
-- |_||_| |_||_| \__|(_)|_| \__,_| \__,_|

-- ]]--

-- [[
-- The init.lua file typically has all the configuration for neovim.
-- However, in order to keep it manageable, it only sources three files:
-- 
-- * Plugins, 
-- * Keybindings (mappings), 
-- * and Defaults.
-- 
-- Seperate plugin configuration are in seperate files sourced in the plugins.lua file.
-- ]]

require('plugins')
require('mappings')
require('defaults')
require('neovide')

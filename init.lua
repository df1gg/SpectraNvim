
-- Core
require('core.options')
require('core.lazy')
require('core.colorschemas')
require('core.mappings')

-- Plugins configs
local utils = require('core.utils')
utils.require_all_in_dir('configs')

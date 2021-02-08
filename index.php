<?php

/**
 * @defgroup plugins_themes_default_fogs Default theme plugin
 */

/**
 * @file plugins/themes/defaultFogs/index.php
 *
 * Copyright (c) 2014-2020 Simon Fraser University
 * Copyright (c) 2003-2020 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * @ingroup plugins_themes_default_fogs
 * @brief Wrapper for default fogs theme plugin.
 *
 */

require_once('DefaultFogsChildThemePlugin.inc.php');

return new DefaultFogsChildThemePlugin();

?>

CREATE TABLE IF NOT EXISTS `#__sermondistributor_preacher` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`asset_id` INT(255) UNSIGNED NOT NULL DEFAULT '0',
	`alias` CHAR(64) NOT NULL DEFAULT '',
	`description` TEXT NOT NULL DEFAULT '',
	`email` VARCHAR(255) NOT NULL DEFAULT '',
	`icon` CHAR(64) NOT NULL DEFAULT '',
	`name` VARCHAR(255) NOT NULL DEFAULT '',
	`website` VARCHAR(255) NOT NULL DEFAULT '',
	`params` TEXT NOT NULL DEFAULT '',
	`published` tinyint(1) NOT NULL DEFAULT '1',
	`created_by` int(11) NOT NULL DEFAULT '0',
	`modified_by` int(11) NOT NULL DEFAULT '0',
	`created` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
	`modified` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
	`checked_out` int(11) NOT NULL,
	`checked_out_time` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
	`version` int(11) NOT NULL DEFAULT '1',
	`hits` int(11) NOT NULL DEFAULT '0',
	`access` int(11) DEFAULT NULL,
	`ordering` int(11) NOT NULL DEFAULT '0',
	`metakey` TEXT NOT NULL DEFAULT '',
	`metadesc` TEXT NOT NULL DEFAULT '',
	`metadata` TEXT NOT NULL DEFAULT '',
	PRIMARY KEY  (`id`),
	KEY `idx_access` (`access`),
	KEY `idx_checkout` (`checked_out`),
	KEY `idx_createdby` (`created_by`),
	KEY `idx_modifiedby` (`modified_by`),
	KEY `idx_state` (`published`),
	KEY `idx_name` (`name`),
	KEY `idx_alias` (`alias`)
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `#__sermondistributor_sermon` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`asset_id` INT(255) UNSIGNED NOT NULL DEFAULT '0',
	`alias` CHAR(64) NOT NULL DEFAULT '',
	`auto_sermons` TEXT NOT NULL DEFAULT '',
	`build` TINYINT(1) NOT NULL DEFAULT '1',
	`catid` INT(11) NOT NULL DEFAULT '0',
	`description` TEXT NOT NULL DEFAULT '',
	`icon` CHAR(64) NOT NULL DEFAULT '',
	`link_type` TINYINT(1) NOT NULL DEFAULT '1',
	`local_files` TEXT NOT NULL DEFAULT '',
	`manual_files` TEXT NOT NULL DEFAULT '',
	`name` VARCHAR(255) NOT NULL DEFAULT '',
	`not_required` INT(1) NOT NULL DEFAULT '0',
	`preacher` INT(11) NOT NULL DEFAULT '0',
	`scripture` VARCHAR(255) NOT NULL DEFAULT '',
	`series` INT(11) NOT NULL DEFAULT '0',
	`short_description` VARCHAR(255) NOT NULL DEFAULT '',
	`source` TINYINT(1) NOT NULL DEFAULT '0',
	`url` VARCHAR(255) NOT NULL DEFAULT '',
	`params` TEXT NOT NULL DEFAULT '',
	`published` tinyint(1) NOT NULL DEFAULT '1',
	`created_by` int(11) NOT NULL DEFAULT '0',
	`modified_by` int(11) NOT NULL DEFAULT '0',
	`created` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
	`modified` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
	`checked_out` int(11) NOT NULL,
	`checked_out_time` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
	`version` int(11) NOT NULL DEFAULT '1',
	`hits` int(11) NOT NULL DEFAULT '0',
	`access` int(11) DEFAULT NULL,
	`ordering` int(11) NOT NULL DEFAULT '0',
	`metakey` TEXT NOT NULL DEFAULT '',
	`metadesc` TEXT NOT NULL DEFAULT '',
	`metadata` TEXT NOT NULL DEFAULT '',
	PRIMARY KEY  (`id`),
	KEY `idx_access` (`access`),
	KEY `idx_checkout` (`checked_out`),
	KEY `idx_createdby` (`created_by`),
	KEY `idx_modifiedby` (`modified_by`),
	KEY `idx_state` (`published`),
	KEY `idx_name` (`name`),
	KEY `idx_preacher` (`preacher`),
	KEY `idx_series` (`series`),
	KEY `idx_catid` (`catid`),
	KEY `idx_link_type` (`link_type`),
	KEY `idx_alias` (`alias`),
	KEY `idx_build` (`build`)
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `#__sermondistributor_series` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`asset_id` INT(255) UNSIGNED NOT NULL DEFAULT '0',
	`alias` CHAR(64) NOT NULL DEFAULT '',
	`description` TEXT NOT NULL DEFAULT '',
	`icon` CHAR(64) NOT NULL DEFAULT '',
	`name` VARCHAR(255) NOT NULL DEFAULT '',
	`scripture` VARCHAR(255) NOT NULL DEFAULT '',
	`params` TEXT NOT NULL DEFAULT '',
	`published` tinyint(1) NOT NULL DEFAULT '1',
	`created_by` int(11) NOT NULL DEFAULT '0',
	`modified_by` int(11) NOT NULL DEFAULT '0',
	`created` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
	`modified` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
	`checked_out` int(11) NOT NULL,
	`checked_out_time` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
	`version` int(11) NOT NULL DEFAULT '1',
	`hits` int(11) NOT NULL DEFAULT '0',
	`access` int(11) DEFAULT NULL,
	`ordering` int(11) NOT NULL DEFAULT '0',
	`metakey` TEXT NOT NULL DEFAULT '',
	`metadesc` TEXT NOT NULL DEFAULT '',
	`metadata` TEXT NOT NULL DEFAULT '',
	PRIMARY KEY  (`id`),
	KEY `idx_access` (`access`),
	KEY `idx_checkout` (`checked_out`),
	KEY `idx_createdby` (`created_by`),
	KEY `idx_modifiedby` (`modified_by`),
	KEY `idx_state` (`published`),
	KEY `idx_name` (`name`),
	KEY `idx_alias` (`alias`)
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `#__sermondistributor_statistic` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`asset_id` INT(255) UNSIGNED NOT NULL DEFAULT '0',
	`counter` INT(64) NOT NULL DEFAULT '0',
	`filename` VARCHAR(255) NOT NULL DEFAULT '',
	`preacher` INT(11) NOT NULL DEFAULT '0',
	`series` INT(11) NOT NULL DEFAULT '0',
	`sermon` INT(11) NOT NULL DEFAULT '0',
	`params` TEXT NOT NULL DEFAULT '',
	`published` tinyint(1) NOT NULL DEFAULT '1',
	`created_by` int(11) NOT NULL DEFAULT '0',
	`modified_by` int(11) NOT NULL DEFAULT '0',
	`created` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
	`modified` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
	`checked_out` int(11) NOT NULL,
	`checked_out_time` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
	`version` int(11) NOT NULL DEFAULT '1',
	`hits` int(11) NOT NULL DEFAULT '0',
	`access` int(11) DEFAULT NULL,
	`ordering` int(11) NOT NULL DEFAULT '0',
	`metakey` TEXT NOT NULL DEFAULT '',
	`metadesc` TEXT NOT NULL DEFAULT '',
	`metadata` TEXT NOT NULL DEFAULT '',
	PRIMARY KEY  (`id`),
	KEY `idx_access` (`access`),
	KEY `idx_checkout` (`checked_out`),
	KEY `idx_createdby` (`created_by`),
	KEY `idx_modifiedby` (`modified_by`),
	KEY `idx_state` (`published`),
	KEY `idx_filename` (`filename`),
	KEY `idx_sermon` (`sermon`),
	KEY `idx_preacher` (`preacher`),
	KEY `idx_series` (`series`)
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `#__sermondistributor_help_document` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`asset_id` INT(255) UNSIGNED NOT NULL DEFAULT '0',
	`admin_view` CHAR(255) NOT NULL DEFAULT '',
	`alias` CHAR(64) NOT NULL DEFAULT '',
	`article` TINYINT(1) NOT NULL DEFAULT '0',
	`content` TEXT NOT NULL DEFAULT '',
	`groups` TEXT NOT NULL DEFAULT '',
	`location` TINYINT(1) NOT NULL DEFAULT '0',
	`not_required` INT(1) NOT NULL DEFAULT '0',
	`site_view` CHAR(255) NOT NULL DEFAULT '',
	`target` TINYINT(1) NOT NULL DEFAULT '0',
	`title` CHAR(64) NOT NULL DEFAULT '',
	`type` TINYINT(1) NOT NULL DEFAULT '0',
	`url` VARCHAR(255) NOT NULL DEFAULT '',
	`params` TEXT NOT NULL DEFAULT '',
	`published` tinyint(1) NOT NULL DEFAULT '1',
	`created_by` int(11) NOT NULL DEFAULT '0',
	`modified_by` int(11) NOT NULL DEFAULT '0',
	`created` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
	`modified` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
	`checked_out` int(11) NOT NULL,
	`checked_out_time` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
	`version` int(11) NOT NULL DEFAULT '1',
	`hits` int(11) NOT NULL DEFAULT '0',
	`access` int(11) DEFAULT NULL,
	`ordering` int(11) NOT NULL DEFAULT '0',
	`metakey` TEXT NOT NULL DEFAULT '',
	`metadesc` TEXT NOT NULL DEFAULT '',
	`metadata` TEXT NOT NULL DEFAULT '',
	PRIMARY KEY  (`id`),
	KEY `idx_access` (`access`),
	KEY `idx_checkout` (`checked_out`),
	KEY `idx_createdby` (`created_by`),
	KEY `idx_modifiedby` (`modified_by`),
	KEY `idx_state` (`published`),
	KEY `idx_title` (`title`),
	KEY `idx_type` (`type`),
	KEY `idx_location` (`location`),
	KEY `idx_target` (`target`),
	KEY `idx_alias` (`alias`),
	KEY `idx_article` (`article`)
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;


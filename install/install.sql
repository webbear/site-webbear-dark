# --- WireDatabaseBackup {"time":"2019-02-08 18:16:48","user":"","dbName":"pw-webbear","description":"","tables":[],"excludeTables":["pages_drafts","pages_roles","permissions","roles","roles_permissions","users","users_roles","user","role","permission"],"excludeCreateTables":[],"excludeExportTables":["field_roles","field_permissions","field_email","field_pass","caches","session_login_throttle","page_path_history"]}

DROP TABLE IF EXISTS `caches`;
CREATE TABLE `caches` (
  `name` varchar(255) NOT NULL,
  `data` mediumtext NOT NULL,
  `expires` datetime NOT NULL,
  PRIMARY KEY (`name`),
  KEY `expires` (`expires`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `field_admin_theme`;
CREATE TABLE `field_admin_theme` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_admin_theme` (`pages_id`, `data`) VALUES('41', '174');

DROP TABLE IF EXISTS `field_body`;
CREATE TABLE `field_body` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_body` (`pages_id`, `data`) VALUES('27', '<h3>Die Seite wurde leider nicht gefunden.</h3>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1', '<h2>Überschrift 2</h2>\n\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\n\n<h3>Überschrift 3</h3>\n\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n\n<p><img alt=\"\"	src=\"/site/assets/files/1/img_0261.jpg\" width=\"640\" /></p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1002', '<h2>Ut capio feugiat saepius torqueo olim</h2>\n\n<h3>In utinam facilisi eum vicis feugait nimis</h3>\n\n<p>Iusto incassum appellatio cui macto genitus vel. Lobortis aliquam luctus, roto enim, imputo wisi tamen. Ratis odio, genitus acsi, neo illum consequat consectetuer ut.</p>\n\n<blockquote>\n<p>Wisi fere virtus cogo, ex ut vel nullus similis vel iusto. Tation incassum adsum in, quibus capto premo diam suscipere facilisi. Uxor laoreet mos capio premo feugait ille et. Pecus abigo immitto epulae duis vel. Neque causa, indoles verto, decet ingenium dignissim.</p>\n</blockquote>\n\n<p>Patria iriure vel vel autem proprius indoles ille sit. Tation blandit refoveo, accumsan ut ulciscor lucidus inhibeo capto aptent opes, foras.</p>\n\n<h3>Dolore ea valde refero feugait utinam luctus</h3>\n\n<p><img alt=\"\" class=\"align_left\"	src=\"/site/assets/files/1002/img_2182.400x0-is.jpg\" width=\"400\" />Usitas, nostrud transverbero, in, amet, nostrud ad. Ex feugiat opto diam os aliquam regula lobortis dolore ut ut quadrum. Esse eu quis nunc jugis iriure volutpat wisi, fere blandit inhibeo melior, hendrerit, saluto velit. Eu bene ideo dignissim delenit accumsan nunc. Usitas ille autem camur consequat typicus feugait elit ex accumsan nutus accumsan nimis pagus, occuro. Immitto populus, qui feugiat opto pneum letalis paratus. Mara conventio torqueo nibh caecus abigo sit eum brevitas. Populus, duis ex quae exerci hendrerit, si antehabeo nobis, consequat ea praemitto zelus.</p>\n\n<p>Immitto os ratis euismod conventio erat jus caecus sudo. code test Appellatio consequat, et ibidem ludus nulla dolor augue abdo tego euismod plaga lenis. Sit at nimis venio venio tego os et pecus enim pneum magna nobis ad pneum. Saepius turpis probo refero molior nonummy aliquam neque appellatio jus luctus acsi. Ulciscor refero pagus imputo eu refoveo valetudo duis dolore usitas. Consequat suscipere quod torqueo ratis ullamcorper, dolore lenis, letalis quia quadrum plaga minim.</p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1001', '<h2>Si lobortis singularis genitus ibidem saluto.</h2>\n\n<p>Dolore ad nunc, mos accumsan paratus duis suscipit luptatum facilisis macto uxor iaceo quadrum. Demoveo, appellatio elit neque ad commodo ea. Wisi, iaceo, tincidunt at commoveo rusticus et, ludus. Feugait at blandit bene blandit suscipere abdo duis ideo bis commoveo pagus ex, velit. Consequat commodo roto accumsan, duis transverbero.</p>\n\n<p>[[children]]</p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1004', '<h2>Pertineo vel dignissim, natu letalis fere odio</h2>\n\n<p>Magna in gemino, gilvus iusto capto jugis abdo mos aptent acsi qui. Utrum inhibeo humo humo duis quae. Lucidus paulatim facilisi scisco quibus hendrerit conventio adsum.</p>\n\n<h3>Si lobortis singularis genitus ibidem saluto</h3>\n\n<ul><li>Feugiat eligo foras ex elit sed indoles hos elit ex antehabeo defui et nostrud.</li>\n	<li>Letatio valetudo multo consequat inhibeo ille dignissim pagus et in quadrum eum eu.</li>\n	<li>Aliquam si consequat, ut nulla amet et turpis exerci, adsum luctus ne decet, delenit.</li>\n	<li>Commoveo nunc diam valetudo cui, aptent commoveo at obruo uxor nulla aliquip augue.</li>\n</ul><p>Iriure, ex velit, praesent vulpes delenit capio vero gilvus inhibeo letatio aliquip metuo qui eros. Transverbero demoveo euismod letatio torqueo melior. Ut odio in suscipit paulatim amet huic letalis suscipere eros causa, letalis magna.</p>\n\n<ol><li>Feugiat eligo foras ex elit sed indoles hos elit ex antehabeo defui et nostrud.</li>\n	<li>Letatio valetudo multo consequat inhibeo ille dignissim pagus et in quadrum eum eu.</li>\n	<li>Aliquam si consequat, ut nulla amet et turpis exerci, adsum luctus ne decet, delenit.</li>\n	<li>Commoveo nunc diam valetudo cui, aptent commoveo at obruo uxor nulla aliquip augue.</li>\n</ol>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1016', '<p>Hier kann einfach eine Bildergalerie erstellt werden:</p>\n\n<p>[[gallery]]</p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1017', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n\n<p><img alt=\"\"	src=\"/site/assets/files/1017/costarica_1500.jpg\" width=\"640\" /></p>');

DROP TABLE IF EXISTS `field_browser_title`;
CREATE TABLE `field_browser_title` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_browser_title` (`pages_id`, `data`) VALUES('1028', 'site-map');

DROP TABLE IF EXISTS `field_custom_text_input`;
CREATE TABLE `field_custom_text_input` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_custom_text_input` (`pages_id`, `data`) VALUES('1028', 'sitemap');
INSERT INTO `field_custom_text_input` (`pages_id`, `data`) VALUES('1037', 'utilities');

DROP TABLE IF EXISTS `field_email`;
CREATE TABLE `field_email` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `field_files`;
CREATE TABLE `field_files` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `filedata` mediumtext,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  FULLTEXT KEY `description` (`description`),
  FULLTEXT KEY `filedata` (`filedata`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_form_name`;
CREATE TABLE `field_form_name` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_form_name` (`pages_id`, `data`) VALUES('1004', 'contact');

DROP TABLE IF EXISTS `field_headline`;
CREATE TABLE `field_headline` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1', 'Willkommen');
INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1001', 'Über uns');
INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('27', '404 Seite nicht gefunden');
INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1016', 'Bildergalerie');
INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1017', 'Noch eine Überschrift');
INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1028', 'devbears site profile');
INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1002', 'Unterseite Beispiel 1');

DROP TABLE IF EXISTS `field_images`;
CREATE TABLE `field_images` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(255) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `tags` varchar(250) NOT NULL,
  `filedata` mediumtext,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  FULLTEXT KEY `description` (`description`),
  FULLTEXT KEY `tags` (`tags`),
  FULLTEXT KEY `filedata` (`filedata`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `tags`, `filedata`) VALUES('1004', 'img_2201.jpg', '0', '', '2017-03-21 08:08:14', '2017-03-21 08:08:14', '', NULL);
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `tags`, `filedata`) VALUES('1017', 'img_1852.jpg', '0', '', '2017-03-21 08:06:28', '2017-03-21 08:06:28', '', NULL);
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `tags`, `filedata`) VALUES('1017', 'costarica_1500.jpg', '1', '', '2017-03-21 08:06:28', '2017-03-21 08:06:28', '', NULL);
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `tags`, `filedata`) VALUES('1004', 'img_2212.jpg', '1', '', '2017-03-21 08:08:14', '2017-03-21 08:08:14', '', NULL);
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `tags`, `filedata`) VALUES('1004', 'img_2213.jpg', '2', '', '2017-03-21 08:08:14', '2017-03-21 08:08:14', '', NULL);
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `tags`, `filedata`) VALUES('1028', 'costa-rica.jpg', '0', '', '2017-03-20 07:04:02', '2017-03-20 07:04:02', '', NULL);
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `tags`, `filedata`) VALUES('1', 'img_1809.jpg', '1', '', '2017-03-21 07:58:28', '2017-03-21 07:58:28', '', NULL);
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `tags`, `filedata`) VALUES('1', 'img_0261.jpg', '0', '', '2017-03-21 07:58:28', '2017-03-21 07:58:28', '', NULL);
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `tags`, `filedata`) VALUES('1002', 'img_2182.jpg', '0', '', '2017-03-21 08:09:22', '2017-03-21 08:09:22', '', NULL);
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `tags`, `filedata`) VALUES('1016', 'placeholder-1-1.jpg', '21', '', '2019-01-24 06:34:36', '2019-01-24 06:34:36', 'header no-gallery', '');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `tags`, `filedata`) VALUES('1016', 'placeholder-22.jpg', '20', '', '2019-01-24 06:34:36', '2019-01-24 06:34:36', '', '');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `tags`, `filedata`) VALUES('1016', 'placeholder-21.jpg', '19', '', '2019-01-24 06:34:36', '2019-01-24 06:34:36', '', '');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `tags`, `filedata`) VALUES('1016', 'placeholder-20.jpg', '18', '', '2019-01-24 06:34:36', '2019-01-24 06:34:36', '', '');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `tags`, `filedata`) VALUES('1016', 'placeholder-19.jpg', '17', '', '2019-01-24 06:34:36', '2019-01-24 06:34:36', '', '');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `tags`, `filedata`) VALUES('1016', 'placeholder-18.jpg', '16', '', '2019-01-24 06:34:36', '2019-01-24 06:34:36', '', '');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `tags`, `filedata`) VALUES('1016', 'placeholder-17.jpg', '15', '', '2019-01-24 06:34:36', '2019-01-24 06:34:36', '', '');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `tags`, `filedata`) VALUES('1016', 'placeholder-16.jpg', '14', '', '2019-01-24 06:34:36', '2019-01-24 06:34:36', '', '');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `tags`, `filedata`) VALUES('1016', 'placeholder-15.jpg', '13', '', '2019-01-24 06:34:36', '2019-01-24 06:34:36', '', '');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `tags`, `filedata`) VALUES('1016', 'placeholder-14.jpg', '12', '', '2019-01-24 06:34:36', '2019-01-24 06:34:36', '', '');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `tags`, `filedata`) VALUES('1016', 'placeholder-13.jpg', '11', '', '2019-01-24 06:34:36', '2019-01-24 06:34:36', '', '');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `tags`, `filedata`) VALUES('1016', 'placeholder-12.jpg', '10', '', '2019-01-24 06:34:36', '2019-01-24 06:34:36', '', '');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `tags`, `filedata`) VALUES('1016', 'placeholder-11.jpg', '9', '', '2019-01-24 06:34:36', '2019-01-24 06:34:36', '', '');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `tags`, `filedata`) VALUES('1016', 'placeholder-10.jpg', '8', '', '2019-01-24 06:34:36', '2019-01-24 06:34:36', '', '');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `tags`, `filedata`) VALUES('1016', 'placeholder-9.jpg', '7', '', '2019-01-24 06:34:36', '2019-01-24 06:34:36', '', '');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `tags`, `filedata`) VALUES('1016', 'placeholder-8.jpg', '6', '', '2019-01-24 06:34:36', '2019-01-24 06:34:36', '', '');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `tags`, `filedata`) VALUES('1016', 'placeholder-7.jpg', '5', '', '2019-01-24 06:34:36', '2019-01-24 06:34:36', '', '');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `tags`, `filedata`) VALUES('1016', 'placeholder-6.jpg', '4', '', '2019-01-24 06:34:36', '2019-01-24 06:34:36', '', '');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `tags`, `filedata`) VALUES('1016', 'placeholder-5.jpg', '3', '', '2019-01-24 06:34:36', '2019-01-24 06:34:36', '', '');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `tags`, `filedata`) VALUES('1016', 'placeholder-4.jpg', '2', '', '2019-01-24 06:34:36', '2019-01-24 06:34:36', '', '');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `tags`, `filedata`) VALUES('1016', 'placeholder-2.jpg', '1', '', '2019-01-24 06:34:36', '2019-01-24 06:34:36', '', '');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `tags`, `filedata`) VALUES('1016', 'placeholder-1.jpg', '0', '', '2019-01-24 06:34:36', '2019-01-24 06:34:36', '', '');

DROP TABLE IF EXISTS `field_language`;
CREATE TABLE `field_language` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_language` (`pages_id`, `data`, `sort`) VALUES('40', '1025', '0');
INSERT INTO `field_language` (`pages_id`, `data`, `sort`) VALUES('41', '1025', '0');

DROP TABLE IF EXISTS `field_language_files`;
CREATE TABLE `field_language_files` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  FULLTEXT KEY `description` (`description`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--modules--textformatter--textformattersmartypants--textformattersmartypants-module.json', '155', '', '2017-03-19 10:16:01', '2017-03-19 10:16:01');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--modules--system--systemnotifications--systemnotificationsconfig-php.json', '151', '', '2017-03-19 10:16:00', '2017-03-19 10:16:00');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--modules--system--systemupdater--systemupdater-module.json', '152', '', '2017-03-19 10:16:00', '2017-03-19 10:16:00');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--modules--textformatter--textformatterentities-module.json', '153', '', '2017-03-19 10:16:00', '2017-03-19 10:16:00');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--modules--textformatter--textformattermarkdownextra--textformattermarkdownextra-module.json', '154', '', '2017-03-19 10:16:01', '2017-03-19 10:16:01');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--modules--system--systemnotifications--systemnotifications-module.json', '150', '', '2017-03-19 10:16:00', '2017-03-19 10:16:00');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--modules--session--sessionhandlerdb--processsessiondb-module.json', '147', '', '2017-03-19 10:15:59', '2017-03-19 10:15:59');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--modules--session--sessionloginthrottle--sessionloginthrottle-module.json', '149', '', '2017-03-19 10:16:00', '2017-03-19 10:16:00');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--modules--session--sessionhandlerdb--sessionhandlerdb-module.json', '148', '', '2017-03-19 10:16:00', '2017-03-19 10:16:00');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--modules--process--processuser--processuserconfig-php.json', '146', '', '2017-03-19 10:15:59', '2017-03-19 10:15:59');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--modules--process--processuser--processuser-module.json', '145', '', '2017-03-19 10:15:59', '2017-03-19 10:15:59');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--modules--process--processtemplate--processtemplateexportimport-php.json', '144', '', '2017-03-19 10:15:59', '2017-03-19 10:15:59');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--modules--process--processtemplate--processtemplate-module.json', '143', '', '2017-03-19 10:15:59', '2017-03-19 10:15:59');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--modules--process--processrole--processrole-module.json', '142', '', '2017-03-19 10:15:59', '2017-03-19 10:15:59');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--modules--process--processrecentpages--processrecentpages-module.json', '141', '', '2017-03-19 10:15:59', '2017-03-19 10:15:59');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--modules--process--processprofile--processprofile-module.json', '140', '', '2017-03-19 10:15:58', '2017-03-19 10:15:58');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--modules--process--processpermission--processpermission-module.json', '139', '', '2017-03-19 10:15:58', '2017-03-19 10:15:58');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--modules--process--processpagelister--processpagelister-module.json', '132', '', '2017-03-19 10:15:57', '2017-03-19 10:15:57');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--modules--process--processpagelister--processpagelisterbookmarks-php.json', '133', '', '2017-03-19 10:15:57', '2017-03-19 10:15:57');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--modules--process--processpagesearch--processpagesearch-module.json', '134', '', '2017-03-19 10:15:58', '2017-03-19 10:15:58');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--modules--process--processpagesort-module.json', '135', '', '2017-03-19 10:15:58', '2017-03-19 10:15:58');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--modules--process--processpagetrash-module.json', '136', '', '2017-03-19 10:15:58', '2017-03-19 10:15:58');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--modules--process--processpagetype--processpagetype-module.json', '137', '', '2017-03-19 10:15:58', '2017-03-19 10:15:58');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--modules--process--processpageview-module.json', '138', '', '2017-03-19 10:15:58', '2017-03-19 10:15:58');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--modules--process--processpagelist--processpagelistrenderjson-php.json', '131', '', '2017-03-19 10:15:57', '2017-03-19 10:15:57');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--modules--process--processpagelist--processpagelistrender-php.json', '130', '', '2017-03-19 10:15:57', '2017-03-19 10:15:57');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--modules--process--processpageeditlink--processpageeditlink-module.json', '127', '', '2017-03-19 10:15:57', '2017-03-19 10:15:57');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--modules--process--processpagelist--processpagelist-module.json', '128', '', '2017-03-19 10:15:57', '2017-03-19 10:15:57');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--modules--process--processpagelist--processpagelistactions-php.json', '129', '', '2017-03-19 10:15:57', '2017-03-19 10:15:57');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--modules--process--processpageeditimageselect--processpageeditimageselect-module.json', '126', '', '2017-03-19 10:15:56', '2017-03-19 10:15:56');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--modules--process--processpageedit--pagebookmarks-php.json', '124', '', '2017-03-19 10:15:56', '2017-03-19 10:15:56');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--modules--process--processpageedit--processpageedit-module.json', '125', '', '2017-03-19 10:15:56', '2017-03-19 10:15:56');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--modules--process--processpageclone-module.json', '123', '', '2017-03-19 10:15:56', '2017-03-19 10:15:56');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--modules--process--processpageadd--processpageadd-module.json', '122', '', '2017-03-19 10:15:56', '2017-03-19 10:15:56');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--modules--process--processhome-module.json', '116', '', '2017-03-19 10:15:55', '2017-03-19 10:15:55');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--modules--process--processlist-module.json', '117', '', '2017-03-19 10:15:55', '2017-03-19 10:15:55');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--modules--process--processlogger--processlogger-module.json', '118', '', '2017-03-19 10:15:55', '2017-03-19 10:15:55');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--modules--process--processlogin--processlogin-module.json', '119', '', '2017-03-19 10:15:55', '2017-03-19 10:15:55');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--modules--process--processmodule--processmodule-module.json', '120', '', '2017-03-19 10:15:56', '2017-03-19 10:15:56');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--modules--process--processmodule--processmoduleinstall-php.json', '121', '', '2017-03-19 10:15:56', '2017-03-19 10:15:56');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--modules--process--processforgotpassword-module.json', '115', '', '2017-03-19 10:15:55', '2017-03-19 10:15:55');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--modules--process--processfield--processfieldexportimport-php.json', '114', '', '2017-03-19 10:15:55', '2017-03-19 10:15:55');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--modules--process--processfield--processfield-module.json', '113', '', '2017-03-19 10:15:55', '2017-03-19 10:15:55');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--modules--pagerender-module.json', '111', '', '2017-03-19 10:15:54', '2017-03-19 10:15:54');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--modules--process--processcommentsmanager--processcommentsmanager-module.json', '112', '', '2017-03-19 10:15:54', '2017-03-19 10:15:54');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--modules--pagepaths-module.json', '110', '', '2017-03-19 10:15:54', '2017-03-19 10:15:54');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--modules--page--pagefrontedit--pagefronteditconfig-php.json', '109', '', '2017-03-19 10:15:54', '2017-03-19 10:15:54');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--modules--page--pagefrontedit--pagefrontedit-module.json', '108', '', '2017-03-19 10:15:54', '2017-03-19 10:15:54');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--modules--markup--markuppagefields-module.json', '106', '', '2017-03-19 10:15:53', '2017-03-19 10:15:53');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--modules--markup--markuppagernav--markuppagernav-module.json', '107', '', '2017-03-19 10:15:54', '2017-03-19 10:15:54');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--modules--languagesupport--languagetranslator-php.json', '104', '', '2017-03-19 10:15:53', '2017-03-19 10:15:53');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--modules--languagesupport--processlanguage-module.json', '105', '', '2017-03-19 10:15:53', '2017-03-19 10:15:53');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--modules--languagesupport--languagetabs-module.json', '103', '', '2017-03-19 10:15:53', '2017-03-19 10:15:53');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--modules--languagesupport--languagesupportpagenames-module.json', '102', '', '2017-03-19 10:15:53', '2017-03-19 10:15:53');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--modules--languagesupport--languagesupportfields-module.json', '101', '', '2017-03-19 10:15:53', '2017-03-19 10:15:53');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--modules--languagesupport--languagesupport-module.json', '100', '', '2017-03-19 10:15:52', '2017-03-19 10:15:52');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--modules--languagesupport--languageparser-php.json', '99', '', '2017-03-19 10:15:52', '2017-03-19 10:15:52');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--modules--jquery--jquerywiretabs--jquerywiretabs-module.json', '98', '', '2017-03-19 10:15:52', '2017-03-19 10:15:52');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--modules--inputfield--inputfieldurl-module.json', '97', '', '2017-03-19 10:15:52', '2017-03-19 10:15:52');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--modules--inputfield--inputfieldtextarea-module.json', '96', '', '2017-03-19 10:15:52', '2017-03-19 10:15:52');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--modules--inputfield--inputfieldtext-module.json', '95', '', '2017-03-19 10:15:52', '2017-03-19 10:15:52');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--modules--inputfield--inputfieldsubmit--inputfieldsubmit-module.json', '94', '', '2017-03-19 10:15:52', '2017-03-19 10:15:52');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--modules--inputfield--inputfieldselectmultiple-module.json', '92', '', '2017-03-19 10:15:51', '2017-03-19 10:15:51');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--modules--inputfield--inputfieldselector--inputfieldselector-module.json', '93', '', '2017-03-19 10:15:52', '2017-03-19 10:15:52');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--modules--inputfield--inputfieldselect-module.json', '91', '', '2017-03-19 10:15:51', '2017-03-19 10:15:51');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--modules--inputfield--inputfieldradios--inputfieldradios-module.json', '90', '', '2017-03-19 10:15:51', '2017-03-19 10:15:51');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--modules--inputfield--inputfieldpassword--inputfieldpassword-module.json', '89', '', '2017-03-19 10:15:51', '2017-03-19 10:15:51');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--modules--inputfield--inputfieldpagename--inputfieldpagename-module.json', '85', '', '2017-03-19 10:15:51', '2017-03-19 10:15:51');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--modules--inputfield--inputfieldpagetable--inputfieldpagetable-module.json', '86', '', '2017-03-19 10:15:51', '2017-03-19 10:15:51');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--modules--inputfield--inputfieldpagetable--inputfieldpagetableajax-php.json', '87', '', '2017-03-19 10:15:51', '2017-03-19 10:15:51');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--modules--inputfield--inputfieldpagetitle--inputfieldpagetitle-module.json', '88', '', '2017-03-19 10:15:51', '2017-03-19 10:15:51');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--modules--inputfield--inputfieldpagelistselect--inputfieldpagelistselectmultiple-module.json', '84', '', '2017-03-19 10:15:50', '2017-03-19 10:15:50');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--modules--inputfield--inputfieldpagelistselect--inputfieldpagelistselect-module.json', '83', '', '2017-03-19 10:15:50', '2017-03-19 10:15:50');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--modules--inputfield--inputfieldpageautocomplete--inputfieldpageautocomplete-module.json', '82', '', '2017-03-19 10:15:50', '2017-03-19 10:15:50');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--modules--inputfield--inputfieldpage--inputfieldpage-module.json', '81', '', '2017-03-19 10:15:50', '2017-03-19 10:15:50');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--modules--inputfield--inputfieldname-module.json', '80', '', '2017-03-19 10:15:50', '2017-03-19 10:15:50');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--modules--inputfield--inputfieldmarkup-module.json', '79', '', '2017-03-19 10:15:50', '2017-03-19 10:15:50');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--modules--inputfield--inputfieldinteger-module.json', '78', '', '2017-03-19 10:15:50', '2017-03-19 10:15:50');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--modules--inputfield--inputfieldimage--inputfieldimage-module.json', '77', '', '2017-03-19 10:15:50', '2017-03-19 10:15:50');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--modules--inputfield--inputfieldicon--inputfieldicon-module.json', '76', '', '2017-03-19 10:15:49', '2017-03-19 10:15:49');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--modules--inputfield--inputfieldhidden-module.json', '75', '', '2017-03-19 10:15:49', '2017-03-19 10:15:49');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--modules--inputfield--inputfieldform-module.json', '74', '', '2017-03-19 10:15:49', '2017-03-19 10:15:49');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--modules--inputfield--inputfieldfloat-module.json', '73', '', '2017-03-19 10:15:49', '2017-03-19 10:15:49');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--modules--inputfield--inputfieldfieldset-module.json', '71', '', '2017-03-19 10:15:49', '2017-03-19 10:15:49');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--modules--inputfield--inputfieldfile--inputfieldfile-module.json', '72', '', '2017-03-19 10:15:49', '2017-03-19 10:15:49');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--modules--inputfield--inputfielddatetime--inputfielddatetime-module.json', '69', '', '2017-03-19 10:15:49', '2017-03-19 10:15:49');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--modules--inputfield--inputfieldemail-module.json', '70', '', '2017-03-19 10:15:49', '2017-03-19 10:15:49');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--modules--inputfield--inputfieldckeditor--inputfieldckeditor-module.json', '68', '', '2017-03-19 10:15:48', '2017-03-19 10:15:48');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--modules--inputfield--inputfieldcheckbox-module.json', '66', '', '2017-03-19 10:15:48', '2017-03-19 10:15:48');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--modules--inputfield--inputfieldcheckboxes--inputfieldcheckboxes-module.json', '67', '', '2017-03-19 10:15:48', '2017-03-19 10:15:48');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--modules--inputfield--inputfieldbutton-module.json', '65', '', '2017-03-19 10:15:48', '2017-03-19 10:15:48');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--modules--inputfield--inputfieldasmselect--inputfieldasmselect-module.json', '64', '', '2017-03-19 10:15:48', '2017-03-19 10:15:48');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--modules--filecompilertags-module.json', '63', '', '2017-03-19 10:15:48', '2017-03-19 10:15:48');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--modules--fieldtype--fieldtypeurl-module.json', '62', '', '2017-03-19 10:15:48', '2017-03-19 10:15:48');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--modules--fieldtype--fieldtypetextareahelper-php.json', '61', '', '2017-03-19 10:15:48', '2017-03-19 10:15:48');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--modules--fieldtype--fieldtypetext-module.json', '60', '', '2017-03-19 10:15:48', '2017-03-19 10:15:48');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--modules--fieldtype--fieldtypeselector-module.json', '59', '', '2017-03-19 10:15:47', '2017-03-19 10:15:47');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--modules--fieldtype--fieldtyperepeater--inputfieldrepeater-module.json', '58', '', '2017-03-19 10:15:47', '2017-03-19 10:15:47');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--modules--fieldtype--fieldtyperepeater--fieldtyperepeater-module.json', '57', '', '2017-03-19 10:15:47', '2017-03-19 10:15:47');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--modules--fieldtype--fieldtyperepeater--config-php.json', '56', '', '2017-03-19 10:15:47', '2017-03-19 10:15:47');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--modules--fieldtype--fieldtypepagetable-module.json', '55', '', '2017-03-19 10:15:47', '2017-03-19 10:15:47');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--modules--fieldtype--fieldtypepage-module.json', '54', '', '2017-03-19 10:15:47', '2017-03-19 10:15:47');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--modules--fieldtype--fieldtypeoptions--selectableoptionconfig-php.json', '52', '', '2017-03-19 10:15:47', '2017-03-19 10:15:47');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--modules--fieldtype--fieldtypeoptions--selectableoptionmanager-php.json', '53', '', '2017-03-19 10:15:47', '2017-03-19 10:15:47');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--modules--fieldtype--fieldtypeoptions--fieldtypeoptions-module.json', '51', '', '2017-03-19 10:15:47', '2017-03-19 10:15:47');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--modules--fieldtype--fieldtypemodule-module.json', '50', '', '2017-03-19 10:15:46', '2017-03-19 10:15:46');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--modules--fieldtype--fieldtypeinteger-module.json', '49', '', '2017-03-19 10:15:46', '2017-03-19 10:15:46');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--modules--fieldtype--fieldtypefloat-module.json', '48', '', '2017-03-19 10:15:46', '2017-03-19 10:15:46');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--modules--fieldtype--fieldtypefile-module.json', '47', '', '2017-03-19 10:15:46', '2017-03-19 10:15:46');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--modules--fieldtype--fieldtypefieldsettabopen-module.json', '46', '', '2017-03-19 10:15:46', '2017-03-19 10:15:46');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--modules--fieldtype--fieldtypedatetime-module.json', '45', '', '2017-03-19 10:15:46', '2017-03-19 10:15:46');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--modules--fieldtype--fieldtypecomments--inputfieldcommentsadmin-module.json', '44', '', '2017-03-19 10:15:46', '2017-03-19 10:15:46');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--modules--fieldtype--fieldtypecomments--fieldtypecomments-module.json', '43', '', '2017-03-19 10:15:46', '2017-03-19 10:15:46');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--modules--fieldtype--fieldtypecomments--commentnotifications-php.json', '41', '', '2017-03-19 10:15:45', '2017-03-19 10:15:45');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--modules--fieldtype--fieldtypecomments--commentstars-php.json', '42', '', '2017-03-19 10:15:46', '2017-03-19 10:15:46');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--modules--fieldtype--fieldtypecomments--commentlist-php.json', '40', '', '2017-03-19 10:15:45', '2017-03-19 10:15:45');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--modules--fieldtype--fieldtypecomments--commentform-php.json', '39', '', '2017-03-19 10:15:45', '2017-03-19 10:15:45');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--modules--fieldtype--fieldtypecomments--commentfilterakismet-module.json', '38', '', '2017-03-19 10:15:45', '2017-03-19 10:15:45');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--modules--admintheme--adminthemereno--debug-inc.json', '36', '', '2017-03-19 10:15:45', '2017-03-19 10:15:45');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--modules--admintheme--adminthemereno--default-php.json', '37', '', '2017-03-19 10:15:45', '2017-03-19 10:15:45');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--modules--admintheme--adminthemereno--adminthemerenohelpers-php.json', '35', '', '2017-03-19 10:15:45', '2017-03-19 10:15:45');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--modules--admintheme--adminthemereno--adminthemereno-module.json', '34', '', '2017-03-19 10:15:45', '2017-03-19 10:15:45');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--modules--admintheme--adminthemedefault--adminthemedefault-module.json', '33', '', '2017-03-19 10:15:45', '2017-03-19 10:15:45');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--core--wireupload-php.json', '32', '', '2017-03-19 10:15:44', '2017-03-19 10:15:44');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--core--wiretempdir-php.json', '31', '', '2017-03-19 10:15:44', '2017-03-19 10:15:44');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--core--wireshutdown-php.json', '30', '', '2017-03-19 10:15:44', '2017-03-19 10:15:44');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--core--wirehttp-php.json', '29', '', '2017-03-19 10:15:44', '2017-03-19 10:15:44');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--core--wiredatetime-php.json', '28', '', '2017-03-19 10:15:44', '2017-03-19 10:15:44');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--core--wirecache-php.json', '27', '', '2017-03-19 10:15:44', '2017-03-19 10:15:44');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--core--sessioncsrf-php.json', '26', '', '2017-03-19 10:15:44', '2017-03-19 10:15:44');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--core--session-php.json', '25', '', '2017-03-19 10:15:44', '2017-03-19 10:15:44');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--core--sanitizer-php.json', '24', '', '2017-03-19 10:15:44', '2017-03-19 10:15:44');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--core--process-php.json', '23', '', '2017-03-19 10:15:44', '2017-03-19 10:15:44');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--core--permissions-php.json', '22', '', '2017-03-19 10:15:43', '2017-03-19 10:15:43');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--core--password-php.json', '21', '', '2017-03-19 10:15:43', '2017-03-19 10:15:43');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--core--paginatedarray-php.json', '20', '', '2017-03-19 10:15:43', '2017-03-19 10:15:43');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--core--pageseditor-php.json', '19', '', '2017-03-19 10:15:43', '2017-03-19 10:15:43');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--core--pageimage-php.json', '18', '', '2017-03-19 10:15:43', '2017-03-19 10:15:43');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--core--modulesduplicates-php.json', '17', '', '2017-03-19 10:15:43', '2017-03-19 10:15:43');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--core--modules-php.json', '16', '', '2017-03-19 10:15:43', '2017-03-19 10:15:43');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--core--markupqa-php.json', '15', '', '2017-03-19 10:15:43', '2017-03-19 10:15:43');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--core--inputfieldwrapper-php.json', '14', '', '2017-03-19 10:15:43', '2017-03-19 10:15:43');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--core--inputfield-php.json', '13', '', '2017-03-19 10:15:42', '2017-03-19 10:15:42');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--core--imagesizerengine-php.json', '12', '', '2017-03-19 10:15:42', '2017-03-19 10:15:42');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--core--functions-php.json', '11', '', '2017-03-19 10:15:42', '2017-03-19 10:15:42');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--core--filevalidatormodule-php.json', '10', '', '2017-03-19 10:15:42', '2017-03-19 10:15:42');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--core--filecompilermodule-php.json', '9', '', '2017-03-19 10:15:42', '2017-03-19 10:15:42');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--core--filecompiler-php.json', '8', '', '2017-03-19 10:15:42', '2017-03-19 10:15:42');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--core--fieldtypemulti-php.json', '7', '', '2017-03-19 10:15:42', '2017-03-19 10:15:42');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--core--fieldtype-php.json', '6', '', '2017-03-19 10:15:42', '2017-03-19 10:15:42');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--core--field-php.json', '5', '', '2017-03-19 10:15:42', '2017-03-19 10:15:42');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--core--fields-php.json', '1', '', '2017-03-19 10:15:41', '2017-03-19 10:15:41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--core--admin-php.json', '2', '', '2017-03-19 10:15:41', '2017-03-19 10:15:41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--core--fieldgroups-php.json', '3', '', '2017-03-19 10:15:41', '2017-03-19 10:15:41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--core--fieldselectorinfo-php.json', '4', '', '2017-03-19 10:15:42', '2017-03-19 10:15:42');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--core--admintheme-php.json', '0', '', '2017-03-19 10:15:41', '2017-03-19 10:15:41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--templates-admin--debug-inc.json', '156', '', '2017-03-19 10:16:01', '2017-03-19 10:16:01');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1025', 'wire--templates-admin--default-php.json', '157', '', '2017-03-19 10:16:01', '2017-03-19 10:16:01');

DROP TABLE IF EXISTS `field_language_files_site`;
CREATE TABLE `field_language_files_site` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  FULLTEXT KEY `description` (`description`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_pass`;
CREATE TABLE `field_pass` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` char(40) NOT NULL,
  `salt` char(32) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=ascii;

DROP TABLE IF EXISTS `field_permissions`;
CREATE TABLE `field_permissions` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `field_process`;
CREATE TABLE `field_process` (
  `pages_id` int(11) NOT NULL DEFAULT '0',
  `data` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_process` (`pages_id`, `data`) VALUES('6', '17');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('3', '12');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('8', '12');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('9', '14');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('10', '7');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('11', '47');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('16', '48');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('300', '104');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('21', '50');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('29', '66');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('23', '10');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('304', '138');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('31', '136');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('22', '76');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('30', '68');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('303', '129');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('2', '87');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('302', '121');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('301', '109');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('28', '76');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1007', '150');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1009', '158');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1011', '159');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1012', '162');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1018', '172');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1021', '175');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1024', '177');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1026', '178');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1027', '185');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1033', '190');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1042', '194');

DROP TABLE IF EXISTS `field_roles`;
CREATE TABLE `field_roles` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `field_sidebar`;
CREATE TABLE `field_sidebar` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_sidebar` (`pages_id`, `data`) VALUES('1', '<h3>Über das webbear site profile</h3>\n\n<p>Die beiden webbear Site Profiles sind auf <a href=\"http://bitbucket.org\">bitbucket</a> zu finden:</p>\n\n<ul><li><a href=\"https://bitbucket.org/webbear/site-webbear-dark\">Dunkel</a></li>\n	<li><a href=\"https://bitbucket.org/webbear/site-webbear-light\">Hell</a></li>\n</ul><p>Diese Profile dienen als Grundlage.</p>');
INSERT INTO `field_sidebar` (`pages_id`, `data`) VALUES('1002', '<h3>Sudo nullus</h3>\r\n\r\n<p>Et torqueo vulpes vereor luctus augue quod consectetuer antehabeo causa patria tation ex plaga ut. Abluo delenit wisi iriure eros feugiat probo nisl aliquip nisl, patria. Antehabeo esse camur nisl modo utinam. Sudo nullus ventosus ibidem facilisis saepius eum sino pneum, vicis odio voco opto.</p>');
INSERT INTO `field_sidebar` (`pages_id`, `data`) VALUES('1004', '<p><img alt=\"\"	src=\"/site/assets/files/1004/img_2212.400x0-is.jpg\" width=\"400\" /></p>\n\n<p><img alt=\"\"	src=\"/site/assets/files/1004/img_2213.400x0-is.jpg\" width=\"400\" /></p>');
INSERT INTO `field_sidebar` (`pages_id`, `data`) VALUES('1017', '<h3>Wichtige Details über Costa Rica</h3>\n\n<p><img alt=\"\"	src=\"/site/assets/files/1017/img_1852.400x0-is.jpg\" width=\"400\" /></p>\n\n<ul><li>Detail 1</li>\n	<li>Detail 2</li>\n	<li>Detail 3</li>\n</ul>');

DROP TABLE IF EXISTS `field_small_text`;
CREATE TABLE `field_small_text` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_small_text` (`pages_id`, `data`) VALUES('1037', '<p>[[utility-nav]]</p>');
INSERT INTO `field_small_text` (`pages_id`, `data`) VALUES('1038', '<p>[[copyright headline=1 webbear=1]]</p>');

DROP TABLE IF EXISTS `field_summary`;
CREATE TABLE `field_summary` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_summary` (`pages_id`, `data`) VALUES('1002', '<p>Dolore ea valde refero feugait utinam luctus. Probo velit commoveo et, delenit praesent, suscipit zelus, hendrerit zelus illum facilisi, regula.</p>');
INSERT INTO `field_summary` (`pages_id`, `data`) VALUES('1001', '<p>This is a placeholder page with two child pages to serve as an example.</p>');
INSERT INTO `field_summary` (`pages_id`, `data`) VALUES('1005', '<p>View this template\'s source for a demonstration of how to create a basic site map.</p>');
INSERT INTO `field_summary` (`pages_id`, `data`) VALUES('1004', '<p>Mos erat reprobo in praesent, mara premo, obruo iustum pecus velit lobortis te sagaciter populus.</p>');
INSERT INTO `field_summary` (`pages_id`, `data`) VALUES('1', '<p>Dieser Text ist Suchmaschinen relevant und sollte einen Bezug zum Dokumenteninhalt haben</p>');
INSERT INTO `field_summary` (`pages_id`, `data`) VALUES('1016', '<p>Bildergalerie</p>');
INSERT INTO `field_summary` (`pages_id`, `data`) VALUES('1017', '<p>Weiterer Inhalt finden Sie hier</p>');

DROP TABLE IF EXISTS `field_title`;
CREATE TABLE `field_title` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_title` (`pages_id`, `data`) VALUES('11', 'Templates');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('16', 'Fields');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('22', 'Setup');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('3', 'Pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('6', 'Add Page');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('8', 'Tree');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('9', 'Save Sort');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('10', 'Edit');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('21', 'Modules');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('29', 'Users');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('30', 'Roles');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('2', 'Admin');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('7', 'Trash');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('27', '404 Seite');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('302', 'Insert Link');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('23', 'Login');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('304', 'Profile');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('301', 'Empty Trash');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('300', 'Search');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('303', 'Insert Image');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('28', 'Access');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('31', 'Permissions');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('32', 'Edit pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('34', 'Delete pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('35', 'Move pages (change parent)');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('36', 'View pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('50', 'Sort child pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('51', 'Change templates on pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('52', 'Administer users (role must also have template edit access)');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('53', 'User can update profile/password');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('54', 'Lock or unlock a page');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1', 'Home');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1001', 'Über');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1002', 'Unterseite');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1000', 'Suche');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1004', 'Kontakt');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1005', 'Sitemap');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1006', 'Use Page Lister');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1007', 'Find');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1009', 'Recent');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1010', 'Can see recently edited pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1011', 'Upgrades');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1012', 'Hanna Code');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1013', 'List and view Hanna Codes');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1014', 'Add/edit/delete Hanna Codes (text/html, javascript only)');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1015', 'Add/edit/delete Hanna Codes (text/html, javascript and PHP)');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1016', 'Galerie');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1017', 'Unterseite');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1018', 'Logs');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1019', 'Can view system logs');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1020', 'Can manage system logs');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1021', 'DB Backups');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1022', 'Manage database backups (recommended for superuser only)');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1023', 'Administer languages and static translation files');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1024', 'Languages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1025', 'DE');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1026', 'Language Translator');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1027', 'Export Site Profile');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1028', 'Einstellungen');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1029', 'Use the front-end page editor');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1030', 'Logout');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1031', 'Sitemap XML');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1034', 'Repeaters');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1033', 'Adminer');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1035', 'widgets');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1036', 'settings');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1039', 'Form Builder');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1040', 'Access Form Builder admin page');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1041', 'Add new or import Form Builder forms');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1042', 'Forms');

DROP TABLE IF EXISTS `field_widgets`;
CREATE TABLE `field_widgets` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `count` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(1)),
  KEY `count` (`count`,`pages_id`),
  KEY `parent_id` (`parent_id`,`pages_id`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_widgets` (`pages_id`, `data`, `count`, `parent_id`) VALUES('1028', '1037,1038', '2', '1036');

DROP TABLE IF EXISTS `fieldgroups`;
CREATE TABLE `fieldgroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET ascii NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=104 DEFAULT CHARSET=utf8;

INSERT INTO `fieldgroups` (`id`, `name`) VALUES('2', 'admin');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('3', 'user');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('4', 'role');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('5', 'permission');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('1', 'home');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('88', 'sitemap');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('83', 'basic-page');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('80', 'search');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('97', 'language');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('98', 'settings');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('99', 'logout');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('100', 'sitemap-xml');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('101', 'repeater_widgets');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('102', 'form-builder');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('103', 'basic-page-form');

DROP TABLE IF EXISTS `fieldgroups_fields`;
CREATE TABLE `fieldgroups_fields` (
  `fieldgroups_id` int(10) unsigned NOT NULL DEFAULT '0',
  `fields_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sort` int(11) unsigned NOT NULL DEFAULT '0',
  `data` text,
  PRIMARY KEY (`fieldgroups_id`,`fields_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '109', '6', '{\"collapsed\":\"4\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '4', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('4', '5', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('5', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '98', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '78', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('80', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '102', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '79', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '76', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('88', '79', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '76', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('88', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '79', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '3', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '92', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('2', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '44', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '82', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '99', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '101', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '105', '6', '{\"label\":\"Ausgeschlossene Templates\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '78', '1', '{\"description\":\"\",\"label\":\"Site Titel\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '79', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '44', '3', '{\"label\":\"Header Bilder\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '107', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('2', '2', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '82', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '103', '6', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '100', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('101', '105', '1', '{\"collapsed\":\"2\",\"columnWidth\":20,\"label\":\"Custom Class\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('101', '108', '2', '{\"label\":\"Editor\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '78', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '102', '5', '{\"description\":\"Bitte \\\"name\\\" der von der Navigation auszuschliessenden Seiten eingeben. Mehrere Seiten mit | trennen.\",\"label\":\"Ausgeschlossene Seiten\",\"notes\":\"Die hier ausgeschlossenen Seiten werden in der Sitemap angezeigt und werden f\\u00fcr Suchergebnisse indexiert. Mit dem Feld \\\"Ausgeschlossene Seiten\\\" werden die Seiten lediglich in der Hauptnavigation nicht ausgegeben\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('101', '78', '0', '{\"columnWidth\":80,\"description\":\"\",\"label\":\"Widget \\u00dcberschrift\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('102', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('103', '76', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('103', '102', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('103', '79', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('103', '78', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('103', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '44', '7', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '103', '8', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('103', '82', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('103', '109', '6', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('103', '44', '7', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('103', '103', '8', NULL);

DROP TABLE IF EXISTS `fields`;
CREATE TABLE `fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(128) CHARACTER SET ascii NOT NULL,
  `name` varchar(255) CHARACTER SET ascii NOT NULL,
  `flags` int(11) NOT NULL DEFAULT '0',
  `label` varchar(255) NOT NULL DEFAULT '',
  `data` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `type` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=110 DEFAULT CHARSET=utf8;

INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('1', 'FieldtypePageTitle', 'title', '13', 'Titel', '{\"required\":1,\"textformatters\":[\"TextformatterEntities\"],\"size\":0,\"maxlength\":255,\"collapsed\":0,\"minlength\":0,\"showCount\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('2', 'FieldtypeModule', 'process', '25', 'Process', '{\"description\":\"The process that is executed on this page. Since this is mostly used by ProcessWire internally, it is recommended that you don\'t change the value of this unless adding your own pages in the admin.\",\"collapsed\":1,\"required\":1,\"moduleTypes\":[\"Process\"],\"permanent\":1}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('3', 'FieldtypePassword', 'pass', '24', 'Set Password', '{\"collapsed\":1,\"size\":50,\"maxlength\":128}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('5', 'FieldtypePage', 'permissions', '24', 'Permissions', '{\"derefAsPage\":0,\"parent_id\":31,\"labelFieldName\":\"title\",\"inputfield\":\"InputfieldCheckboxes\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('4', 'FieldtypePage', 'roles', '24', 'Roles', '{\"derefAsPage\":0,\"parent_id\":30,\"labelFieldName\":\"name\",\"inputfield\":\"InputfieldCheckboxes\",\"description\":\"User will inherit the permissions assigned to each role. You may assign multiple roles to a user. When accessing a page, the user will only inherit permissions from the roles that are also assigned to the page\'s template.\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('92', 'FieldtypeEmail', 'email', '9', 'E-Mail Address', '{\"size\":70,\"maxlength\":255}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('82', 'FieldtypeTextarea', 'sidebar', '0', 'Sidebar', '{\"inputfieldClass\":\"InputfieldCKEditor\",\"rows\":5,\"contentType\":1,\"toolbar\":\"Format, Bold, Italic, -, RemoveFormat\\r\\nNumberedList, BulletedList, -, Blockquote\\r\\nPWLink, Unlink, Anchor\\r\\nPWImage, Table, HorizontalRule, SpecialChar\\r\\nPasteText, PasteFromWord\\r\\nScayt, -, Sourcedialog\",\"inlineMode\":0,\"useACF\":1,\"usePurifier\":1,\"formatTags\":\"p;h2;h3;h4;h5;h6;pre;address\",\"extraPlugins\":[\"pwimage\",\"pwlink\",\"sourcedialog\"],\"removePlugins\":\"image,magicline\",\"toggles\":[2,4,8],\"collapsed\":2}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('44', 'FieldtypeImage', 'images', '0', 'Bilder', '{\"extensions\":\"gif jpg jpeg png\",\"adminThumbs\":1,\"inputfieldClass\":\"InputfieldImage\",\"maxFiles\":0,\"descriptionRows\":1,\"fileSchema\":7,\"textformatters\":[\"TextformatterEntities\"],\"outputFormat\":0,\"defaultValuePage\":0,\"defaultGrid\":0,\"icon\":\"camera\",\"gridMode\":\"grid\",\"useTags\":8,\"tagsList\":\"header gallery sidebar no-gallery\",\"resizeServer\":0,\"clientQuality\":90,\"collapsed\":0,\"focusMode\":\"on\",\"maxWidth\":2400,\"maxSize\":4.5}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('79', 'FieldtypeTextarea', 'summary', '1', 'Beschreibung/Zusammenfassung', '{\"inputfieldClass\":\"InputfieldCKEditor\",\"collapsed\":2,\"rows\":3,\"contentType\":0,\"minlength\":0,\"maxlength\":0,\"showCount\":0,\"toolbar\":\"Format, Bold, Italic, NumberedList, BulletedList, -, RemoveFormat\\nPWLink, Unlink,PasteText, PasteFromWord, -, Sourcedialog\",\"inlineMode\":0,\"useACF\":1,\"usePurifier\":1,\"formatTags\":\"p;h2;h3;h4;h5;h6;pre;address\",\"extraPlugins\":[\"pwimage\",\"pwlink\",\"sourcedialog\"],\"removePlugins\":\"image,magicline\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('76', 'FieldtypeTextarea', 'body', '0', 'Dokumenteninhalt', '{\"inputfieldClass\":\"InputfieldCKEditor\",\"rows\":10,\"contentType\":1,\"toolbar\":\"Format, Bold, Italic, -, RemoveFormat\\nNumberedList, BulletedList, -, Blockquote\\nPWLink, Unlink, Anchor\\nPWImage, Table, HorizontalRule, SpecialChar\\nPasteText, PasteFromWord\\nScayt, -, Sourcedialog\",\"inlineMode\":0,\"useACF\":1,\"usePurifier\":1,\"formatTags\":\"p;h2;h3;h4;h5;h6;pre;address\",\"extraPlugins\":[\"pwimage\",\"pwlink\",\"sourcedialog\"],\"removePlugins\":\"image,magicline\",\"toggles\":[2,4,8],\"collapsed\":0,\"minlength\":0,\"maxlength\":0,\"showCount\":0,\"textformatters\":[\"TextformatterHannaCode\"]}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('78', 'FieldtypeText', 'headline', '0', 'Alternative Überschrift', '{\"description\":\"Diese \\u00dcberschrift benutzen, wenn der Seitentitel l\\u00e4nger sein soll als der Titel in der Navigation\",\"textformatters\":[\"TextformatterEntities\"],\"collapsed\":2,\"size\":0,\"maxlength\":1024,\"minlength\":0,\"showCount\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('105', 'FieldtypeText', 'custom_text_input', '0', '', '{\"collapsed\":0,\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('98', 'FieldtypeModule', 'admin_theme', '8', 'Admin Theme', '{\"moduleTypes\":[\"AdminTheme\"],\"labelField\":\"title\",\"inputfieldClass\":\"InputfieldRadios\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('99', 'FieldtypeFile', 'language_files_site', '24', 'Site Translation Files', '{\"extensions\":\"json csv\",\"maxFiles\":0,\"inputfieldClass\":\"InputfieldFile\",\"unzip\":1,\"description\":\"Use this field for translations specific to your site (like files in \\/site\\/templates\\/ for example).\",\"descriptionRows\":0,\"fileSchema\":2}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('100', 'FieldtypeFile', 'language_files', '24', 'Core Translation Files', '{\"extensions\":\"json csv\",\"maxFiles\":0,\"inputfieldClass\":\"InputfieldFile\",\"unzip\":1,\"description\":\"Use this field for [language packs](http:\\/\\/modules.processwire.com\\/categories\\/language-pack\\/). To delete all files, double-click the trash can for any file, then save.\",\"descriptionRows\":0,\"fileSchema\":2}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('101', 'FieldtypePage', 'language', '24', 'Language', '{\"derefAsPage\":1,\"parent_id\":1024,\"labelFieldName\":\"title\",\"inputfield\":\"InputfieldRadios\",\"required\":1}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('102', 'FieldtypeText', 'browser_title', '0', 'Browser Titel', '{\"textformatters\":[\"TextformatterEntities\"],\"collapsed\":0,\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('103', 'FieldtypeFile', 'files', '0', 'Dateien', '{\"textformatters\":[\"TextformatterEntities\"],\"extensions\":\"pdf doc docx xls xlsx gif jpg jpeg png\",\"maxFiles\":0,\"outputFormat\":1,\"defaultValuePage\":0,\"inputfieldClass\":\"InputfieldFile\",\"descriptionRows\":1,\"fileSchema\":6}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('108', 'FieldtypeTextarea', 'small_text', '0', 'Texteditor', '{\"textformatters\":[\"TextformatterHannaCode\"],\"inputfieldClass\":\"InputfieldCKEditor\",\"contentType\":0,\"collapsed\":0,\"minlength\":0,\"maxlength\":0,\"showCount\":0,\"rows\":5,\"toolbar\":\"Format, -, Bold, Italic, -, RemoveFormat, NumberedList, BulletedList, -, Blockquote\\nPWLink, Unlink, Anchor,PWImage,, HorizontalRule, PasteText, PasteFromWord, -, Sourcedialog\",\"inlineMode\":0,\"useACF\":1,\"usePurifier\":1,\"toggles\":[2,4,8],\"formatTags\":\"p;h1;h2;h3;h4;h5;h6;pre;address\",\"extraPlugins\":[\"pwimage\",\"pwlink\",\"sourcedialog\"],\"removePlugins\":\"image,magicline\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('107', 'FieldtypeRepeater', 'widgets', '0', 'Widgets', '{\"template_id\":47,\"parent_id\":1035,\"repeaterFields\":[78,105,108],\"repeaterCollapse\":0,\"repeaterLoading\":1,\"collapsed\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('109', 'FieldtypeText', 'form_name', '0', 'Formular Name', '{\"collapsed\":0,\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0}');

DROP TABLE IF EXISTS `forms`;
CREATE TABLE `forms` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `forms` (`id`, `name`, `data`) VALUES('1', 'contact', '{\"roles\":{\"form-submit\":[\"guest\"],\"form-list\":[],\"form-edit\":[],\"form-delete\":[],\"entries-list\":[],\"entries-edit\":[],\"entries-delete\":[],\"entries-page\":[]},\"framework\":\"Basic\",\"submitText\":\"Abschicken\",\"successMessage\":\"Danke, das Formular wurde erfolgreich verschickt.\",\"errorMessage\":\"One or more errors prevented submission of the form. Please correct and try again.\",\"frBasic_cssURL\":\"\\/site\\/modules\\/FormBuilder\\/frameworks\\/basic\\/main.css\",\"emailSubject\":\"Kontaktformular\",\"responderSubject\":\"Auto-Response\",\"saveFlags\":35,\"theme\":\"basic\",\"frBasic_noLoad\":[\"jquery\"],\"honeypot\":\"spezial\",\"emailTo\":\"contact@webbear.ch\",\"emailFrom\":\"e_mail\",\"emailFrom2\":\"contact@webbear.ch\",\"children\":{\"vorname_und_name\":{\"type\":\"Text\",\"label\":\"Vorname und Name\",\"required\":1,\"maxlength\":2048},\"e_mail\":{\"type\":\"Email\",\"label\":\"E-Mail\",\"required\":1,\"maxlength\":512},\"mitteilung\":{\"type\":\"Textarea\",\"label\":\"Mitteilung\",\"rows\":5},\"spezial\":{\"type\":\"Text\",\"label\":\"Spezial\",\"maxlength\":2048}}}');

DROP TABLE IF EXISTS `forms_entries`;
CREATE TABLE `forms_entries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `forms_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `created` timestamp NOT NULL,
  PRIMARY KEY (`id`),
  KEY `forms_id` (`forms_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `forms_entries` (`id`, `forms_id`, `data`, `created`) VALUES('1', '1', '{\"vorname_und_name\":\"Hans-Jakob Bollinger\",\"e_mail\":\"hjbollinger@me.com\",\"mitteilung\":\"Testmitteilung\",\"spezial\":\"\",\"contact_submit\":\"Abschicken\"}', '2019-01-24 07:09:29');

DROP TABLE IF EXISTS `hanna_code`;
CREATE TABLE `hanna_code` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `code` text,
  `modified` int(10) unsigned NOT NULL DEFAULT '0',
  `accessed` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

INSERT INTO `hanna_code` (`id`, `name`, `type`, `code`, `modified`, `accessed`) VALUES('1', 'children', '2', '<?php\n\nif(isset($parent)) {\n  // If $parent is an ID or path, lets convert it to a Page\n  $parent = $pages->get($parent);\n} else {\n  // otherwise lets assume the current page is the parent\n  $parent = $page;\n}\necho \"<ul class=\'sub-page-nav\'>\";\n$c = 0;\nforeach($parent->children as $child) {\n    echo \"<li class=\'item-$c\'><a href=\'$child->url\'>\";\n    \n    if (count($child->images)) {\n        $image = $child->images->first();\n        $thumb = $image->size(220,220);\n        echo \"<div class=\'img\'><img src=\'{$thumb->url}\' width=\'{$thumb->width}\' height=\'{$thumb->height}\' alt=\'{$child->title}\' /></div>\";\n    }\n    echo \"<h2>$child->title</h2>\";\n	$description = ($child->summary) ? \"<div class=\'summary\'>{$child->summary}</div>\" : \"\";\n    $c++;\n   echo $description.\"</a></li>\";\n}\necho \"</ul>\";', '1490079403', '1549645888');
INSERT INTO `hanna_code` (`id`, `name`, `type`, `code`, `modified`, `accessed`) VALUES('2', 'gallery', '2', '<?php\n/* ****************************\n	#Gallery code\n	#Attributes\n	-gallery_images\n	-first\n	-last\n	-thumb_width\n	-thumb_height\n	-gallery_page\n	-gallery_name\n	-no_gallery_tag\n	\n	#Further instructions\n\n  ****************************\n*/\n$fileField = (isset($gallery_images)) ? $gallery_images : \'images\';\n\n$galleryPage = (isset($gallery_page)) ? $gallery_page : false;\n$noGalleryTag = (isset($no_gallery_tag)) ? $no_gallery_tag : \"no-gallery\";\n\n$start = (isset($first)) ? $first-1 : 0;\n$end = (isset($last)) ? $last-1 : \'\';\n$images = array();\nif ($galleryPage == false) {\n	$images = $page->$fileField;\n} else {\n    $images = wire(\'pages\')->get($galleryPage)->$fileField;\n}\n$thumbWidth = (isset($thumb_width)) ? $thumb_width : 500;\n$thumbHeight = (isset($thumb_height)) ? $thumb_height : 500;\nif(count($images)) {\n$start = (isset($first)) ? $first : 1;\n$end = (isset($last)) ? $last : count($images);\n$galleryName = (isset($gallery_name)) ? $gallery_name : \'gallery-1\';\n$c =0;\n\n$galleryClass = (isset($gallery_class)) ? $gallery_class : \"gallery lightcase-gallery\";\n\necho \"<ul class=\'{$galleryClass}\'>\";\nforeach($images as $image) {\n        if (strpos($image->tags , $noGalleryTag) > -1) continue;\n		$c++;\n		if ($c < $start ) continue;\n		\n		$thumb = $image->size($thumbWidth,$thumbHeight);\n	    $alt = ($image->description) ? $image->description : \'\';\n		$title = ($image->description) ? \" title=\'$image->description\'\" : \'\';\n		\n		echo \"<li class=\'gallery-item gallery-item-{$c}\'>\";\n		echo \"<a href=\'{$image->url}\' data-rel=\'lightcase:{$galleryName}\'{$title}>\";\n		echo \"<img src=\'{$thumb->url}\' alt=\'{$alt}\' width=\'{$thumb->width}\' height=\'{$thumb->height}\' />\";\n		echo \"</a>\";\n		echo \"</li>\";\n		if ($c == $end) break;\n	}\n	echo \"</ul>\";\n	\n}', '1548224899', '1548399961');
INSERT INTO `hanna_code` (`id`, `name`, `type`, `code`, `modified`, `accessed`) VALUES('3', 'video', '2', '<?php\n if (isset($video_name)) {\n     $pageFiles = explode(\"|\", $page->movies);\n     $ratio = (isset($ratio)) ? $ratio : \"16x9\";\n     $title = (isset($title)) ? \"<span class=\'title caption\'>{$title}</span>\" : \"\"; \n     if (in_array($video_name.\".mp4\", $pageFiles)) {\n         echo \"<div class=\'embed embed-$ratio\'>$title<video controls preload=\'metadata\' class=\'embeded-item\'>\".\n         \"<source src=\'{$config->urls->assets}files/$page->id/$video_name.mp4\' type=\'video/mp4\'>\";\n         \n         if (in_array($video_name.\".ogg\", $pageFiles)) {\n             \n            echo  \"<source src=\'{$config->urls->assets}files/$page->id/$video_name.ogg\' type=\'video/ogg\'>\";\n        }\n         \n         \n         echo \"</video></div>\";\n     } else {\n         echo \"<p class=\'alert\'>Leider wurde kein mp4 Film \'$video_name\' gefunden - bitte überprüfen Sie die Rechtschreibung sowie Gross/Klein-Schreibung und beachten Sie, dass der Name OHNE Dateiendung angegeben werden muss!</p>\";\n         \n     }\n     \n } else {\n     \n     echo \"<p class=\'alert\'>Bitte Video Datei Name \'video_name=datei-name-ohne-endung\'!</p>\";\n }', '1548054321', '0');
INSERT INTO `hanna_code` (`id`, `name`, `type`, `code`, `modified`, `accessed`) VALUES('4', 'audio', '2', '<?php\n if (isset($audio_name)) {\n     $pageFiles = explode(\"|\", $page->files);\n     $title = (isset($title)) ? \"<span class=\'title caption\'>{$title}</span>\" : \"\"; \n     if (in_array($audio_name.\".mp3\", $pageFiles)) {\n         echo \"<div class=\'embed-audio\'>$title<audio controls  class=\'embeded-audio\'>\".\n         \"<source src=\'/site/assets/files/$page->id/$audio_name.mp3\' type=\'audio/mpeg\'>\";        \n         if (in_array($video_name.\".ogg\", $pageFiles)) {         \n            echo  \"<source src=\'/site/assets/files/$page->id/$audio_name.ogg\' type=\'audio/ogg\'>\";\n        }        \n         echo \"</audio></div>\";\n     } else {\n         echo \"<p class=\'alert\'>Leider wurde kein Audio Beitrag \'$audio_name\' gefunden - bitte überprüfen Sie die Rechtschreibung sowie Gross/Klein-Schreibung und beachten Sie, dass der Name OHNE Dateiendung angegeben werden muss!</p>\";\n         \n     }\n     \n } else {\n     \n     echo \"<p class=\'alert\'>Bitte Audio Datei Name \'audio_name=datei-name-ohne-endung\'!</p>\";\n }', '1548054446', '0');
INSERT INTO `hanna_code` (`id`, `name`, `type`, `code`, `modified`, `accessed`) VALUES('5', 'utility-nav', '2', '<?php\n$pagelist = (isset($page_list)) ? $page_list : \'top|site-map\';\n$printLink = (isset($print)) ? $print : false;\n$gotop = (isset($top)) ? $top : \"Top\";\n$list = array();\n$list = explode(\"|\", $pagelist);\n\necho \"<ul class=\'utilities nav\'>\";\n$c = 1;\nforeach($list as $l) {\n	\n	if (is_numeric($l)) {\n	    $el = $pages->get($l);\n	} else {\n	    $el = $pages->get(\'/\'.$l.\'/\');\n	}\n	$first = ($c == 1) ? \" first-child\"  : \"\";	\n	$last =  ($printLink == false && $c == count($list)) ? \" last-child\" : \"\";\n	if ($l==\'top\') {\n		$url = \"#top\";\n		$title = $gotop;\n		$name = \"top\";\n	} else {\n	    $url =$el->url;\n		$title = $el->title;\n		$name = $el->name;\n	}\n	if ($el->id  && $l != \'top\') {\n	    	echo \"<li class=\'item-{$name}{$first}{$last}\'><a href=\'{$url}\'>{$title}</a></li>\";\n	} else {\n	    echo \"<li class=\'item-{$name}{$first}{$last}\'><a href=\'{$url}\'>{$title}</a></li>\";\n	}\n	$c++;\n}\nif ($printLink) {\n   	echo \"<li class=\'item-print\'><a href=\'#\' onclick=\'window.print()\'>\".$printLink.\"</a></li>\";\n}\n   echo \'</ul>\';', '1548054475', '1549645888');
INSERT INTO `hanna_code` (`id`, `name`, `type`, `code`, `modified`, `accessed`) VALUES('6', 'get-content', '2', '<?php\n    $pageId = (isset($page_id)) ? $page_id : 1;\n    $field = (isset($custom_field)) ? $custom_field : \"sidebar\";\n    $p = $pages->get($pageId);\n    if ($p->$field) {\n        echo \"<div class=\'widget get-content-widget\'>{$p->$field}</div>\";\n    }', '1548054555', '0');
INSERT INTO `hanna_code` (`id`, `name`, `type`, `code`, `modified`, `accessed`) VALUES('7', 'last-modified', '2', '<?php\n$text = (isset($text)) ? $text : \"Letzte Aktualiserung: \";\n$last = $pages->find(\"sort=-modified\")->first()->modified;\n$date = strftime(\"%d.%m.%G\", $last);\necho \"<div class=\'widget\'><p class=\'last-modified\'>{$text}<span class=\'date\'>{$date}</span></p></div>\";', '1548054563', '0');
INSERT INTO `hanna_code` (`id`, `name`, `type`, `code`, `modified`, `accessed`) VALUES('8', 'sub-navigation', '2', '<?php\n$parent = $page->rootParent;\n$children = $parent->children();\n\n\n\nif ($children->count) {\n    echo \"<div class=\'sub-nav-widget widget\'>\";\n    echo \"<h3><a href=\'$parent->url\'>$parent->title</a></h3>\";\n    \n    echo \"<ul class=\'sub-nav\'>\";\n    foreach($children as $child) {\n        $class = ($child->id == $page->id) ? \" class=\'active\'\" : \"\";\n        echo \"<li$class><a href=\'$child->url\'>$child->title</a></li>\";\n    }\n    echo \"</ul>\";\n    echo \"</div>\";\n}', '1548054592', '0');
INSERT INTO `hanna_code` (`id`, `name`, `type`, `code`, `modified`, `accessed`) VALUES('9', 'youtube', '2', '<?php\nif (isset($url)) {\n    $ratio = (isset($ratio)) ? $ratio : \"16x9\" ;\n    $class = (isset($class)) ? $class : \'youtube-video embeded-item\';\n    // https://youtu.be/jrCHGQzidNk\n    if (stripos($url, \"youtu.be\")) {\n        //https://www.youtube.com/embed/jrCHGQzidNk\n        $newUrl = \"https://www.youtube.com/embed/\". substr($url, (stripos($url, \".be/\") + 3) );\n    } else {\n        $newUrl = $url;\n    }\n    \n    echo \'<div class=\"embed embed-$ratio\"><iframe  src=\"\'.$newUrl.\'\" frameborder=\"0\" allowfullscreen class=\"\'.$class.\'\"></iframe></div>\';\n }', '1548054643', '0');
INSERT INTO `hanna_code` (`id`, `name`, `type`, `code`, `modified`, `accessed`) VALUES('10', 'copyright', '2', '<?php\n\necho \"<div class=\'additionals\'>\";\necho \"<span class=\'copyright\'>&copy; \" . date(\'Y\') . \"</span>\";\necho (isset($headline)) ? \" <span class=\'site-headline\'>\" . pages(\"/settings/\")->headline . \"</span>\" : \"\";\necho (isset($webbear)) ? \" <span class=\'webbear\'><a href=\'https://www.webbear.ch\'>designed by webbear.ch</a></span>\" : \"\";\necho \"</div>\";', '1548307858', '1549645888');

DROP TABLE IF EXISTS `modules`;
CREATE TABLE `modules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `class` varchar(128) CHARACTER SET ascii NOT NULL,
  `flags` int(11) NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `class` (`class`)
) ENGINE=MyISAM AUTO_INCREMENT=196 DEFAULT CHARSET=utf8;

INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('1', 'FieldtypeTextarea', '1', '', NOW());
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('2', 'FieldtypeNumber', '0', '', NOW());
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('3', 'FieldtypeText', '1', '', NOW());
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('4', 'FieldtypePage', '3', '', NOW());
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('30', 'InputfieldForm', '0', '', NOW());
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('6', 'FieldtypeFile', '1', '', NOW());
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('7', 'ProcessPageEdit', '1', '', NOW());
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('10', 'ProcessLogin', '0', '', NOW());
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('12', 'ProcessPageList', '0', '{\"pageLabelField\":\"title\",\"paginationLimit\":25,\"limit\":50}', NOW());
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('121', 'ProcessPageEditLink', '1', '', NOW());
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('14', 'ProcessPageSort', '0', '', NOW());
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('15', 'InputfieldPageListSelect', '0', '', NOW());
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('117', 'JqueryUI', '1', '', NOW());
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('17', 'ProcessPageAdd', '0', '', NOW());
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('125', 'SessionLoginThrottle', '11', '', NOW());
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('122', 'InputfieldPassword', '0', '', NOW());
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('25', 'InputfieldAsmSelect', '0', '', NOW());
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('116', 'JqueryCore', '1', '', NOW());
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('27', 'FieldtypeModule', '1', '', NOW());
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('28', 'FieldtypeDatetime', '0', '', NOW());
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('29', 'FieldtypeEmail', '1', '', NOW());
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('108', 'InputfieldURL', '0', '', NOW());
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('32', 'InputfieldSubmit', '0', '', NOW());
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('33', 'InputfieldWrapper', '0', '', NOW());
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('34', 'InputfieldText', '0', '', NOW());
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('35', 'InputfieldTextarea', '0', '', NOW());
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('36', 'InputfieldSelect', '0', '', NOW());
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('37', 'InputfieldCheckbox', '0', '', NOW());
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('38', 'InputfieldCheckboxes', '0', '', NOW());
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('39', 'InputfieldRadios', '0', '', NOW());
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('40', 'InputfieldHidden', '0', '', NOW());
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('41', 'InputfieldName', '0', '', NOW());
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('43', 'InputfieldSelectMultiple', '0', '', NOW());
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('45', 'JqueryWireTabs', '0', '', NOW());
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('46', 'ProcessPage', '0', '', NOW());
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('47', 'ProcessTemplate', '0', '', NOW());
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('48', 'ProcessField', '32', '{\"collapsedTags\":[]}', NOW());
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('50', 'ProcessModule', '0', '', NOW());
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('114', 'PagePermissions', '3', '', NOW());
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('97', 'FieldtypeCheckbox', '1', '', NOW());
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('115', 'PageRender', '3', '{\"clearCache\":1}', NOW());
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('55', 'InputfieldFile', '0', '', NOW());
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('56', 'InputfieldImage', '0', '', NOW());
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('57', 'FieldtypeImage', '1', '', NOW());
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('60', 'InputfieldPage', '0', '{\"inputfieldClasses\":[\"InputfieldSelect\",\"InputfieldSelectMultiple\",\"InputfieldCheckboxes\",\"InputfieldRadios\",\"InputfieldAsmSelect\",\"InputfieldPageListSelect\",\"InputfieldPageListSelectMultiple\",\"InputfieldPageAutocomplete\"]}', NOW());
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('61', 'TextformatterEntities', '0', '', NOW());
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('66', 'ProcessUser', '0', '{\"showFields\":[\"name\",\"email\",\"roles\"]}', NOW());
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('67', 'MarkupAdminDataTable', '0', '', NOW());
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('68', 'ProcessRole', '0', '{\"showFields\":[\"name\"]}', NOW());
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('76', 'ProcessList', '0', '', NOW());
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('78', 'InputfieldFieldset', '0', '', NOW());
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('79', 'InputfieldMarkup', '0', '', NOW());
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('80', 'InputfieldEmail', '0', '', NOW());
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('89', 'FieldtypeFloat', '1', '', NOW());
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('83', 'ProcessPageView', '0', '', NOW());
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('84', 'FieldtypeInteger', '0', '', NOW());
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('85', 'InputfieldInteger', '0', '', NOW());
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('86', 'InputfieldPageName', '0', '', NOW());
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('87', 'ProcessHome', '0', '', NOW());
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('90', 'InputfieldFloat', '0', '', NOW());
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('94', 'InputfieldDatetime', '0', '', NOW());
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('98', 'MarkupPagerNav', '0', '', NOW());
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('129', 'ProcessPageEditImageSelect', '1', '', NOW());
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('103', 'JqueryTableSorter', '1', '', NOW());
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('104', 'ProcessPageSearch', '1', '{\"searchFields\":\"title\",\"displayField\":\"title path\"}', NOW());
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('105', 'FieldtypeFieldsetOpen', '1', '', NOW());
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('106', 'FieldtypeFieldsetClose', '1', '', NOW());
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('107', 'FieldtypeFieldsetTabOpen', '1', '', NOW());
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('109', 'ProcessPageTrash', '1', '', NOW());
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('111', 'FieldtypePageTitle', '1', '', NOW());
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('112', 'InputfieldPageTitle', '0', '', NOW());
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('113', 'MarkupPageArray', '3', '', NOW());
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('131', 'InputfieldButton', '0', '', NOW());
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('133', 'FieldtypePassword', '1', '', NOW());
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('134', 'ProcessPageType', '33', '{\"showFields\":[]}', NOW());
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('135', 'FieldtypeURL', '1', '', NOW());
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('136', 'ProcessPermission', '1', '{\"showFields\":[\"name\",\"title\"]}', NOW());
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('137', 'InputfieldPageListSelectMultiple', '0', '', NOW());
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('138', 'ProcessProfile', '1', '{\"profileFields\":[\"pass\",\"email\",\"admin_theme\",\"language\"]}', NOW());
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('139', 'SystemUpdater', '1', '{\"systemVersion\":16,\"coreVersion\":\"3.0.125\"}', NOW());
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('148', 'AdminThemeDefault', '10', '{\"colors\":\"modern\"}', NOW());
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('149', 'InputfieldSelector', '42', '', NOW());
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('150', 'ProcessPageLister', '32', '', NOW());
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('151', 'JqueryMagnific', '1', '', '2014-07-21 07:21:45');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('152', 'PagePathHistory', '3', '', '2014-07-25 09:36:57');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('155', 'InputfieldCKEditor', '0', '', '2014-07-25 10:26:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('156', 'MarkupHTMLPurifier', '0', '', '2014-07-25 10:26:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('158', 'ProcessRecentPages', '1', '', '2014-11-13 08:41:28');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('159', 'ProcessWireUpgrade', '1', '', '2014-11-13 08:42:09');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('160', 'ProcessWireUpgradeCheck', '11', '', '2014-11-13 08:42:09');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('161', 'TextformatterHannaCode', '1', '', '2014-11-13 08:45:57');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('162', 'ProcessHannaCode', '1', '', '2014-11-13 08:45:57');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('163', 'TextformatterAutoLinks', '1', '', '2014-11-13 08:47:21');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('164', 'FieldtypeMultiplier', '1', '', '2014-11-13 08:47:24');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('165', 'InputfieldMultiplier', '0', '', '2014-11-13 08:47:24');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('166', 'FieldtypeTable', '1', '', '2014-11-13 08:47:32');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('167', 'InputfieldTable', '0', '', '2014-11-13 08:47:32');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('168', 'FieldtypeTextareas', '1', '', '2014-11-13 08:47:41');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('169', 'InputfieldTextareas', '0', '', '2014-11-13 08:47:41');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('170', 'FieldtypePageTable', '3', '', '2014-11-22 12:37:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('171', 'InputfieldPageTable', '0', '', '2014-11-22 12:37:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('172', 'ProcessLogger', '1', '', '2017-03-19 10:03:48');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('173', 'InputfieldIcon', '0', '', '2017-03-19 10:03:49');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('174', 'AdminThemeUikit', '14', '{\"useAsLogin\":1,\"layout\":\"\",\"cssURL\":\"\",\"logoURL\":\"\",\"noBorderTypes\":[\"InputfieldCKEditor\"],\"cardTypes\":[],\"offsetTypes\":[\"InputfieldFile\",\"InputfieldImage\"],\"useOffset\":\"\",\"userAvatar\":\"icon.user-circle\",\"userLabel\":\"{Name}\",\"logoAction\":\"0\",\"maxWidth\":1600,\"groupNotices\":\"1\"}', '2017-03-19 10:11:13');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('175', 'ProcessDatabaseBackups', '1', '', '2017-03-19 10:11:31');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('176', 'LanguageSupport', '35', '{\"languagesPageID\":1024,\"defaultLanguagePageID\":1025,\"otherLanguagePageIDs\":[],\"languageTranslatorPageID\":1026}', '2017-03-19 10:12:26');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('177', 'ProcessLanguage', '1', '', '2017-03-19 10:12:26');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('178', 'ProcessLanguageTranslator', '1', '', '2017-03-19 10:12:27');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('179', 'LanguageSupportFields', '3', '', '2017-03-19 10:17:42');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('180', 'FieldtypeTextLanguage', '1', '', '2017-03-19 10:17:42');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('181', 'FieldtypePageTitleLanguage', '1', '', '2017-03-19 10:17:43');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('182', 'FieldtypeTextareaLanguage', '1', '', '2017-03-19 10:17:43');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('183', 'LanguageSupportPageNames', '3', '{\"moduleVersion\":10,\"pageNumUrlPrefix1025\":\"page\",\"useHomeSegment\":\"0\"}', '2017-03-19 10:17:53');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('184', 'LanguageTabs', '11', '', '2017-03-19 10:18:02');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('186', 'PageFrontEdit', '2', '{\"inlineEditFields\":[],\"inlineLimitPage\":\"1\",\"buttonLocation\":\"auto\",\"buttonType\":\"auto\"}', '2017-03-19 12:20:52');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('187', 'InputfieldPageAutocomplete', '0', '', '2017-07-11 06:40:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('188', 'AdminOnSteroids', '11', '{\"enabled\":1,\"enabledSubmodules\":[\"FieldOverrides\",\"Hotkeys\",\"PageListTweaks\"],\"AddNewChildFirst_enabledTemplates\":[],\"AdminTweaks\":[],\"AsmTweaks\":[],\"CKEaddons_plugins\":[],\"CKEaddons_enabledFields\":[],\"CKEaddons_skin\":\"default\",\"ListerTweaks_find\":[\"\"],\"ListerTweaks_users\":[\"\"],\"ListerTweaks_options\":[],\"DeselectRadios\":[\"adminOnly\"],\"FieldAndTemplateEditLinks\":\"pw-blank\",\"FileFieldTweaks\":[],\"FieldOverrides\":\"\",\"FocusInputOnLangTabSwitch\":\"focus\",\"FocusInputOnLangTabSwitchCKE\":\"focus\",\"Hotkeys\":[\"breadcrumbTweaks\",\"save\"],\"IUC_mode\":[\"button\"],\"IUC_buttonPosition\":\"button-left\",\"IUC_target\":\"pw-blank\",\"IUC_forceHttp\":\"\",\"IUC_enabledTemplates\":[],\"LongClickDuration\":\"600\",\"Misc\":[],\"ModuleTweaks\":[],\"NavItems_pages_submenu\":null,\"NavItems_pages\":[],\"NavItems_custom\":\"\",\"PageListIcons\":\"\",\"PageListThumbs_style\":\"circle\",\"PageListThumbs_items\":\"\",\"PageListThumbs_options\":[],\"PageListTweaks\":[\"highlightRows\",\"pListIDs\",\"refreshBtn\",\"deleteBtn\"],\"PagePreviewBtn\":\"pw-blank\",\"RenoTweaks\":[],\"RestrictTreeDropdown\":[],\"Tooltips\":[],\"UikitTweaks\":[],\"AdminStyle\":\"\",\"AdminScript\":\"\",\"CKEStyle\":\"\",\"CKEScript\":\"\",\"CKEtemplates\":\"\",\"FieldOverridesFile\":\"\",\"BrandingLogo\":\"\",\"restore\":\"\",\"uninstall\":\"\",\"submit_save_module\":\"Absenden\",\"PageListTweaksRoles\":[]}', '2019-01-21 07:49:39');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('189', 'TracyDebugger', '3', '{\"apiDataVersion\":\"3.0.125\",\"enabled\":1,\"outputMode\":\"detect\",\"superuserForceDevelopment\":\"\",\"guestForceDevelopmentLocal\":\"\",\"ipAddress\":\"\",\"strictMode\":\"\",\"strictModeAjax\":\"\",\"forceScream\":\"\",\"showLocation\":[\"Tracy\\\\Dumper::LOCATION_SOURCE\",\"Tracy\\\\Dumper::LOCATION_LINK\",\"Tracy\\\\Dumper::LOCATION_CLASS\"],\"debugInfo\":1,\"maxDepth\":3,\"maxLength\":150,\"showFireLogger\":1,\"referencePageEdited\":1,\"linksNewTab\":\"\",\"logSeverity\":[],\"email\":\"\",\"clearEmailSent\":\"\",\"showDebugBar\":[\"frontend\",\"backend\"],\"hideDebugBarModals\":[\"regularModal\",\"inlineModal\",\"overlayPanels\",\"formBuilderIframe\"],\"hideDebugBarFrontendTemplates\":[],\"hideDebugBarBackendTemplates\":[],\"debugbarFixedPosition\":\"\",\"hideDebugBar\":\"\",\"showPanelLabels\":\"\",\"panelZindex\":100,\"frontendPanels\":[\"processwireInfo\",\"requestInfo\",\"processwireLogs\",\"tracyLogs\",\"methodsInfo\",\"debugMode\",\"console\",\"panelSelector\",\"tracyToggler\"],\"backendPanels\":[\"processwireInfo\",\"requestInfo\",\"processwireLogs\",\"tracyLogs\",\"methodsInfo\",\"debugMode\",\"console\",\"panelSelector\",\"tracyToggler\"],\"restrictedUserDisabledPanels\":[],\"nonToggleablePanels\":[],\"panelSelectorTracyTogglerButton\":1,\"editor\":\"subl:\\/\\/open\\/?url=file:\\/\\/%file&line=%line\",\"localRootPath\":\"\",\"useOnlineEditor\":[],\"onlineEditor\":\"tracy\",\"forceEditorLinksToTracy\":1,\"aceTheme\":\"tomorrow_night_bright\",\"codeFontSize\":14,\"codeLineHeight\":24,\"codeShowInvisibles\":\"1\",\"codeTabSize\":4,\"codeUseSoftTabs\":\"1\",\"pwAutocompletions\":1,\"codeShowDescription\":1,\"customSnippetsUrl\":\"\",\"fileEditorBaseDirectory\":\"templates\",\"fileEditorAllowedExtensions\":\"php, module, js, css, txt, log, htaccess\",\"processwireInfoPanelSections\":[\"versionsList\",\"adminLinks\",\"documentationLinks\",\"gotoId\",\"processWireWebsiteSearch\"],\"customPWInfoPanelLinks\":[\"\\/admin\\/setup\\/template\\/\",\"\\/admin\\/setup\\/field\\/\",\"\\/admin\\/setup\\/\",\"\\/admin\\/module\\/\",\"\\/admin\\/access\\/users\\/\",\"\\/admin\\/access\\/roles\\/\",\"\\/admin\\/access\\/permissions\\/\",\"\\/admin\\/profile\\/\"],\"showPWInfoPanelIconLabels\":1,\"pWInfoPanelLinksNewTab\":\"\",\"apiExplorerShowDescription\":1,\"apiExplorerToggleDocComment\":\"\",\"apiExplorerModuleClasses\":[],\"captainHookShowDescription\":1,\"captainHookToggleDocComment\":\"\",\"requestInfoPanelSections\":[\"moduleSettings\",\"templateSettings\",\"fieldSettings\",\"pageInfo\",\"pagePermissions\",\"languageInfo\",\"templateInfo\",\"fieldsListValues\",\"serverRequest\",\"inputGet\",\"inputPost\",\"inputCookie\",\"session\",\"editLinks\"],\"imagesInFieldListValues\":1,\"debugModePanelSections\":[\"pagesLoaded\",\"modulesLoaded\",\"hooks\",\"databaseQueries\",\"selectorQueries\",\"timers\",\"user\",\"cache\",\"autoload\"],\"alwaysShowDebugTools\":1,\"diagnosticsPanelSections\":[\"filesystemFolders\"],\"dumpPanelTabs\":[\"debugInfo\",\"fullObject\"],\"todoIgnoreDirs\":\"git, svn, images, img, errors, sass-cache, node_modules\",\"todoAllowedExtensions\":\"php, module, inc, txt, latte, html, htm, md, css, scss, less, js\",\"todoScanModules\":\"\",\"todoScanAssets\":\"\",\"numLogEntries\":10,\"variablesShowPwObjects\":\"\",\"snippetsPath\":\"templates\",\"customPhpCode\":\"\",\"userSwitcherRestricted\":[],\"requestMethods\":[\"GET\",\"POST\",\"PUT\",\"DELETE\",\"PATCH\"],\"requestLoggerMaxLogs\":10,\"requestLoggerReturnType\":\"array\",\"styleWhere\":[],\"styleAdminColors\":\"local|#FF9933\\n*.local|#FF9933\\n*.dev|#FF9933\\ndev.*|#FF9933\\n*.test|#FF9933\\nstaging.*|#8b0066\\n*.com|#009900\",\"styleAdminType\":[\"default\"],\"styleAdminElements\":\"body::before {\\n\\tcontent: \\\"[type]\\\";\\n\\tbackground: [color];\\n\\tposition: fixed;\\n\\tleft: 0;\\n\\tbottom: 100%;\\n\\tcolor: #ffffff;\\n\\twidth: 100vh;\\n\\tpadding: 0;\\n\\ttext-align: center;\\n\\tfont-weight: 600;\\n\\ttext-transform: uppercase;\\n\\ttransform: rotate(90deg);\\n\\ttransform-origin: bottom left;\\n\\tz-index: 999999;\\n\\tfont-family: sans-serif;\\n\\tfont-size: 11px;\\n\\theight: 13px;\\n\\tline-height: 13px;\\npointer-events: none;\\n}\",\"userDevTemplate\":\"\",\"userDevTemplateSuffix\":\"dev\",\"showUserBar\":\"\",\"showUserBarTracyUsers\":null,\"userBarFeatures\":[\"admin\",\"editPage\"],\"userBarCustomFeatures\":\"\",\"userBarTopBottom\":\"bottom\",\"userBarLeftRight\":\"left\",\"userBarBackgroundColor\":null,\"userBarBackgroundOpacity\":\"1\",\"userBarIconColor\":\"#666666\",\"enableShortcutMethods\":1,\"enabledShortcutMethods\":[\"addBreakpoint\",\"bp\",\"barDump\",\"bd\",\"barDumpBig\",\"bdb\",\"barDumpLive\",\"bdl\",\"debugAll\",\"da\",\"dump\",\"d\",\"dumpBig\",\"db\",\"fireLog\",\"fl\",\"l\",\"templateVars\",\"tv\",\"timer\",\"t\"],\"uninstall\":\"\",\"submit_save_module\":\"Absenden\"}', '2019-01-21 07:51:49');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('190', 'ProcessTracyAdminer', '1', '', '2019-01-21 07:51:49');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('191', 'FieldtypeRepeater', '35', '{\"repeatersRootPageID\":1034,\"uninstall\":\"\",\"submit_save_module\":\"Absenden\"}', '2019-01-23 07:35:31');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('192', 'InputfieldRepeater', '0', '', '2019-01-23 07:35:31');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('193', 'FormBuilder', '3', '{\"licenseKey\":\"PWFB3.dev1455.a312b52d1e89776311073c00a4bd069fdcca31dc\",\"embedFields\":[76,108],\"inputfieldClasses\":[\"Integer\",\"URL\",\"Hidden\",\"Float\",\"Text\",\"Checkboxes\",\"Select\",\"Fieldset\",\"Textarea\",\"AsmSelect\",\"Page\",\"Email\",\"Datetime\",\"SelectMultiple\",\"Radios\",\"Checkbox\",\"FormBuilderFile\"],\"embedTag\":\"form-builder\",\"useRoles\":\"\",\"embedCode\":\"<iframe src=\'{httpUrl}\' id=\'FormBuilderViewport_{name}\' class=\'FormBuilderViewport\' data-form=\'{name}\' title=\'{name}\' frameborder=\'0\' allowTransparency=\'true\' style=\'width: 100%; height: 900px;\'><\\/iframe>\",\"markup_list\":\"<div {attrs}>{out}\\n<\\/div>\",\"markup_item\":\"<div {attrs}>{out}\\n<\\/div>\",\"markup_item_label\":\"<label class=\'ui-widget-header\' for=\'{for}\'>{out}<\\/label>\",\"markup_item_content\":\"<div class=\'ui-widget-content\'>{out}<\\/div>\",\"markup_item_error\":\"<p><span class=\'ui-state-error\'>{out}<\\/span><\\/p>\",\"markup_item_description\":\"<p class=\'description\'>{out}<\\/p>\",\"markup_success\":\"<p class=\'ui-state-highlight\'>{out}<\\/p>\",\"markup_error\":\"<p class=\'ui-state-error\'>{out}<\\/p>\",\"classes_form\":\"\",\"classes_list\":\"Inputfields\",\"classes_list_clearfix\":\"ui-helper-clearfix\",\"classes_item\":\"Inputfield Inputfield_{name} ui-widget {class}\",\"classes_item_required\":\"InputfieldStateRequired\",\"classes_item_error\":\"InputfieldStateError ui-state-error\",\"classes_item_collapsed\":\"InputfieldStateCollapsed\",\"classes_item_column_width\":\"InputfieldColumnWidth\",\"classes_item_column_width_first\":\"InputfieldColumnWidthFirst\",\"akismetKey\":\"\",\"csvDelimiter\":\",\",\"filesPath\":\"{config.paths.cache}form-builder\\/\",\"uninstall\":\"\",\"submit_save_module\":\"Absenden\"}', '2019-01-24 06:54:26');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('194', 'ProcessFormBuilder', '1', '', '2019-01-24 06:54:27');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('195', 'InputfieldFormBuilderFile', '0', '', '2019-01-24 06:54:27');

DROP TABLE IF EXISTS `page_path_history`;
CREATE TABLE `page_path_history` (
  `path` varchar(255) NOT NULL,
  `pages_id` int(10) unsigned NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `language_id` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`path`),
  KEY `pages_id` (`pages_id`),
  KEY `created` (`created`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `pages`;
CREATE TABLE `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) unsigned NOT NULL DEFAULT '0',
  `templates_id` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(128) CHARACTER SET ascii NOT NULL,
  `status` int(10) unsigned NOT NULL DEFAULT '1',
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_users_id` int(10) unsigned NOT NULL DEFAULT '2',
  `created` timestamp NOT NULL DEFAULT NOW(),
  `created_users_id` int(10) unsigned NOT NULL DEFAULT '2',
  `published` datetime DEFAULT NULL,
  `sort` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_parent_id` (`name`,`parent_id`),
  KEY `parent_id` (`parent_id`),
  KEY `templates_id` (`templates_id`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  KEY `status` (`status`),
  KEY `published` (`published`)
) ENGINE=MyISAM AUTO_INCREMENT=1043 DEFAULT CHARSET=utf8;

INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1', '0', '1', 'home', '9', '2017-12-14 07:52:07', '41', NOW(), '2', NOW(), '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('2', '1', '2', 'admin', '1035', '2014-09-22 07:06:15', '40', NOW(), '2', NOW(), '5');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('3', '2', '2', 'page', '21', '2011-03-29 21:37:06', '41', NOW(), '2', NOW(), '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('6', '3', '2', 'add', '21', '2017-03-19 10:03:59', '40', NOW(), '2', NOW(), '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('7', '1', '2', 'trash', '1039', '2011-08-14 22:04:52', '41', '2010-02-07 05:29:39', '2', '2010-02-07 05:29:39', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('8', '3', '2', 'list', '21', '2017-03-19 10:08:51', '40', NOW(), '2', NOW(), '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('9', '3', '2', 'sort', '1047', '2011-03-29 21:37:06', '41', NOW(), '2', NOW(), '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('10', '3', '2', 'edit', '1045', '2017-03-19 10:08:39', '40', NOW(), '2', NOW(), '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('11', '22', '2', 'template', '21', '2011-03-29 21:37:06', '41', '2010-02-01 11:04:54', '2', '2010-02-01 11:04:54', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('16', '22', '2', 'field', '21', '2011-03-29 21:37:06', '41', '2010-02-01 12:44:07', '2', '2010-02-01 12:44:07', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('21', '2', '2', 'module', '21', '2011-03-29 21:37:06', '41', '2010-02-02 10:02:24', '2', '2010-02-02 10:02:24', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('22', '2', '2', 'setup', '21', '2011-03-29 21:37:06', '41', '2010-02-09 12:16:59', '2', '2010-02-09 12:16:59', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('23', '2', '2', 'login', '1035', '2011-05-03 23:38:10', '41', '2010-02-17 09:59:39', '2', '2010-02-17 09:59:39', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('27', '1', '29', 'http404', '1035', '2017-03-19 10:19:23', '41', '2010-06-03 06:53:03', '3', '2010-06-03 06:53:03', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('28', '2', '2', 'access', '13', '2011-05-03 23:38:10', '41', '2011-03-19 19:14:20', '2', '2011-03-19 19:14:20', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('29', '28', '2', 'users', '29', '2011-04-05 00:39:08', '41', '2011-03-19 19:15:29', '2', '2011-03-19 19:15:29', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('30', '28', '2', 'roles', '29', '2011-04-05 00:38:39', '41', '2011-03-19 19:15:45', '2', '2011-03-19 19:15:45', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('31', '28', '2', 'permissions', '29', '2011-04-05 00:53:52', '41', '2011-03-19 19:16:00', '2', '2011-03-19 19:16:00', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('32', '31', '5', 'page-edit', '25', '2011-09-06 15:34:24', '41', '2011-03-19 19:17:03', '2', '2011-03-19 19:17:03', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('34', '31', '5', 'page-delete', '25', '2011-09-06 15:34:33', '41', '2011-03-19 19:17:23', '2', '2011-03-19 19:17:23', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('35', '31', '5', 'page-move', '25', '2011-09-06 15:34:48', '41', '2011-03-19 19:17:41', '2', '2011-03-19 19:17:41', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('36', '31', '5', 'page-view', '25', '2011-09-06 15:34:14', '41', '2011-03-19 19:17:57', '2', '2011-03-19 19:17:57', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('37', '30', '4', 'guest', '25', '2011-04-05 01:37:19', '41', '2011-03-19 19:18:41', '2', '2011-03-19 19:18:41', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('38', '30', '4', 'superuser', '25', '2011-08-17 14:34:39', '41', '2011-03-19 19:18:55', '2', '2011-03-19 19:18:55', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('41', '29', '3', 'hjbollinger', '1', '2019-01-21 07:47:31', '41', '2011-03-19 19:41:26', '2', '2011-03-19 19:41:26', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('40', '29', '3', 'guest', '25', '2017-03-19 10:12:27', '41', '2011-03-20 17:31:59', '2', '2011-03-20 17:31:59', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('50', '31', '5', 'page-sort', '25', '2011-09-06 15:34:58', '41', '2011-03-26 22:04:50', '41', '2011-03-26 22:04:50', '5');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('51', '31', '5', 'page-template', '25', '2011-09-06 15:35:09', '41', '2011-03-26 22:25:31', '41', '2011-03-26 22:25:31', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('52', '31', '5', 'user-admin', '25', '2011-09-06 15:35:42', '41', '2011-03-30 00:06:47', '41', '2011-03-30 00:06:47', '10');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('53', '31', '5', 'profile-edit', '1', '2011-08-16 22:32:48', '41', '2011-04-26 00:02:22', '41', '2011-04-26 00:02:22', '13');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('54', '31', '5', 'page-lock', '1', '2011-08-15 17:48:12', '41', '2011-08-15 17:45:48', '41', '2011-08-15 17:45:48', '8');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('300', '3', '2', 'search', '1045', '2011-03-29 21:37:06', '41', '2010-08-04 05:23:59', '2', '2010-08-04 05:23:59', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('301', '3', '2', 'trash', '1047', '2011-03-29 21:37:06', '41', '2010-09-28 05:39:30', '2', '2010-09-28 05:39:30', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('302', '3', '2', 'link', '1041', '2011-03-29 21:37:06', '41', '2010-10-01 05:03:56', '2', '2010-10-01 05:03:56', '7');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('303', '3', '2', 'image', '1041', '2011-03-29 21:37:06', '41', '2010-10-13 03:56:48', '2', '2010-10-13 03:56:48', '8');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('304', '2', '2', 'profile', '1025', '2011-05-03 23:38:10', '41', '2011-04-25 23:57:18', '41', '2011-04-25 23:57:18', '5');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1000', '1', '26', 'search', '1025', '2017-03-19 10:19:34', '41', '2010-09-06 05:05:28', '2', '2010-09-06 05:05:28', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1001', '1', '29', 'ueber', '1', '2017-11-21 07:13:37', '41', '2010-10-25 22:39:33', '2', '2010-10-25 22:39:33', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1002', '1001', '29', 'unterseite-1', '1', '2017-03-21 08:09:40', '41', '2010-10-25 23:21:34', '2', '2010-10-25 23:21:34', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1004', '1', '49', 'kontakt', '1', '2019-01-25 07:52:16', '41', '2010-11-29 22:11:36', '2', '2010-11-29 22:11:36', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1005', '1', '34', 'site-map', '1', '2017-03-21 07:53:56', '41', '2010-11-30 21:16:49', '2', '2010-11-30 21:16:49', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1006', '31', '5', 'page-lister', '1', '2014-07-20 09:00:38', '40', '2014-07-20 09:00:38', '40', '2014-07-20 09:00:38', '9');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1007', '3', '2', 'lister', '1', '2014-07-20 09:00:38', '40', '2014-07-20 09:00:38', '40', '2014-07-20 09:00:38', '9');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1009', '3', '2', 'recent-pages', '1', '2014-11-13 08:41:28', '40', '2014-11-13 08:41:28', '40', '2014-11-13 08:41:28', '10');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1010', '31', '5', 'page-edit-recent', '1', '2014-11-13 08:41:28', '40', '2014-11-13 08:41:28', '40', '2014-11-13 08:41:28', '10');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1011', '22', '2', 'upgrades', '1', '2014-11-13 08:42:09', '41', '2014-11-13 08:42:09', '41', '2014-11-13 08:42:09', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1012', '22', '2', 'hanna-code', '1', '2014-11-13 08:45:57', '41', '2014-11-13 08:45:57', '41', '2014-11-13 08:45:57', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1013', '31', '5', 'hanna-code', '1', '2014-11-13 08:45:58', '41', '2014-11-13 08:45:58', '41', '2014-11-13 08:45:58', '11');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1014', '31', '5', 'hanna-code-edit', '1', '2014-11-13 08:45:58', '41', '2014-11-13 08:45:58', '41', '2014-11-13 08:45:58', '12');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1015', '31', '5', 'hanna-code-php', '1', '2014-11-13 08:45:58', '41', '2014-11-13 08:45:58', '41', '2014-11-13 08:45:58', '13');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1016', '1', '29', 'galerie', '1', '2019-01-24 06:35:46', '41', '2014-11-22 12:40:54', '41', '2014-11-22 12:40:54', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1017', '1001', '29', 'noch-ein-test', '1', '2019-01-25 07:53:35', '41', '2014-11-22 12:44:07', '41', '2014-11-22 12:44:07', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1018', '22', '2', 'logs', '1', '2017-03-19 10:03:48', '40', '2017-03-19 10:03:48', '40', '2017-03-19 10:03:48', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1019', '31', '5', 'logs-view', '1', '2017-03-19 10:03:49', '40', '2017-03-19 10:03:49', '40', '2017-03-19 10:03:49', '14');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1020', '31', '5', 'logs-edit', '1', '2017-03-19 10:03:49', '40', '2017-03-19 10:03:49', '40', '2017-03-19 10:03:49', '15');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1021', '22', '2', 'db-backups', '1', '2017-03-19 10:11:31', '41', '2017-03-19 10:11:31', '41', '2017-03-19 10:11:31', '5');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1022', '31', '5', 'db-backup', '1', '2017-03-19 10:11:31', '41', '2017-03-19 10:11:31', '41', '2017-03-19 10:11:31', '16');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1023', '31', '5', 'lang-edit', '1', '2017-03-19 10:12:26', '41', '2017-03-19 10:12:26', '41', '2017-03-19 10:12:26', '17');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1024', '22', '2', 'languages', '16', '2017-03-19 10:12:27', '41', '2017-03-19 10:12:27', '41', '2017-03-19 10:12:27', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1025', '1024', '43', 'default', '16', '2017-03-19 10:16:04', '41', '2017-03-19 10:12:27', '41', '2017-03-19 10:12:27', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1026', '22', '2', 'language-translator', '1040', '2017-03-19 10:12:27', '41', '2017-03-19 10:12:27', '41', '2017-03-19 10:12:27', '7');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1028', '1', '44', 'settings', '1025', '2019-01-24 06:29:24', '41', '2017-03-19 10:29:42', '41', '2017-03-19 10:30:02', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1029', '31', '5', 'page-edit-front', '1', '2017-03-19 12:20:52', '41', '2017-03-19 12:20:52', '41', '2017-03-19 12:20:52', '18');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1030', '1', '45', 'logout', '1025', '2017-03-21 08:21:52', '41', '2017-03-21 08:21:44', '41', '2017-03-21 08:21:52', '7');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1031', '1', '46', 'sitemap.xml', '1025', '2017-03-21 08:22:40', '41', '2017-03-21 08:22:24', '41', '2017-03-21 08:22:26', '8');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1034', '2', '2', 'repeaters', '1036', '2019-01-23 07:35:31', '41', '2019-01-23 07:35:31', '41', '2019-01-23 07:35:31', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1033', '22', '2', 'adminer', '1', '2019-01-21 07:51:49', '41', '2019-01-21 07:51:49', '41', '2019-01-21 07:51:49', '9');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1035', '1034', '2', 'for-field-107', '17', '2019-01-23 07:36:07', '41', '2019-01-23 07:36:07', '41', '2019-01-23 07:36:07', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1036', '1035', '2', 'for-page-1028', '17', '2019-01-23 07:47:33', '41', '2019-01-23 07:47:33', '41', '2019-01-23 07:47:33', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1037', '1036', '47', '1548226069-45-1', '1', '2019-01-23 07:55:37', '41', '2019-01-23 07:47:49', '41', '2019-01-23 07:48:50', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1038', '1036', '47', '1548307694-52-1', '1', '2019-01-24 06:29:24', '41', '2019-01-24 06:28:14', '41', '2019-01-24 06:28:28', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1039', '1', '48', 'form-builder', '1025', '2019-01-24 06:54:27', '41', '2019-01-24 06:54:27', '41', '2019-01-24 06:54:27', '11');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1040', '31', '5', 'form-builder', '1', '2019-01-24 06:54:27', '41', '2019-01-24 06:54:27', '41', '2019-01-24 06:54:27', '19');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1041', '31', '5', 'form-builder-add', '1', '2019-01-24 06:54:27', '41', '2019-01-24 06:54:27', '41', '2019-01-24 06:54:27', '20');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1042', '22', '2', 'form-builder', '1', '2019-01-24 06:54:27', '41', '2019-01-24 06:54:27', '41', '2019-01-24 06:54:27', '10');

DROP TABLE IF EXISTS `pages_access`;
CREATE TABLE `pages_access` (
  `pages_id` int(11) NOT NULL,
  `templates_id` int(11) NOT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pages_id`),
  KEY `templates_id` (`templates_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('37', '2', '2011-09-06 12:10:09');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('38', '2', '2011-09-06 12:10:09');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('32', '2', '2011-09-06 12:10:09');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('34', '2', '2011-09-06 12:10:09');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('35', '2', '2011-09-06 12:10:09');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('36', '2', '2011-09-06 12:10:09');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('50', '2', '2011-09-06 12:10:09');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('51', '2', '2011-09-06 12:10:09');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('52', '2', '2011-09-06 12:10:09');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('53', '2', '2011-09-06 12:10:09');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('54', '2', '2011-09-06 12:10:09');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1006', '2', '2014-07-20 09:00:38');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1010', '2', '2014-11-13 08:41:28');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1013', '2', '2014-11-13 08:45:58');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1014', '2', '2014-11-13 08:45:58');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1015', '2', '2014-11-13 08:45:58');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1016', '1', '2014-11-22 12:40:54');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1017', '1', '2014-11-22 12:44:07');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1019', '2', '2017-03-19 10:03:49');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1020', '2', '2017-03-19 10:03:49');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1022', '2', '2017-03-19 10:11:31');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1023', '2', '2017-03-19 10:12:26');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1025', '2', '2017-03-19 10:12:27');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1028', '1', '2017-03-19 10:29:42');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1029', '2', '2017-03-19 12:20:52');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1030', '1', '2017-03-21 08:21:44');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1031', '1', '2017-03-21 08:22:24');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1037', '2', '2019-01-23 07:47:49');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1038', '2', '2019-01-24 06:28:14');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1039', '1', '2019-01-24 06:54:27');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1040', '2', '2019-01-24 06:54:27');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1041', '2', '2019-01-24 06:54:27');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1004', '1', '2019-01-24 07:04:43');

DROP TABLE IF EXISTS `pages_parents`;
CREATE TABLE `pages_parents` (
  `pages_id` int(10) unsigned NOT NULL,
  `parents_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`parents_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('2', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('3', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('3', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('7', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('22', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('22', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('28', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('28', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('29', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('29', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('29', '28');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('30', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('30', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('30', '28');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('31', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('31', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('31', '28');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1001', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1002', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1002', '1001');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1004', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1004', '1001');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1005', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1024', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1024', '22');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1034', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1035', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1035', '1034');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1036', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1036', '1034');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1036', '1035');

DROP TABLE IF EXISTS `pages_sortfields`;
CREATE TABLE `pages_sortfields` (
  `pages_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sortfield` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`pages_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `session_login_throttle`;
CREATE TABLE `session_login_throttle` (
  `name` varchar(128) NOT NULL,
  `attempts` int(10) unsigned NOT NULL DEFAULT '0',
  `last_attempt` int(10) unsigned NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `templates`;
CREATE TABLE `templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET ascii NOT NULL,
  `fieldgroups_id` int(10) unsigned NOT NULL DEFAULT '0',
  `flags` int(11) NOT NULL DEFAULT '0',
  `cache_time` mediumint(9) NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `fieldgroups_id` (`fieldgroups_id`)
) ENGINE=MyISAM AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;

INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('2', 'admin', '2', '8', '0', '{\"useRoles\":1,\"parentTemplates\":[2],\"allowPageNum\":1,\"redirectLogin\":23,\"slashUrls\":1,\"noGlobal\":1,\"compile\":3,\"modified\":1490521544,\"ns\":\"\\\\\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('3', 'user', '3', '8', '0', '{\"useRoles\":1,\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"pageClass\":\"User\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"nameContentTab\":1}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('4', 'role', '4', '8', '0', '{\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"pageClass\":\"Role\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"nameContentTab\":1}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('5', 'permission', '5', '8', '0', '{\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"guestSearchable\":1,\"pageClass\":\"Permission\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"nameContentTab\":1}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('1', 'home', '1', '0', '0', '{\"useRoles\":1,\"noParents\":1,\"slashUrls\":1,\"compile\":3,\"modified\":1528696212,\"ns\":\"ProcessWire\",\"roles\":[37]}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('29', 'basic-page', '83', '0', '0', '{\"slashUrls\":1,\"compile\":3,\"label\":\"Basisseite\",\"modified\":1548309858,\"ns\":\"\\\\\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('26', 'search', '80', '0', '0', '{\"noChildren\":1,\"noParents\":1,\"allowPageNum\":1,\"slashUrls\":1,\"compile\":3,\"modified\":1490521544,\"ns\":\"\\\\\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('34', 'sitemap', '88', '0', '0', '{\"noChildren\":1,\"noParents\":1,\"redirectLogin\":23,\"slashUrls\":1,\"compile\":3,\"modified\":1548054131,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('43', 'language', '97', '8', '0', '{\"parentTemplates\":[2],\"slashUrls\":1,\"pageClass\":\"Language\",\"pageLabelField\":\"name\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noChangeTemplate\":1,\"noUnpublish\":1,\"compile\":3,\"nameContentTab\":1,\"modified\":1489914747}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('44', 'settings', '98', '0', '0', '{\"noChildren\":1,\"noParents\":-1,\"parentTemplates\":[1],\"slashUrls\":1,\"compile\":3,\"modified\":1499747778}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('45', 'logout', '99', '0', '0', '{\"noChildren\":1,\"noParents\":-1,\"slashUrls\":1,\"compile\":3,\"modified\":1490521544,\"ns\":\"\\\\\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('46', 'sitemap-xml', '100', '0', '0', '{\"noChildren\":1,\"noParents\":-1,\"slashUrls\":0,\"compile\":3,\"modified\":1490521544,\"noPrependTemplateFile\":1,\"noAppendTemplateFile\":1,\"ns\":\"\\\\\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('47', 'repeater_widgets', '101', '8', '0', '{\"noChildren\":1,\"noParents\":1,\"slashUrls\":1,\"pageClass\":\"RepeaterPage\",\"noGlobal\":1,\"compile\":3,\"modified\":1548225367}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('48', 'form-builder', '102', '8', '0', '{\"noParents\":1,\"urlSegments\":1,\"slashUrls\":1,\"noGlobal\":1,\"compile\":3,\"modified\":1548309374,\"ns\":\"\\\\\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('49', 'basic-page-form', '103', '0', '0', '{\"slashUrls\":1,\"compile\":3,\"label\":\"Basisseite mit Formular\",\"modified\":1548310134,\"ns\":\"ProcessWire\"}');

UPDATE pages SET created_users_id=41, modified_users_id=41, created=NOW(), modified=NOW();

# --- /WireDatabaseBackup {"numTables":29,"numCreateTables":36,"numInserts":704,"numSeconds":0}
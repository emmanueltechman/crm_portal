DROP TABLE IF EXISTS accounts;

CREATE TABLE `accounts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `account_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `opening_date` date NOT NULL,
  `account_number` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `opening_balance` decimal(10,2) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO accounts VALUES('1','Zenith Bank - Chen Homes Ltd','2022-01-25','1015566356','0.00','','2','2022-01-25 14:29:46','2022-01-25 14:29:46');



DROP TABLE IF EXISTS chart_of_accounts;

CREATE TABLE `chart_of_accounts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO chart_of_accounts VALUES('1','Transport to Mr Kunle','expense','2','2022-01-25 14:32:41','2022-01-25 14:32:41');



DROP TABLE IF EXISTS company_email_template;

CREATE TABLE `company_email_template` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `related_to` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO company_email_template VALUES('1','Customer Invoice','New Invoice from Chen Homes Ltd','<p>Hi&nbsp;<span style=\"display: inline !important; float: none; background-color: #ffffff; color: #212529; font-family: SFMono-Regular,Menlo,Monaco,Consolas,\'Liberation Mono\',\'Courier New\',monospace; font-size: 87.5%; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; -ms-overflow-style: scrollbar; orphans: 2; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: pre; word-spacing: 0px;\">{customer_name}</span>,</p>
<p>Please find below your updated invoice&nbsp;<span style=\"display: inline !important; float: none; background-color: #ffffff; color: #212529; font-family: SFMono-Regular,Menlo,Monaco,Consolas,\'Liberation Mono\',\'Courier New\',monospace; font-size: 87.5%; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; -ms-overflow-style: scrollbar; orphans: 2; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: pre; word-spacing: 0px;\">{invoice_no}</span>.</p>
<p>Your total paid is :&nbsp;<span style=\"display: inline !important; float: none; background-color: #ffffff; color: #212529; font-family: SFMono-Regular,Menlo,Monaco,Consolas,\'Liberation Mono\',\'Courier New\',monospace; font-size: 87.5%; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; -ms-overflow-style: scrollbar; orphans: 2; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: pre; word-spacing: 0px;\">{total_paid}</span></p>
<p>Your new amount due is :&nbsp;<span style=\"display: inline !important; float: none; background-color: #ffffff; color: #212529; font-family: SFMono-Regular,Menlo,Monaco,Consolas,\'Liberation Mono\',\'Courier New\',monospace; font-size: 87.5%; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; -ms-overflow-style: scrollbar; orphans: 2; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: pre; word-spacing: 0px;\">{amount_due}</span></p>
<p>Your next due date is:&nbsp;<span style=\"display: inline !important; float: none; background-color: #ffffff; color: #212529; font-family: SFMono-Regular,Menlo,Monaco,Consolas,\'Liberation Mono\',\'Courier New\',monospace; font-size: 87.5%; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; -ms-overflow-style: scrollbar; orphans: 2; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: pre; word-spacing: 0px;\">{due_date}</span></p>
<p>For more details please click here :&nbsp;<span style=\"display: inline !important; float: none; background-color: #ffffff; color: #212529; font-family: SFMono-Regular,Menlo,Monaco,Consolas,\'Liberation Mono\',\'Courier New\',monospace; font-size: 87.5%; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; -ms-overflow-style: scrollbar; orphans: 2; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: pre; word-spacing: 0px;\">{invoice_link}</span></p>
<p>&nbsp;</p>
<p>Thanks for your home ownership/real estate journey with us patronage.</p>
<p>CHEN HOMES LTD.</p>
<p>&nbsp;</p>','invoice','2','2022-01-25 14:45:53','2022-01-25 14:45:53');



DROP TABLE IF EXISTS company_settings;

CREATE TABLE `company_settings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO company_settings VALUES('1','company_name','Chen Homes Ltd','2','2022-01-21 20:16:25','2022-01-21 20:17:37');
INSERT INTO company_settings VALUES('2','phone','08034564366','2','2022-01-21 20:16:25','2022-01-21 20:17:37');
INSERT INTO company_settings VALUES('3','email','emmanueltechman@gmail.com','2','2022-01-21 20:16:25','2022-01-21 20:17:37');
INSERT INTO company_settings VALUES('4','currency','NGN','2','2022-01-21 20:16:25','2022-01-21 20:17:37');
INSERT INTO company_settings VALUES('5','vat_id','','2','2022-01-21 20:16:25','2022-01-21 20:17:37');
INSERT INTO company_settings VALUES('6','language','English','2','2022-01-21 20:16:25','2022-01-21 20:17:37');
INSERT INTO company_settings VALUES('7','backend_direction','ltr','2','2022-01-21 20:16:25','2022-01-21 20:17:37');
INSERT INTO company_settings VALUES('8','address','','2','2022-01-21 20:16:25','2022-01-21 20:17:37');
INSERT INTO company_settings VALUES('9','company_logo','company_logo1643121405.png','2','2022-01-25 14:36:45','2022-01-25 14:36:45');



DROP TABLE IF EXISTS contact_groups;

CREATE TABLE `contact_groups` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS contacts;

CREATE TABLE `contacts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `profile_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO contacts VALUES('1','Individual','','Esther','amadi19esther@gmail.com','','Nigeria','Ibeju Lekki','Lagos','105101','2, Ifeanyi Close, Desa Comm Rd, Ibeju Lekki','','','','','contact_image1642834449.jpg','','4','2','2022-01-22 06:54:09','2022-01-22 06:54:09');



DROP TABLE IF EXISTS current_stocks;

CREATE TABLE `current_stocks` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) NOT NULL,
  `quantity` decimal(8,2) NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO current_stocks VALUES('1','1','0.00','2','2022-01-21 16:51:37','2022-01-21 16:51:37');
INSERT INTO current_stocks VALUES('2','2','0.00','2','2022-01-21 19:56:28','2022-01-21 19:56:28');



DROP TABLE IF EXISTS database_backups;

CREATE TABLE `database_backups` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS email_templates;

CREATE TABLE `email_templates` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO email_templates VALUES('1','registration','Registration Sucessfully','<h3 style=\"color: #555555; font-family: \'PT Sans\', sans-serif;\">Registration Successful</h3>
<p style=\"color: #555555; font-family: \'PT Sans\', sans-serif;\">&nbsp;</p>
<p style=\"color: #555555; font-family: \'PT Sans\', sans-serif;\">Welcome&nbsp;{name},</p>
<p><span style=\"color: #555555; font-family: \'PT Sans\', sans-serif;\">Your account is ready for use. Now you can login to your account using your email and password.<br /><br />Thank You<br />Chen Homes Ltd</span></p>','','2022-01-27 03:41:01');
INSERT INTO email_templates VALUES('2','premium_membership','Premium Membership','<h3 style=\"color: #555555; font-family: \'PT Sans\', sans-serif;\">Account Update Successfully</h3>
<p style=\"color: #555555; font-family: \'PT Sans\', sans-serif;\">&nbsp;</p>
<div style=\"color: #555555; font-family: \'PT Sans\', sans-serif;\">
<div>
<div>&nbsp;</div>
<div>&nbsp;</div>
</div>
<div>
<div>&nbsp;</div>
</div>
</div>
<p><span style=\"color: #555555; font-family: \'PT Sans\', sans-serif;\">Hello {name},</span><br style=\"color: #555555; font-family: \'PT Sans\', sans-serif;\" /><span style=\"color: #555555; font-family: \'PT Sans\', sans-serif;\">Your account has been renewed successfully. Your account is valid until&nbsp;</span><span style=\"background-color: #f5f5f5; color: #333333; font-family: Menlo, Monaco, Consolas, \'Courier New\', monospace; font-size: 13px;\">{valid_to}</span><span style=\"color: #555555; font-family: \'PT Sans\', sans-serif;\">.&nbsp;</span></p>
<p><br style=\"color: #555555; font-family: \'PT Sans\', sans-serif;\" /><span style=\"color: #555555; font-family: \'PT Sans\', sans-serif;\">Thank You</span><br style=\"color: #555555; font-family: \'PT Sans\', sans-serif;\" /><span style=\"color: #555555; font-family: \'PT Sans\', sans-serif;\">Chen Homes Ltd</span></p>','','2022-01-27 03:40:19');
INSERT INTO email_templates VALUES('3','alert_notification','Membership Extended','<h3 style=\"color: #555555; font-family: \'PT Sans\', sans-serif;\">Account Renew Notification</h3>
<p style=\"color: #555555; font-family: \'PT Sans\', sans-serif;\">&nbsp;</p>
<div style=\"color: #555555; font-family: \'PT Sans\', sans-serif;\">
<div>
<div>&nbsp;</div>
<div>&nbsp;</div>
</div>
<div>
<div>&nbsp;</div>
</div>
</div>
<p><span style=\"color: #555555; font-family: \'PT Sans\', sans-serif;\">Hello {name},</span><br style=\"color: #555555; font-family: \'PT Sans\', sans-serif;\" /><span style=\"color: #555555; font-family: \'PT Sans\', sans-serif;\">Please renew your account before expired. You account will inactive after {</span><span style=\"background-color: #f5f5f5; color: #333333; font-family: Menlo, Monaco, Consolas, \'Courier New\', monospace; font-size: 13px;\">valid_to</span><span style=\"color: #555555; font-family: \'PT Sans\', sans-serif;\">}. So please renew your account before {</span><span style=\"background-color: #f5f5f5; color: #333333; font-family: Menlo, Monaco, Consolas, \'Courier New\', monospace; font-size: 13px;\">valid_to</span><span style=\"color: #555555; font-family: \'PT Sans\', sans-serif;\">}. You can contact your customer support for more information.&nbsp;</span></p>
<p><br style=\"color: #555555; font-family: \'PT Sans\', sans-serif;\" /><span style=\"color: #555555; font-family: \'PT Sans\', sans-serif;\">Thank You</span><br style=\"color: #555555; font-family: \'PT Sans\', sans-serif;\" /><span style=\"color: #555555; font-family: \'PT Sans\', sans-serif;\">Chen Homes Ltd</span></p>','','2022-01-27 03:39:21');



DROP TABLE IF EXISTS failed_jobs;

CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS invoice_item_taxes;

CREATE TABLE `invoice_item_taxes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `invoice_id` bigint(20) NOT NULL,
  `invoice_item_id` bigint(20) NOT NULL,
  `tax_id` bigint(20) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS invoice_items;

CREATE TABLE `invoice_items` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `invoice_id` bigint(20) NOT NULL,
  `item_id` bigint(20) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` decimal(10,2) NOT NULL,
  `unit_cost` decimal(10,2) NOT NULL,
  `discount` decimal(10,2) NOT NULL,
  `tax_id` bigint(20) DEFAULT NULL,
  `tax_amount` decimal(10,2) DEFAULT NULL,
  `sub_total` decimal(10,2) NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS invoices;

CREATE TABLE `invoices` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `invoice_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` bigint(20) NOT NULL,
  `invoice_date` date NOT NULL,
  `due_date` date NOT NULL,
  `grand_total` decimal(10,2) NOT NULL,
  `tax_total` decimal(10,2) NOT NULL,
  `paid` decimal(10,2) DEFAULT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS items;

CREATE TABLE `items` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `item_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO items VALUES('1','Blue Stone- Favour Estate- Mowe - 4 Bedroom Duplex','product','2','2022-01-21 16:51:37','2022-01-21 16:51:37');
INSERT INTO items VALUES('2','Favour Estate - Owode - Ota','product','2','2022-01-21 19:56:28','2022-01-21 19:56:28');
INSERT INTO items VALUES('3','Deed of Assignment Document - Plot of Land - Mowe','service','2','2022-01-25 14:04:46','2022-01-25 14:04:46');



DROP TABLE IF EXISTS migrations;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO migrations VALUES('1','2014_10_12_000000_create_users_table','1');
INSERT INTO migrations VALUES('2','2014_10_12_100000_create_password_resets_table','1');
INSERT INTO migrations VALUES('3','2018_06_01_080940_create_settings_table','1');
INSERT INTO migrations VALUES('4','2018_08_29_084110_create_permissions_table','1');
INSERT INTO migrations VALUES('5','2018_10_28_101819_create_contact_groups_table','1');
INSERT INTO migrations VALUES('6','2018_10_28_104344_create_contacts_table','1');
INSERT INTO migrations VALUES('7','2018_10_28_151911_create_taxs_table','1');
INSERT INTO migrations VALUES('8','2018_10_29_095644_create_items_table','1');
INSERT INTO migrations VALUES('9','2018_10_29_100449_create_products_table','1');
INSERT INTO migrations VALUES('10','2018_10_29_101301_create_services_table','1');
INSERT INTO migrations VALUES('11','2018_10_29_101756_create_suppliers_table','1');
INSERT INTO migrations VALUES('12','2018_11_12_152015_create_email_templates_table','1');
INSERT INTO migrations VALUES('13','2018_11_13_063551_create_accounts_table','1');
INSERT INTO migrations VALUES('14','2018_11_13_082226_create_chart_of_accounts_table','1');
INSERT INTO migrations VALUES('15','2018_11_13_082512_create_payment_methods_table','1');
INSERT INTO migrations VALUES('16','2018_11_13_141249_create_transactions_table','1');
INSERT INTO migrations VALUES('17','2018_11_14_134254_create_repeating_transactions_table','1');
INSERT INTO migrations VALUES('18','2018_11_17_142037_create_payment_histories_table','1');
INSERT INTO migrations VALUES('19','2019_03_07_084028_create_purchase_orders_table','1');
INSERT INTO migrations VALUES('20','2019_03_07_085537_create_purchase_order_items_table','1');
INSERT INTO migrations VALUES('21','2019_03_19_070903_create_current_stocks_table','1');
INSERT INTO migrations VALUES('22','2019_03_19_123527_create_company_settings_table','1');
INSERT INTO migrations VALUES('23','2019_03_19_133922_create_product_units_table','1');
INSERT INTO migrations VALUES('24','2019_03_20_113605_create_invoices_table','1');
INSERT INTO migrations VALUES('25','2019_03_20_113618_create_invoice_items_table','1');
INSERT INTO migrations VALUES('26','2019_05_11_080519_create_purchase_return_table','1');
INSERT INTO migrations VALUES('27','2019_05_11_080546_create_purchase_return_items_table','1');
INSERT INTO migrations VALUES('28','2019_05_27_153656_create_quotations_table','1');
INSERT INTO migrations VALUES('29','2019_05_27_153712_create_quotation_items_table','1');
INSERT INTO migrations VALUES('30','2019_06_22_062221_create_sales_return_table','1');
INSERT INTO migrations VALUES('31','2019_06_22_062233_create_sales_return_items_table','1');
INSERT INTO migrations VALUES('32','2019_06_23_055645_create_company_email_template_table','1');
INSERT INTO migrations VALUES('33','2019_08_19_000000_create_failed_jobs_table','1');
INSERT INTO migrations VALUES('34','2020_07_02_145857_create_database_backups_table','1');
INSERT INTO migrations VALUES('35','2020_08_21_063443_add_related_to_company_email_template','1');
INSERT INTO migrations VALUES('36','2020_10_19_082621_create_staff_roles_table','1');
INSERT INTO migrations VALUES('37','2020_10_20_080849_add_description_to_invoice_items','1');
INSERT INTO migrations VALUES('38','2020_12_13_150320_create_invoice_item_taxes_table','1');
INSERT INTO migrations VALUES('39','2020_12_15_055832_create_quotation_item_taxes_table','1');
INSERT INTO migrations VALUES('40','2020_12_15_102722_create_purchase_order_item_taxes_table','1');
INSERT INTO migrations VALUES('41','2020_12_16_070412_create_purchase_return_item_taxes_table','1');
INSERT INTO migrations VALUES('42','2020_12_17_065847_create_sales_return_item_taxes_table','1');
INSERT INTO migrations VALUES('43','2021_05_04_063645_add_email_verified_at_to_users_table','1');
INSERT INTO migrations VALUES('44','2021_05_07_061448_change_group_id_nullale_to_contacts_table','1');
INSERT INTO migrations VALUES('45','2021_05_07_075752_change_tax_method_nullale_to_products_table','1');
INSERT INTO migrations VALUES('46','2021_05_10_075635_add_company_id_to_quotation_items_table','1');



DROP TABLE IF EXISTS password_resets;

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO password_resets VALUES('esther19amadi@gmail.com','$2y$10$MX4OQhwDebYX9RNN6WWaROmSdvXsOyBEVNRBDz7libviEXFwRu3iC','2022-01-24 22:58:10');



DROP TABLE IF EXISTS payment_histories;

CREATE TABLE `payment_histories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL,
  `extend_type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `extend` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS payment_methods;

CREATE TABLE `payment_methods` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO payment_methods VALUES('1','Direct Bank Transfer/Deposit','2','2022-01-25 14:22:09','2022-01-25 14:22:09');



DROP TABLE IF EXISTS permissions;

CREATE TABLE `permissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) NOT NULL,
  `permission` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS product_units;

CREATE TABLE `product_units` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `unit_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO product_units VALUES('1','1 Plot - 650SQM','2','2022-01-21 16:44:41','2022-01-21 16:44:41');
INSERT INTO product_units VALUES('2','1 Plot 450','2','2022-01-21 16:45:21','2022-01-21 16:45:21');
INSERT INTO product_units VALUES('3','Half plot - 325SQM','2','2022-01-21 16:45:52','2022-01-21 16:45:52');
INSERT INTO product_units VALUES('4','2 Bedroom Bungalow- Semi Detached','2','2022-01-21 16:46:32','2022-01-21 16:46:32');
INSERT INTO product_units VALUES('5','3 Bedroom Bungalow - FUlly Detached','2','2022-01-21 16:46:52','2022-01-21 16:46:52');
INSERT INTO product_units VALUES('6','4 Bedroom Duplex - Fully Detached','2','2022-01-21 16:47:42','2022-01-21 16:47:42');
INSERT INTO product_units VALUES('7','4 Bedroom Terrace Duplex','2','2022-01-21 16:48:01','2022-01-21 16:48:01');



DROP TABLE IF EXISTS products;

CREATE TABLE `products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` bigint(20) NOT NULL,
  `supplier_id` bigint(20) DEFAULT NULL,
  `product_cost` decimal(10,2) NOT NULL,
  `product_price` decimal(10,2) NOT NULL,
  `product_unit` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_method` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_id` bigint(20) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO products VALUES('1','1','','3000000.00','4500000.00','1 Plot - 650SQM','','','Inside Blue Stone Favour Estate Mowe','2022-01-21 16:51:37','2022-01-21 19:56:46');
INSERT INTO products VALUES('2','2','','0.00','900000.00','1 Plot - 650SQM','','','','2022-01-21 19:56:28','2022-01-21 19:56:28');



DROP TABLE IF EXISTS purchase_order_item_taxes;

CREATE TABLE `purchase_order_item_taxes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `purchase_order_id` bigint(20) NOT NULL,
  `purchase_order_item_id` bigint(20) NOT NULL,
  `tax_id` bigint(20) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS purchase_order_items;

CREATE TABLE `purchase_order_items` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `purchase_order_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` decimal(8,2) NOT NULL,
  `unit_cost` decimal(10,2) NOT NULL,
  `discount` decimal(10,2) NOT NULL,
  `tax_id` bigint(20) DEFAULT NULL,
  `tax_amount` decimal(10,2) DEFAULT NULL,
  `sub_total` decimal(10,2) NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO purchase_order_items VALUES('1','1','1','Inside Blue Stone Favour Estate Mowe','2.00','3000000.00','200000.00','','0.00','5800000.00','2','2022-01-25 14:12:53','2022-01-25 14:12:53');



DROP TABLE IF EXISTS purchase_orders;

CREATE TABLE `purchase_orders` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_date` date NOT NULL,
  `supplier_id` bigint(20) NOT NULL,
  `order_status` tinyint(4) NOT NULL,
  `order_tax_id` bigint(20) DEFAULT NULL,
  `order_tax` decimal(10,2) DEFAULT NULL,
  `order_discount` decimal(10,2) NOT NULL,
  `shipping_cost` decimal(10,2) NOT NULL,
  `product_total` decimal(10,2) NOT NULL,
  `grand_total` decimal(10,2) NOT NULL,
  `paid` decimal(10,2) NOT NULL,
  `payment_status` tinyint(4) NOT NULL,
  `attachemnt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO purchase_orders VALUES('1','2022-01-25','1','1','','0.00','0.00','0.00','5800000.00','5800000.00','5000.00','0','','','2','2022-01-25 14:12:53','2022-01-25 14:32:54');



DROP TABLE IF EXISTS purchase_return;

CREATE TABLE `purchase_return` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `return_date` date NOT NULL,
  `supplier_id` bigint(20) DEFAULT NULL,
  `account_id` bigint(20) NOT NULL,
  `chart_id` bigint(20) NOT NULL,
  `payment_method_id` bigint(20) NOT NULL,
  `tax_id` bigint(20) DEFAULT NULL,
  `tax_amount` decimal(10,2) DEFAULT NULL,
  `product_total` decimal(10,2) NOT NULL,
  `grand_total` decimal(10,2) NOT NULL,
  `attachemnt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS purchase_return_item_taxes;

CREATE TABLE `purchase_return_item_taxes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `purchase_return_id` bigint(20) NOT NULL,
  `purchase_return_item_id` bigint(20) NOT NULL,
  `tax_id` bigint(20) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS purchase_return_items;

CREATE TABLE `purchase_return_items` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `purchase_return_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` decimal(8,2) NOT NULL,
  `unit_cost` decimal(10,2) NOT NULL,
  `discount` decimal(10,2) NOT NULL,
  `tax_id` bigint(20) DEFAULT NULL,
  `tax_amount` decimal(10,2) DEFAULT NULL,
  `sub_total` decimal(10,2) NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS quotation_item_taxes;

CREATE TABLE `quotation_item_taxes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `quotation_id` bigint(20) NOT NULL,
  `quotation_item_id` bigint(20) NOT NULL,
  `tax_id` bigint(20) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS quotation_items;

CREATE TABLE `quotation_items` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `quotation_id` bigint(20) NOT NULL,
  `item_id` bigint(20) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` decimal(8,2) NOT NULL,
  `unit_cost` decimal(10,2) NOT NULL,
  `discount` decimal(10,2) NOT NULL,
  `tax_id` bigint(20) DEFAULT NULL,
  `tax_amount` decimal(10,2) DEFAULT NULL,
  `sub_total` decimal(10,2) NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS quotations;

CREATE TABLE `quotations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `quotation_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` bigint(20) NOT NULL,
  `quotation_date` date NOT NULL,
  `grand_total` decimal(10,2) NOT NULL,
  `tax_total` decimal(10,2) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_id` bigint(20) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `invoice_id` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS repeating_transactions;

CREATE TABLE `repeating_transactions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `trans_date` date NOT NULL,
  `account_id` bigint(20) NOT NULL,
  `chart_id` bigint(20) NOT NULL,
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dr_cr` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `payer_payee_id` bigint(20) DEFAULT NULL,
  `payment_method_id` bigint(20) NOT NULL,
  `reference` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_id` bigint(20) NOT NULL,
  `status` tinyint(4) DEFAULT 0,
  `trans_id` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS sales_return;

CREATE TABLE `sales_return` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `return_date` date NOT NULL,
  `customer_id` bigint(20) NOT NULL,
  `tax_id` bigint(20) DEFAULT NULL,
  `tax_amount` decimal(10,2) DEFAULT NULL,
  `product_total` decimal(10,2) NOT NULL,
  `grand_total` decimal(10,2) NOT NULL,
  `attachemnt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS sales_return_item_taxes;

CREATE TABLE `sales_return_item_taxes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `sales_return_id` bigint(20) NOT NULL,
  `sales_return_item_id` bigint(20) NOT NULL,
  `tax_id` bigint(20) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS sales_return_items;

CREATE TABLE `sales_return_items` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `sales_return_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` decimal(10,2) NOT NULL,
  `unit_cost` decimal(10,2) NOT NULL,
  `discount` decimal(10,2) NOT NULL,
  `tax_id` bigint(20) DEFAULT NULL,
  `tax_amount` decimal(10,2) DEFAULT NULL,
  `sub_total` decimal(10,2) NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS services;

CREATE TABLE `services` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` bigint(20) NOT NULL,
  `cost` decimal(10,2) NOT NULL,
  `tax_method` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_id` bigint(20) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO services VALUES('1','3','150000.00','','','','2022-01-25 14:04:46','2022-01-25 14:04:46');



DROP TABLE IF EXISTS settings;

CREATE TABLE `settings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO settings VALUES('1','mail_type','smtp','','2022-01-21 17:13:57');
INSERT INTO settings VALUES('2','backend_direction','ltr','','2022-01-22 07:43:08');
INSERT INTO settings VALUES('3','membership_system','enabled','','');
INSERT INTO settings VALUES('4','trial_period','7','','');
INSERT INTO settings VALUES('5','monthly_cost','10','','');
INSERT INTO settings VALUES('6','yearly_cost','99','','');
INSERT INTO settings VALUES('7','allow_singup','no','','2022-01-22 07:43:08');
INSERT INTO settings VALUES('8','company_name','ChenHomes','2022-01-21 09:47:01','2022-01-21 09:47:01');
INSERT INTO settings VALUES('9','site_title','Chen Homes Portal','2022-01-21 09:47:01','2022-01-21 09:47:01');
INSERT INTO settings VALUES('10','phone','08034564366','2022-01-21 09:47:01','2022-01-21 09:47:01');
INSERT INTO settings VALUES('11','email','emmanike93@gmail.com','2022-01-21 09:47:01','2022-01-21 09:47:01');
INSERT INTO settings VALUES('12','timezone','Africa/Lagos','2022-01-21 09:47:01','2022-01-21 09:47:01');
INSERT INTO settings VALUES('13','currency','NGN','2022-01-21 10:49:43','2022-01-22 07:43:08');
INSERT INTO settings VALUES('14','currency_position','left','2022-01-21 10:49:43','2022-01-22 07:43:08');
INSERT INTO settings VALUES('15','thousand_sep',',','2022-01-21 10:49:43','2022-01-22 07:43:08');
INSERT INTO settings VALUES('16','decimal_sep','.','2022-01-21 10:49:43','2022-01-22 07:43:08');
INSERT INTO settings VALUES('17','decimal_places','2','2022-01-21 10:49:43','2022-01-22 07:43:08');
INSERT INTO settings VALUES('18','date_format','Y-m-d','2022-01-21 10:49:43','2022-01-22 07:43:08');
INSERT INTO settings VALUES('19','time_format','24','2022-01-21 10:49:43','2022-01-22 07:43:08');
INSERT INTO settings VALUES('20','email_verification','enabled','2022-01-21 10:49:43','2022-01-22 07:43:08');
INSERT INTO settings VALUES('21','from_email','emmanike93@gmail.com','2022-01-21 17:13:57','2022-01-21 17:13:57');
INSERT INTO settings VALUES('22','from_name','Chen Homes Ltd','2022-01-21 17:13:57','2022-01-21 17:13:57');
INSERT INTO settings VALUES('23','smtp_host','smtp.googlemail.com','2022-01-21 17:13:57','2022-01-21 17:13:57');
INSERT INTO settings VALUES('24','smtp_port','465','2022-01-21 17:13:57','2022-01-21 17:13:57');
INSERT INTO settings VALUES('25','smtp_username','emmanike93@gmail.com','2022-01-21 17:13:57','2022-01-21 17:13:57');
INSERT INTO settings VALUES('26','smtp_password','princeaaua','2022-01-21 17:13:57','2022-01-21 17:13:57');
INSERT INTO settings VALUES('27','smtp_encryption','ssl','2022-01-21 17:13:57','2022-01-21 17:13:57');
INSERT INTO settings VALUES('28','logo','logo.png','2022-01-27 04:35:21','2022-01-27 04:35:21');
INSERT INTO settings VALUES('29','favicon','file_1643254524.png','2022-01-27 04:35:24','2022-01-27 04:35:24');



DROP TABLE IF EXISTS staff_roles;

CREATE TABLE `staff_roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS suppliers;

CREATE TABLE `suppliers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `supplier_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vat_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO suppliers VALUES('1','Gbenga Adetola','Chen Homes Ltd','','esther19adekeye@gmail.com','08034564366','Leeds, United Kingdom','United Kingdom','Leeds','Leeds','100101','2','2022-01-25 14:07:03','2022-01-25 14:07:03');



DROP TABLE IF EXISTS taxs;

CREATE TABLE `taxs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tax_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` decimal(10,2) NOT NULL,
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS transactions;

CREATE TABLE `transactions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `trans_date` date NOT NULL,
  `account_id` bigint(20) NOT NULL,
  `chart_id` bigint(20) NOT NULL,
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dr_cr` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `payer_payee_id` bigint(20) DEFAULT NULL,
  `invoice_id` bigint(20) DEFAULT NULL,
  `purchase_id` bigint(20) DEFAULT NULL,
  `purchase_return_id` bigint(20) DEFAULT NULL,
  `payment_method_id` bigint(20) NOT NULL,
  `reference` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO transactions VALUES('1','2022-01-25','1','1','expense','dr','5000.00','','','1','','1','Paid for Mr kunle - Mowe 2 bedroom','1643121174IMG-20200811-WA0031.jpg','','2','2022-01-25 14:32:54','2022-01-25 14:32:54');



DROP TABLE IF EXISTS users;

CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` bigint(20) DEFAULT NULL,
  `membership_type` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_picture` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `status` int(11) NOT NULL,
  `company_id` bigint(20) DEFAULT NULL,
  `currency` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `valid_to` date DEFAULT NULL,
  `last_email` date DEFAULT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO users VALUES('1','portaladmin','emmanike93@gmail.com','$2y$10$oZ7y8mw/0FJEvnqta2EWSeXMo20dxv6dYWqs2bEJY4F1uJvn.glB2','admin','','','default.png','2022-01-21 09:45:00','1','','','','','','','','2022-01-21 09:45:00','2022-01-21 09:45:00');
INSERT INTO users VALUES('2','Emmanuel Adekeye','emmanueltechman@gmail.com','$2y$10$78uMeOvnA6b4fR1oxxPvEetdfGJpCsJkzOUorLXO59ehvlVXlwjDi','user','','trial','default.png','2022-01-21 16:15:31','1','','','2022-01-28','','','','','2022-01-21 15:07:30','2022-01-21 16:15:31');
INSERT INTO users VALUES('3','Esther Adekeye','esther19amadi@gmail.com','$2y$10$q2oMzqcd1phQnHo9SFoO8Oq89Gmzlrzxea47LwCVxJvTDpmRvSvzS','user','','trial','default.png','2022-01-22 06:21:22','1','','','2022-01-29','','','','','2022-01-22 06:20:39','2022-01-22 06:21:22');
INSERT INTO users VALUES('4','Esther','amadi19esther@gmail.com','$2y$10$BD9WUfYFzWzGlEHM/3KOAu99OEHHywgCdN4E/Ml.4EdO9ZRr57KdS','client','','','','2022-01-22 07:27:07','1','2','','','','','','','2022-01-22 06:54:09','2022-01-22 07:27:07');




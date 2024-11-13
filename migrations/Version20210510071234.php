<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20210510071234 extends AbstractMigration
{
    public function getDescription() : string
    {
        return '';
    }

    public function up(Schema $schema) : void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('CREATE TABLE additional_contribution (id INT AUTO_INCREMENT NOT NULL, application_id INT DEFAULT NULL, created_by INT DEFAULT NULL, updated_by INT DEFAULT NULL, registry_file_audit_id INT DEFAULT NULL, type VARCHAR(255) NOT NULL, presentation_date DATE NOT NULL, created_at DATETIME DEFAULT NULL, updated_at DATETIME DEFAULT NULL, deleted_at DATETIME DEFAULT NULL, in_import TINYINT(1) DEFAULT NULL, INDEX IDX_96D951E83E030ACD (application_id), INDEX IDX_96D951E8DE12AB56 (created_by), INDEX IDX_96D951E816FE72E1 (updated_by), INDEX IDX_96D951E896F28344 (registry_file_audit_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE application (id INT AUTO_INCREMENT NOT NULL, application_import_id INT NOT NULL, registry_file_audit_id INT DEFAULT NULL, application_nsia_id INT DEFAULT NULL, created_by INT DEFAULT NULL, updated_by INT DEFAULT NULL, application_group_id INT DEFAULT NULL, confidi_id INT NOT NULL, practice_id VARCHAR(20) NOT NULL, ae_gassurance_amount DOUBLE PRECISION NOT NULL, ae_gresolution_date DATE NOT NULL, ae_ac_commissions_rebate_request VARCHAR(1) NOT NULL, ae_ac_interests_contribution_request VARCHAR(1) NOT NULL, ae_ac_lost_fund_contribution_request VARCHAR(1) NOT NULL, ae_ac_contribution_application_amount DOUBLE PRECISION DEFAULT NULL, ae_ac_application_members INT DEFAULT NULL, ae_ib_business_name VARCHAR(255) NOT NULL, ae_ib_fiscal_code VARCHAR(16) NOT NULL, ae_ib_size VARCHAR(255) DEFAULT NULL, ae_ib_constitution_date DATE NOT NULL, ae_ib_chamber_of_commerce_code VARCHAR(10) NOT NULL, ae_ib_chamber_of_commerce_registration_date DATE NOT NULL, ae_ib_aiacode VARCHAR(9) NOT NULL, ae_ib_aiaregistration_date DATE NOT NULL, ae_ib_ateco_code VARCHAR(20) NOT NULL, ae_ib_ateco_start_date DATE DEFAULT NULL, ae_ib_iban VARCHAR(50) DEFAULT NULL, ae_ib_legal_form VARCHAR(255) NOT NULL, ae_pec_address VARCHAR(255) NOT NULL, ae_office_address VARCHAR(255) NOT NULL, ae_office_postcode VARCHAR(8) NOT NULL, ae_office_city VARCHAR(255) NOT NULL, ae_workplace_address VARCHAR(255) DEFAULT NULL, ae_workplace_postcode VARCHAR(8) DEFAULT NULL, ae_workplace_city VARCHAR(50) DEFAULT NULL, ae_owner_lastname VARCHAR(255) NOT NULL, ae_owner_firstname VARCHAR(255) NOT NULL, ae_owner_birth_date DATE NOT NULL, ae_owner_gender VARCHAR(1) NOT NULL, ae_owner_fiscal_code VARCHAR(16) NOT NULL, ae_owner_birth_city VARCHAR(255) DEFAULT NULL, ae_owner_birth_country VARCHAR(255) DEFAULT NULL, ae_owner_join_date DATE DEFAULT NULL, ae_first_member_lastname VARCHAR(255) DEFAULT NULL, ae_first_member_firstname VARCHAR(255) DEFAULT NULL, ae_first_member_birth_date DATE DEFAULT NULL, ae_first_member_gender VARCHAR(1) DEFAULT NULL, ae_first_member_fiscal_code VARCHAR(16) DEFAULT NULL, ae_first_member_birth_city VARCHAR(255) DEFAULT NULL, ae_first_member_birth_country VARCHAR(255) DEFAULT NULL, ae_first_member_join_date DATE DEFAULT NULL, ae_second_member_lastname VARCHAR(255) DEFAULT NULL, ae_second_member_firstname VARCHAR(255) DEFAULT NULL, ae_second_member_birth_date DATE DEFAULT NULL, ae_second_member_gender VARCHAR(1) DEFAULT NULL, ae_second_member_fiscal_code VARCHAR(16) DEFAULT NULL, ae_second_member_birth_city VARCHAR(255) DEFAULT NULL, ae_second_member_birth_country VARCHAR(255) DEFAULT NULL, ae_second_member_join_date DATE DEFAULT NULL, ae_third_member_lastname VARCHAR(255) DEFAULT NULL, ae_third_member_firstname VARCHAR(255) DEFAULT NULL, ae_third_member_birth_date DATE DEFAULT NULL, ae_third_member_gender VARCHAR(1) DEFAULT NULL, ae_third_member_fiscal_code VARCHAR(16) DEFAULT NULL, ae_third_member_birth_city VARCHAR(255) DEFAULT NULL, ae_third_member_birth_country VARCHAR(255) DEFAULT NULL, ae_third_member_join_date DATE DEFAULT NULL, ae_fourth_member_lastname VARCHAR(255) DEFAULT NULL, ae_fourth_member_firstname VARCHAR(255) DEFAULT NULL, ae_fourth_member_birth_date DATE DEFAULT NULL, ae_fourth_member_gender VARCHAR(1) DEFAULT NULL, ae_fourth_member_fiscal_code VARCHAR(16) DEFAULT NULL, ae_fourth_member_birth_city VARCHAR(255) DEFAULT NULL, ae_fourth_member_birth_country VARCHAR(255) DEFAULT NULL, ae_fourth_member_join_date DATE DEFAULT NULL, f_dbf_bank VARCHAR(255) DEFAULT NULL, f_dbf_business_name VARCHAR(255) DEFAULT NULL, f_dbf_abi VARCHAR(255) DEFAULT NULL, f_ffinancial_destination VARCHAR(255) DEFAULT NULL, f_df_amount DOUBLE PRECISION DEFAULT NULL, f_df_contract_signature_date DATE DEFAULT NULL, f_df_resolution_date DATE DEFAULT NULL, f_df_issue_date DATE DEFAULT NULL, f_df_duration INT DEFAULT NULL, f_df_periodicity VARCHAR(64) DEFAULT NULL, f_df_first_depreciation_deadline DATE DEFAULT NULL, f_df_pre_depreciation_exists VARCHAR(1) DEFAULT NULL, f_df_installment_amount DOUBLE PRECISION DEFAULT NULL, f_trate_type VARCHAR(1) DEFAULT NULL, f_trate DOUBLE PRECISION DEFAULT NULL, f_ttaeg DOUBLE PRECISION DEFAULT NULL, l_sf_bank_leasing VARCHAR(255) DEFAULT NULL, l_sf_business_name VARCHAR(255) DEFAULT NULL, l_sf_leasing_destination VARCHAR(255) DEFAULT NULL, l_dcl_amount DOUBLE PRECISION DEFAULT NULL, l_dcl_contract_signature_date DATE DEFAULT NULL, l_dcl_resolution_date DATE DEFAULT NULL, l_dcl_duration INT DEFAULT NULL, l_dcl_periodicity VARCHAR(64) DEFAULT NULL, l_dcl_first_deadline DATE DEFAULT NULL, l_dcl_fee_amount DOUBLE PRECISION DEFAULT NULL, l_dcl_fee_percentage DOUBLE PRECISION DEFAULT NULL, l_dcl_ransom_percentage DOUBLE PRECISION DEFAULT NULL, l_dcl_rate DOUBLE PRECISION DEFAULT NULL, protocol_number VARCHAR(255) DEFAULT NULL, protocol_date DATETIME DEFAULT NULL, created_at DATETIME DEFAULT NULL, updated_at DATETIME DEFAULT NULL, deleted_at DATETIME DEFAULT NULL, `status` VARCHAR(64) NOT NULL, inquest_status VARCHAR(64) DEFAULT \'closed\' NOT NULL, INDEX IDX_A45BDDC132A319D8 (application_import_id), INDEX IDX_A45BDDC196F28344 (registry_file_audit_id), UNIQUE INDEX UNIQ_A45BDDC1AE550BE2 (application_nsia_id), INDEX IDX_A45BDDC1DE12AB56 (created_by), INDEX IDX_A45BDDC116FE72E1 (updated_by), INDEX IDX_A45BDDC1416F0654 (application_group_id), INDEX IDX_A45BDDC1EBE07992 (confidi_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE application_attachment (id INT AUTO_INCREMENT NOT NULL, created_by_id INT DEFAULT NULL, updated_by_id INT DEFAULT NULL, application_id INT NOT NULL, file_name VARCHAR(255) NOT NULL, original_file_name VARCHAR(255) NOT NULL, file_size BIGINT DEFAULT NULL, file_uploaded_at DATETIME DEFAULT NULL, description VARCHAR(255) NOT NULL, created_at DATETIME DEFAULT NULL, updated_at DATETIME DEFAULT NULL, deleted_at DATETIME DEFAULT NULL, INDEX IDX_EDCE857B03A8386 (created_by_id), INDEX IDX_EDCE857896DBBDE (updated_by_id), INDEX IDX_EDCE8573E030ACD (application_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE application_group (id INT AUTO_INCREMENT NOT NULL, created_by INT DEFAULT NULL, updated_by INT DEFAULT NULL, confidi_id INT NOT NULL, protocol_number VARCHAR(255) DEFAULT NULL, protocol_date DATETIME DEFAULT NULL, `status` VARCHAR(64) NOT NULL, filename VARCHAR(255) DEFAULT NULL, original_file_name VARCHAR(255) DEFAULT NULL, file_size BIGINT DEFAULT NULL, file_uploaded_at DATETIME DEFAULT NULL, created_at DATETIME DEFAULT NULL, updated_at DATETIME DEFAULT NULL, deleted_at DATETIME DEFAULT NULL, INDEX IDX_8E54A3BFDE12AB56 (created_by), INDEX IDX_8E54A3BF16FE72E1 (updated_by), INDEX IDX_8E54A3BFEBE07992 (confidi_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE application_import (id INT AUTO_INCREMENT NOT NULL, created_by INT DEFAULT NULL, updated_by INT DEFAULT NULL, template_id INT DEFAULT NULL, confidi_id INT NOT NULL, filename VARCHAR(255) NOT NULL, status VARCHAR(50) NOT NULL, created_at DATETIME DEFAULT NULL, updated_at DATETIME DEFAULT NULL, deleted_at DATETIME DEFAULT NULL, errors JSON DEFAULT NULL, INDEX IDX_2D7DC2D8DE12AB56 (created_by), INDEX IDX_2D7DC2D816FE72E1 (updated_by), INDEX IDX_2D7DC2D85DA0FB8 (template_id), INDEX IDX_2D7DC2D8EBE07992 (confidi_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE application_import_template (id INT AUTO_INCREMENT NOT NULL, created_by INT DEFAULT NULL, filename VARCHAR(255) NOT NULL, active TINYINT(1) NOT NULL, created_at DATETIME DEFAULT NULL, revision VARCHAR(64) NOT NULL, UNIQUE INDEX UNIQ_18715E8B6D6315CC (revision), INDEX IDX_18715E8BDE12AB56 (created_by), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE application_message (id INT AUTO_INCREMENT NOT NULL, created_by INT DEFAULT NULL, updated_by INT DEFAULT NULL, application_id INT NOT NULL, `text` LONGTEXT DEFAULT NULL, published TINYINT(1) DEFAULT \'0\' NOT NULL, created_at DATETIME DEFAULT NULL, updated_at DATETIME DEFAULT NULL, deleted_at DATETIME DEFAULT NULL, INDEX IDX_5D03354CDE12AB56 (created_by), INDEX IDX_5D03354C16FE72E1 (updated_by), INDEX IDX_5D03354C3E030ACD (application_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE application_message_attachment (id INT AUTO_INCREMENT NOT NULL, created_by INT DEFAULT NULL, updated_by INT DEFAULT NULL, application_message_id INT NOT NULL, file_name VARCHAR(255) NOT NULL, file_size BIGINT DEFAULT NULL, original_file_name VARCHAR(255) NOT NULL, created_at DATETIME DEFAULT NULL, updated_at DATETIME DEFAULT NULL, deleted_at DATETIME DEFAULT NULL, INDEX IDX_BF323145DE12AB56 (created_by), INDEX IDX_BF32314516FE72E1 (updated_by), INDEX IDX_BF32314524F922C5 (application_message_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE application_nsia (id INT AUTO_INCREMENT NOT NULL, application_id INT DEFAULT NULL, created_by INT DEFAULT NULL, updated_by INT DEFAULT NULL, created_at DATETIME NOT NULL, updated_at DATETIME DEFAULT NULL, deleted_at DATETIME DEFAULT NULL, UNIQUE INDEX UNIQ_D56C608D3E030ACD (application_id), INDEX IDX_D56C608DDE12AB56 (created_by), INDEX IDX_D56C608D16FE72E1 (updated_by), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE application_status_log (id INT AUTO_INCREMENT NOT NULL, application_id INT NOT NULL, created_by INT DEFAULT NULL, `status` VARCHAR(64) NOT NULL, description LONGTEXT DEFAULT NULL, created_at DATETIME NOT NULL, deleted_at DATETIME DEFAULT NULL, INDEX IDX_26D3098B3E030ACD (application_id), INDEX IDX_26D3098BDE12AB56 (created_by), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE assurance_enterprise_import (id INT AUTO_INCREMENT NOT NULL, application_import_id INT DEFAULT NULL, created_by INT DEFAULT NULL, updated_by INT DEFAULT NULL, practice_id VARCHAR(20) DEFAULT NULL, g_assurance_amount VARCHAR(64) DEFAULT NULL, g_resolution_date VARCHAR(10) DEFAULT NULL, ac_commissions_rebate_request VARCHAR(1) DEFAULT NULL, ac_interests_contribution_request VARCHAR(1) DEFAULT NULL, ac_lost_fund_contribution_request VARCHAR(1) DEFAULT NULL, ac_contribution_application_amount VARCHAR(64) DEFAULT NULL, ac_application_members VARCHAR(8) DEFAULT NULL, ib_business_name VARCHAR(255) DEFAULT NULL, ib_fiscal_code VARCHAR(16) DEFAULT NULL, ib_size VARCHAR(255) DEFAULT NULL, ib_constitution_date VARCHAR(10) DEFAULT NULL, ib_chamber_of_commerce_code VARCHAR(10) DEFAULT NULL, ib_chamber_of_commerce_registration_date VARCHAR(10) DEFAULT NULL, ib_aiacode VARCHAR(9) DEFAULT NULL, ib_aiaregistration_date VARCHAR(10) DEFAULT NULL, ib_ateco_code VARCHAR(16) DEFAULT NULL, ib_ateco_start_date VARCHAR(10) DEFAULT NULL, ib_iban VARCHAR(50) DEFAULT NULL, ib_legal_form VARCHAR(255) DEFAULT NULL, pec_address VARCHAR(255) DEFAULT NULL, office_address VARCHAR(255) DEFAULT NULL, office_postcode VARCHAR(8) DEFAULT NULL, office_city VARCHAR(255) DEFAULT NULL, workplace_address VARCHAR(255) DEFAULT NULL, workplace_postcode VARCHAR(8) DEFAULT NULL, workplace_city VARCHAR(255) DEFAULT NULL, owner_lastname VARCHAR(255) DEFAULT NULL, owner_firstname VARCHAR(255) DEFAULT NULL, owner_birth_date VARCHAR(10) DEFAULT NULL, owner_gender VARCHAR(1) DEFAULT NULL, owner_fiscal_code VARCHAR(16) DEFAULT NULL, owner_birth_city VARCHAR(255) DEFAULT NULL, owner_birth_country VARCHAR(255) DEFAULT NULL, owner_join_date VARCHAR(10) DEFAULT NULL, first_member_lastname VARCHAR(255) DEFAULT NULL, first_member_firstname VARCHAR(255) DEFAULT NULL, first_member_birth_date VARCHAR(10) DEFAULT NULL, first_member_gender VARCHAR(1) DEFAULT NULL, first_member_fiscal_code VARCHAR(16) DEFAULT NULL, first_member_birth_city VARCHAR(255) DEFAULT NULL, first_member_birth_country VARCHAR(255) DEFAULT NULL, first_member_join_date VARCHAR(10) DEFAULT NULL, second_member_lastname VARCHAR(255) DEFAULT NULL, second_member_firstname VARCHAR(255) DEFAULT NULL, second_member_birth_date VARCHAR(10) DEFAULT NULL, second_member_gender VARCHAR(1) DEFAULT NULL, second_member_fiscal_code VARCHAR(16) DEFAULT NULL, second_member_birth_city VARCHAR(255) DEFAULT NULL, second_member_birth_country VARCHAR(255) DEFAULT NULL, second_member_join_date VARCHAR(10) DEFAULT NULL, third_member_lastname VARCHAR(255) DEFAULT NULL, third_member_firstname VARCHAR(255) DEFAULT NULL, third_member_birth_date VARCHAR(10) DEFAULT NULL, third_member_gender VARCHAR(1) DEFAULT NULL, third_member_fiscal_code VARCHAR(16) DEFAULT NULL, third_member_birth_city VARCHAR(255) DEFAULT NULL, third_member_birth_country VARCHAR(255) DEFAULT NULL, third_member_join_date VARCHAR(10) DEFAULT NULL, fourth_member_lastname VARCHAR(255) DEFAULT NULL, fourth_member_firstname VARCHAR(255) DEFAULT NULL, fourth_member_birth_date VARCHAR(10) DEFAULT NULL, fourth_member_gender VARCHAR(1) DEFAULT NULL, fourth_member_fiscal_code VARCHAR(16) DEFAULT NULL, fourth_member_birth_city VARCHAR(255) DEFAULT NULL, fourth_member_birth_country VARCHAR(255) DEFAULT NULL, fourth_member_join_date VARCHAR(10) DEFAULT NULL, `row` INT DEFAULT NULL, created_at DATETIME DEFAULT NULL, updated_at DATETIME DEFAULT NULL, deleted_at DATETIME DEFAULT NULL, INDEX IDX_2E9F776532A319D8 (application_import_id), INDEX IDX_2E9F7765DE12AB56 (created_by), INDEX IDX_2E9F776516FE72E1 (updated_by), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE ateco_code (id INT AUTO_INCREMENT NOT NULL, code VARCHAR(10) NOT NULL, code_without_dots VARCHAR(10) NOT NULL, description VARCHAR(255) NOT NULL, section VARCHAR(1) NOT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE bank (id INT AUTO_INCREMENT NOT NULL, template_id INT NOT NULL, name VARCHAR(255) NOT NULL, code VARCHAR(8) NOT NULL, INDEX IDX_D860BF7A5DA0FB8 (template_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE bank_leasing (id INT AUTO_INCREMENT NOT NULL, template_id INT NOT NULL, name VARCHAR(255) NOT NULL, code VARCHAR(8) NOT NULL, INDEX IDX_15A11C5A5DA0FB8 (template_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE city (id INT AUTO_INCREMENT NOT NULL, template_id INT NOT NULL, name VARCHAR(255) NOT NULL, code VARCHAR(4) NOT NULL, in_region TINYINT(1) DEFAULT NULL, INDEX IDX_2D5B02345DA0FB8 (template_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE company_size (id INT AUTO_INCREMENT NOT NULL, template_id INT NOT NULL, size VARCHAR(255) NOT NULL, code VARCHAR(2) NOT NULL, INDEX IDX_B4AD3E845DA0FB8 (template_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE confidi (id INT AUTO_INCREMENT NOT NULL, business_name VARCHAR(255) NOT NULL, iban VARCHAR(27) NOT NULL, fiscal_code VARCHAR(16) NOT NULL, nsia_code VARCHAR(50) NOT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE country (id INT AUTO_INCREMENT NOT NULL, template_id INT NOT NULL, name VARCHAR(255) NOT NULL, code VARCHAR(4) NOT NULL, INDEX IDX_5373C9665DA0FB8 (template_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE ext_log_entries (id INT AUTO_INCREMENT NOT NULL, action VARCHAR(8) NOT NULL, logged_at DATETIME NOT NULL, object_id VARCHAR(64) DEFAULT NULL, object_class VARCHAR(191) NOT NULL, version INT NOT NULL, data LONGTEXT DEFAULT NULL COMMENT \'(DC2Type:array)\', username VARCHAR(191) DEFAULT NULL, INDEX log_class_lookup_idx (object_class), INDEX log_date_lookup_idx (logged_at), INDEX log_user_lookup_idx (username), INDEX log_version_lookup_idx (object_id, object_class, version), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB ROW_FORMAT = DYNAMIC');
        $this->addSql('CREATE TABLE financial_destination (id INT AUTO_INCREMENT NOT NULL, template_id INT NOT NULL, destination VARCHAR(255) NOT NULL, code VARCHAR(8) NOT NULL, INDEX IDX_7CF1C4365DA0FB8 (template_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE financing_import (id INT AUTO_INCREMENT NOT NULL, application_import_id INT DEFAULT NULL, created_by INT DEFAULT NULL, updated_by INT DEFAULT NULL, practice_id VARCHAR(20) DEFAULT NULL, dbf_bank VARCHAR(255) DEFAULT NULL, dbf_business_name VARCHAR(255) DEFAULT NULL, dbf_abi VARCHAR(255) DEFAULT NULL, f_financial_destination VARCHAR(255) DEFAULT NULL, df_amount VARCHAR(64) DEFAULT NULL, df_contract_signature_date VARCHAR(10) DEFAULT NULL, df_resolution_date VARCHAR(10) DEFAULT NULL, df_issue_date VARCHAR(10) DEFAULT NULL, df_duration VARCHAR(8) DEFAULT NULL, df_periodicity VARCHAR(64) DEFAULT NULL, df_first_depreciation_deadline VARCHAR(10) DEFAULT NULL, df_pre_depreciation_exists VARCHAR(1) DEFAULT NULL, df_installment_amount VARCHAR(64) DEFAULT NULL, t_rate_type VARCHAR(1) DEFAULT NULL, t_rate VARCHAR(6) DEFAULT NULL, t_taeg VARCHAR(6) DEFAULT NULL, `row` INT DEFAULT NULL, created_at DATETIME DEFAULT NULL, updated_at DATETIME DEFAULT NULL, deleted_at DATETIME DEFAULT NULL, INDEX IDX_B43D412932A319D8 (application_import_id), INDEX IDX_B43D4129DE12AB56 (created_by), INDEX IDX_B43D412916FE72E1 (updated_by), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE leasing_destination (id INT AUTO_INCREMENT NOT NULL, template_id INT NOT NULL, destination VARCHAR(50) NOT NULL, code VARCHAR(8) NOT NULL, INDEX IDX_4BB56F3D5DA0FB8 (template_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE leasing_import (id INT AUTO_INCREMENT NOT NULL, application_import_id INT DEFAULT NULL, created_by INT DEFAULT NULL, updated_by INT DEFAULT NULL, practice_id VARCHAR(20) DEFAULT NULL, sf_bank_leasing VARCHAR(255) DEFAULT NULL, sf_business_name VARCHAR(255) DEFAULT NULL, sf_leasing_destination VARCHAR(255) DEFAULT NULL, dcl_amount VARCHAR(64) DEFAULT NULL, dcl_contract_signature_date VARCHAR(10) DEFAULT NULL, dcl_resolution_date VARCHAR(10) DEFAULT NULL, dcl_duration VARCHAR(8) DEFAULT NULL, dcl_periodicity VARCHAR(64) DEFAULT NULL, dcl_first_deadline VARCHAR(10) DEFAULT NULL, dcl_fee_amount VARCHAR(64) DEFAULT NULL, dcl_fee_percentage VARCHAR(6) DEFAULT NULL, dcl_ransom_percentage VARCHAR(6) DEFAULT NULL, dcl_rate VARCHAR(6) DEFAULT NULL, `row` INT DEFAULT NULL, created_at DATETIME DEFAULT NULL, updated_at DATETIME DEFAULT NULL, deleted_at DATETIME DEFAULT NULL, INDEX IDX_2A1430D532A319D8 (application_import_id), INDEX IDX_2A1430D5DE12AB56 (created_by), INDEX IDX_2A1430D516FE72E1 (updated_by), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE legal_form (id INT AUTO_INCREMENT NOT NULL, template_id INT NOT NULL, name VARCHAR(255) NOT NULL, reference_id INT NOT NULL, cooperative TINYINT(1) NOT NULL, INDEX IDX_7FF313F85DA0FB8 (template_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE login_failure (id INT AUTO_INCREMENT NOT NULL, user_id INT NOT NULL, remote_ip VARCHAR(16) DEFAULT NULL, created_at DATETIME NOT NULL, INDEX IDX_31B61DBCA76ED395 (user_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE periodicity (id INT AUTO_INCREMENT NOT NULL, template_id INT NOT NULL, type VARCHAR(25) NOT NULL, months INT NOT NULL, INDEX IDX_C53CC5BC5DA0FB8 (template_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE protocol_number (id INT AUTO_INCREMENT NOT NULL, created_by INT DEFAULT NULL, updated_by INT DEFAULT NULL, counter INT NOT NULL, created_at DATETIME NOT NULL, updated_at DATETIME DEFAULT NULL, deleted_at DATETIME DEFAULT NULL, INDEX IDX_DBEC1AE6DE12AB56 (created_by), INDEX IDX_DBEC1AE616FE72E1 (updated_by), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE registry_file_audit (id INT AUTO_INCREMENT NOT NULL, created_by INT DEFAULT NULL, updated_by INT DEFAULT NULL, file_name VARCHAR(100) NOT NULL, progressive_number INT NOT NULL, type VARCHAR(100) NOT NULL, created_at DATETIME NOT NULL, updated_at DATETIME DEFAULT NULL, deleted_at DATETIME DEFAULT NULL, INDEX IDX_D5F09FF8DE12AB56 (created_by), INDEX IDX_D5F09FF816FE72E1 (updated_by), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE `user` (id INT AUTO_INCREMENT NOT NULL, confidi_id INT DEFAULT NULL, email VARCHAR(180) NOT NULL, roles JSON NOT NULL, password VARCHAR(255) NOT NULL, last_login DATETIME DEFAULT NULL, enabled TINYINT(1) NOT NULL, update_password_token VARCHAR(255) DEFAULT NULL, expires_at DATETIME DEFAULT NULL, reset_password_token VARCHAR(255) DEFAULT NULL, reset_password_requested_at DATETIME DEFAULT NULL, first_name VARCHAR(255) DEFAULT NULL, last_name VARCHAR(255) DEFAULT NULL, mobile_phone VARCHAR(16) DEFAULT NULL, fiscal_id VARCHAR(16) DEFAULT NULL, birth DATE DEFAULT NULL, birth_country VARCHAR(255) DEFAULT NULL, birth_region VARCHAR(255) DEFAULT NULL, birth_province VARCHAR(255) DEFAULT NULL, birth_city VARCHAR(255) DEFAULT NULL, UNIQUE INDEX UNIQ_8D93D649E7927C74 (email), INDEX IDX_8D93D649EBE07992 (confidi_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE user_password (id INT AUTO_INCREMENT NOT NULL, user_id INT NOT NULL, password_hash VARCHAR(255) NOT NULL, created_at DATETIME NOT NULL, is_generated TINYINT(1) NOT NULL, INDEX IDX_D54FA2D5A76ED395 (user_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('ALTER TABLE additional_contribution ADD CONSTRAINT FK_96D951E83E030ACD FOREIGN KEY (application_id) REFERENCES application (id)');
        $this->addSql('ALTER TABLE additional_contribution ADD CONSTRAINT FK_96D951E8DE12AB56 FOREIGN KEY (created_by) REFERENCES `user` (id) ON DELETE SET NULL');
        $this->addSql('ALTER TABLE additional_contribution ADD CONSTRAINT FK_96D951E816FE72E1 FOREIGN KEY (updated_by) REFERENCES `user` (id) ON DELETE SET NULL');
        $this->addSql('ALTER TABLE additional_contribution ADD CONSTRAINT FK_96D951E896F28344 FOREIGN KEY (registry_file_audit_id) REFERENCES registry_file_audit (id)');
        $this->addSql('ALTER TABLE application ADD CONSTRAINT FK_A45BDDC132A319D8 FOREIGN KEY (application_import_id) REFERENCES application_import (id)');
        $this->addSql('ALTER TABLE application ADD CONSTRAINT FK_A45BDDC196F28344 FOREIGN KEY (registry_file_audit_id) REFERENCES registry_file_audit (id)');
        $this->addSql('ALTER TABLE application ADD CONSTRAINT FK_A45BDDC1AE550BE2 FOREIGN KEY (application_nsia_id) REFERENCES application_nsia (id)');
        $this->addSql('ALTER TABLE application ADD CONSTRAINT FK_A45BDDC1DE12AB56 FOREIGN KEY (created_by) REFERENCES `user` (id) ON DELETE SET NULL');
        $this->addSql('ALTER TABLE application ADD CONSTRAINT FK_A45BDDC116FE72E1 FOREIGN KEY (updated_by) REFERENCES `user` (id) ON DELETE SET NULL');
        $this->addSql('ALTER TABLE application ADD CONSTRAINT FK_A45BDDC1416F0654 FOREIGN KEY (application_group_id) REFERENCES application_group (id)');
        $this->addSql('ALTER TABLE application ADD CONSTRAINT FK_A45BDDC1EBE07992 FOREIGN KEY (confidi_id) REFERENCES confidi (id)');
        $this->addSql('ALTER TABLE application_attachment ADD CONSTRAINT FK_EDCE857B03A8386 FOREIGN KEY (created_by_id) REFERENCES `user` (id)');
        $this->addSql('ALTER TABLE application_attachment ADD CONSTRAINT FK_EDCE857896DBBDE FOREIGN KEY (updated_by_id) REFERENCES `user` (id)');
        $this->addSql('ALTER TABLE application_attachment ADD CONSTRAINT FK_EDCE8573E030ACD FOREIGN KEY (application_id) REFERENCES application (id)');
        $this->addSql('ALTER TABLE application_group ADD CONSTRAINT FK_8E54A3BFDE12AB56 FOREIGN KEY (created_by) REFERENCES `user` (id)');
        $this->addSql('ALTER TABLE application_group ADD CONSTRAINT FK_8E54A3BF16FE72E1 FOREIGN KEY (updated_by) REFERENCES `user` (id)');
        $this->addSql('ALTER TABLE application_group ADD CONSTRAINT FK_8E54A3BFEBE07992 FOREIGN KEY (confidi_id) REFERENCES confidi (id)');
        $this->addSql('ALTER TABLE application_import ADD CONSTRAINT FK_2D7DC2D8DE12AB56 FOREIGN KEY (created_by) REFERENCES `user` (id) ON DELETE SET NULL');
        $this->addSql('ALTER TABLE application_import ADD CONSTRAINT FK_2D7DC2D816FE72E1 FOREIGN KEY (updated_by) REFERENCES `user` (id) ON DELETE SET NULL');
        $this->addSql('ALTER TABLE application_import ADD CONSTRAINT FK_2D7DC2D85DA0FB8 FOREIGN KEY (template_id) REFERENCES application_import_template (id) ON DELETE SET NULL');
        $this->addSql('ALTER TABLE application_import ADD CONSTRAINT FK_2D7DC2D8EBE07992 FOREIGN KEY (confidi_id) REFERENCES confidi (id)');
        $this->addSql('ALTER TABLE application_import_template ADD CONSTRAINT FK_18715E8BDE12AB56 FOREIGN KEY (created_by) REFERENCES `user` (id) ON DELETE SET NULL');
        $this->addSql('ALTER TABLE application_message ADD CONSTRAINT FK_5D03354CDE12AB56 FOREIGN KEY (created_by) REFERENCES `user` (id)');
        $this->addSql('ALTER TABLE application_message ADD CONSTRAINT FK_5D03354C16FE72E1 FOREIGN KEY (updated_by) REFERENCES `user` (id)');
        $this->addSql('ALTER TABLE application_message ADD CONSTRAINT FK_5D03354C3E030ACD FOREIGN KEY (application_id) REFERENCES application (id)');
        $this->addSql('ALTER TABLE application_message_attachment ADD CONSTRAINT FK_BF323145DE12AB56 FOREIGN KEY (created_by) REFERENCES `user` (id)');
        $this->addSql('ALTER TABLE application_message_attachment ADD CONSTRAINT FK_BF32314516FE72E1 FOREIGN KEY (updated_by) REFERENCES `user` (id)');
        $this->addSql('ALTER TABLE application_message_attachment ADD CONSTRAINT FK_BF32314524F922C5 FOREIGN KEY (application_message_id) REFERENCES application_message (id)');
        $this->addSql('ALTER TABLE application_nsia ADD CONSTRAINT FK_D56C608D3E030ACD FOREIGN KEY (application_id) REFERENCES application (id)');
        $this->addSql('ALTER TABLE application_nsia ADD CONSTRAINT FK_D56C608DDE12AB56 FOREIGN KEY (created_by) REFERENCES `user` (id) ON DELETE SET NULL');
        $this->addSql('ALTER TABLE application_nsia ADD CONSTRAINT FK_D56C608D16FE72E1 FOREIGN KEY (updated_by) REFERENCES `user` (id) ON DELETE SET NULL');
        $this->addSql('ALTER TABLE application_status_log ADD CONSTRAINT FK_26D3098B3E030ACD FOREIGN KEY (application_id) REFERENCES application (id)');
        $this->addSql('ALTER TABLE application_status_log ADD CONSTRAINT FK_26D3098BDE12AB56 FOREIGN KEY (created_by) REFERENCES `user` (id)');
        $this->addSql('ALTER TABLE assurance_enterprise_import ADD CONSTRAINT FK_2E9F776532A319D8 FOREIGN KEY (application_import_id) REFERENCES application_import (id)');
        $this->addSql('ALTER TABLE assurance_enterprise_import ADD CONSTRAINT FK_2E9F7765DE12AB56 FOREIGN KEY (created_by) REFERENCES `user` (id) ON DELETE SET NULL');
        $this->addSql('ALTER TABLE assurance_enterprise_import ADD CONSTRAINT FK_2E9F776516FE72E1 FOREIGN KEY (updated_by) REFERENCES `user` (id) ON DELETE SET NULL');
        $this->addSql('ALTER TABLE bank ADD CONSTRAINT FK_D860BF7A5DA0FB8 FOREIGN KEY (template_id) REFERENCES application_import_template (id) ON DELETE CASCADE');
        $this->addSql('ALTER TABLE bank_leasing ADD CONSTRAINT FK_15A11C5A5DA0FB8 FOREIGN KEY (template_id) REFERENCES application_import_template (id) ON DELETE CASCADE');
        $this->addSql('ALTER TABLE city ADD CONSTRAINT FK_2D5B02345DA0FB8 FOREIGN KEY (template_id) REFERENCES application_import_template (id) ON DELETE CASCADE');
        $this->addSql('ALTER TABLE company_size ADD CONSTRAINT FK_B4AD3E845DA0FB8 FOREIGN KEY (template_id) REFERENCES application_import_template (id) ON DELETE CASCADE');
        $this->addSql('ALTER TABLE country ADD CONSTRAINT FK_5373C9665DA0FB8 FOREIGN KEY (template_id) REFERENCES application_import_template (id) ON DELETE CASCADE');
        $this->addSql('ALTER TABLE financial_destination ADD CONSTRAINT FK_7CF1C4365DA0FB8 FOREIGN KEY (template_id) REFERENCES application_import_template (id) ON DELETE CASCADE');
        $this->addSql('ALTER TABLE financing_import ADD CONSTRAINT FK_B43D412932A319D8 FOREIGN KEY (application_import_id) REFERENCES application_import (id)');
        $this->addSql('ALTER TABLE financing_import ADD CONSTRAINT FK_B43D4129DE12AB56 FOREIGN KEY (created_by) REFERENCES `user` (id) ON DELETE SET NULL');
        $this->addSql('ALTER TABLE financing_import ADD CONSTRAINT FK_B43D412916FE72E1 FOREIGN KEY (updated_by) REFERENCES `user` (id) ON DELETE SET NULL');
        $this->addSql('ALTER TABLE leasing_destination ADD CONSTRAINT FK_4BB56F3D5DA0FB8 FOREIGN KEY (template_id) REFERENCES application_import_template (id) ON DELETE CASCADE');
        $this->addSql('ALTER TABLE leasing_import ADD CONSTRAINT FK_2A1430D532A319D8 FOREIGN KEY (application_import_id) REFERENCES application_import (id)');
        $this->addSql('ALTER TABLE leasing_import ADD CONSTRAINT FK_2A1430D5DE12AB56 FOREIGN KEY (created_by) REFERENCES `user` (id) ON DELETE SET NULL');
        $this->addSql('ALTER TABLE leasing_import ADD CONSTRAINT FK_2A1430D516FE72E1 FOREIGN KEY (updated_by) REFERENCES `user` (id) ON DELETE SET NULL');
        $this->addSql('ALTER TABLE legal_form ADD CONSTRAINT FK_7FF313F85DA0FB8 FOREIGN KEY (template_id) REFERENCES application_import_template (id) ON DELETE CASCADE');
        $this->addSql('ALTER TABLE login_failure ADD CONSTRAINT FK_31B61DBCA76ED395 FOREIGN KEY (user_id) REFERENCES `user` (id)');
        $this->addSql('ALTER TABLE periodicity ADD CONSTRAINT FK_C53CC5BC5DA0FB8 FOREIGN KEY (template_id) REFERENCES application_import_template (id) ON DELETE CASCADE');
        $this->addSql('ALTER TABLE protocol_number ADD CONSTRAINT FK_DBEC1AE6DE12AB56 FOREIGN KEY (created_by) REFERENCES `user` (id) ON DELETE SET NULL');
        $this->addSql('ALTER TABLE protocol_number ADD CONSTRAINT FK_DBEC1AE616FE72E1 FOREIGN KEY (updated_by) REFERENCES `user` (id) ON DELETE SET NULL');
        $this->addSql('ALTER TABLE registry_file_audit ADD CONSTRAINT FK_D5F09FF8DE12AB56 FOREIGN KEY (created_by) REFERENCES `user` (id) ON DELETE SET NULL');
        $this->addSql('ALTER TABLE registry_file_audit ADD CONSTRAINT FK_D5F09FF816FE72E1 FOREIGN KEY (updated_by) REFERENCES `user` (id) ON DELETE SET NULL');
        $this->addSql('ALTER TABLE `user` ADD CONSTRAINT FK_8D93D649EBE07992 FOREIGN KEY (confidi_id) REFERENCES confidi (id)');
        $this->addSql('ALTER TABLE user_password ADD CONSTRAINT FK_D54FA2D5A76ED395 FOREIGN KEY (user_id) REFERENCES `user` (id)');
    }

    public function down(Schema $schema) : void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE additional_contribution DROP FOREIGN KEY FK_96D951E83E030ACD');
        $this->addSql('ALTER TABLE application_attachment DROP FOREIGN KEY FK_EDCE8573E030ACD');
        $this->addSql('ALTER TABLE application_message DROP FOREIGN KEY FK_5D03354C3E030ACD');
        $this->addSql('ALTER TABLE application_nsia DROP FOREIGN KEY FK_D56C608D3E030ACD');
        $this->addSql('ALTER TABLE application_status_log DROP FOREIGN KEY FK_26D3098B3E030ACD');
        $this->addSql('ALTER TABLE application DROP FOREIGN KEY FK_A45BDDC1416F0654');
        $this->addSql('ALTER TABLE application DROP FOREIGN KEY FK_A45BDDC132A319D8');
        $this->addSql('ALTER TABLE assurance_enterprise_import DROP FOREIGN KEY FK_2E9F776532A319D8');
        $this->addSql('ALTER TABLE financing_import DROP FOREIGN KEY FK_B43D412932A319D8');
        $this->addSql('ALTER TABLE leasing_import DROP FOREIGN KEY FK_2A1430D532A319D8');
        $this->addSql('ALTER TABLE application_import DROP FOREIGN KEY FK_2D7DC2D85DA0FB8');
        $this->addSql('ALTER TABLE bank DROP FOREIGN KEY FK_D860BF7A5DA0FB8');
        $this->addSql('ALTER TABLE bank_leasing DROP FOREIGN KEY FK_15A11C5A5DA0FB8');
        $this->addSql('ALTER TABLE city DROP FOREIGN KEY FK_2D5B02345DA0FB8');
        $this->addSql('ALTER TABLE company_size DROP FOREIGN KEY FK_B4AD3E845DA0FB8');
        $this->addSql('ALTER TABLE country DROP FOREIGN KEY FK_5373C9665DA0FB8');
        $this->addSql('ALTER TABLE financial_destination DROP FOREIGN KEY FK_7CF1C4365DA0FB8');
        $this->addSql('ALTER TABLE leasing_destination DROP FOREIGN KEY FK_4BB56F3D5DA0FB8');
        $this->addSql('ALTER TABLE legal_form DROP FOREIGN KEY FK_7FF313F85DA0FB8');
        $this->addSql('ALTER TABLE periodicity DROP FOREIGN KEY FK_C53CC5BC5DA0FB8');
        $this->addSql('ALTER TABLE application_message_attachment DROP FOREIGN KEY FK_BF32314524F922C5');
        $this->addSql('ALTER TABLE application DROP FOREIGN KEY FK_A45BDDC1AE550BE2');
        $this->addSql('ALTER TABLE application DROP FOREIGN KEY FK_A45BDDC1EBE07992');
        $this->addSql('ALTER TABLE application_group DROP FOREIGN KEY FK_8E54A3BFEBE07992');
        $this->addSql('ALTER TABLE application_import DROP FOREIGN KEY FK_2D7DC2D8EBE07992');
        $this->addSql('ALTER TABLE `user` DROP FOREIGN KEY FK_8D93D649EBE07992');
        $this->addSql('ALTER TABLE additional_contribution DROP FOREIGN KEY FK_96D951E896F28344');
        $this->addSql('ALTER TABLE application DROP FOREIGN KEY FK_A45BDDC196F28344');
        $this->addSql('ALTER TABLE additional_contribution DROP FOREIGN KEY FK_96D951E8DE12AB56');
        $this->addSql('ALTER TABLE additional_contribution DROP FOREIGN KEY FK_96D951E816FE72E1');
        $this->addSql('ALTER TABLE application DROP FOREIGN KEY FK_A45BDDC1DE12AB56');
        $this->addSql('ALTER TABLE application DROP FOREIGN KEY FK_A45BDDC116FE72E1');
        $this->addSql('ALTER TABLE application_attachment DROP FOREIGN KEY FK_EDCE857B03A8386');
        $this->addSql('ALTER TABLE application_attachment DROP FOREIGN KEY FK_EDCE857896DBBDE');
        $this->addSql('ALTER TABLE application_group DROP FOREIGN KEY FK_8E54A3BFDE12AB56');
        $this->addSql('ALTER TABLE application_group DROP FOREIGN KEY FK_8E54A3BF16FE72E1');
        $this->addSql('ALTER TABLE application_import DROP FOREIGN KEY FK_2D7DC2D8DE12AB56');
        $this->addSql('ALTER TABLE application_import DROP FOREIGN KEY FK_2D7DC2D816FE72E1');
        $this->addSql('ALTER TABLE application_import_template DROP FOREIGN KEY FK_18715E8BDE12AB56');
        $this->addSql('ALTER TABLE application_message DROP FOREIGN KEY FK_5D03354CDE12AB56');
        $this->addSql('ALTER TABLE application_message DROP FOREIGN KEY FK_5D03354C16FE72E1');
        $this->addSql('ALTER TABLE application_message_attachment DROP FOREIGN KEY FK_BF323145DE12AB56');
        $this->addSql('ALTER TABLE application_message_attachment DROP FOREIGN KEY FK_BF32314516FE72E1');
        $this->addSql('ALTER TABLE application_nsia DROP FOREIGN KEY FK_D56C608DDE12AB56');
        $this->addSql('ALTER TABLE application_nsia DROP FOREIGN KEY FK_D56C608D16FE72E1');
        $this->addSql('ALTER TABLE application_status_log DROP FOREIGN KEY FK_26D3098BDE12AB56');
        $this->addSql('ALTER TABLE assurance_enterprise_import DROP FOREIGN KEY FK_2E9F7765DE12AB56');
        $this->addSql('ALTER TABLE assurance_enterprise_import DROP FOREIGN KEY FK_2E9F776516FE72E1');
        $this->addSql('ALTER TABLE financing_import DROP FOREIGN KEY FK_B43D4129DE12AB56');
        $this->addSql('ALTER TABLE financing_import DROP FOREIGN KEY FK_B43D412916FE72E1');
        $this->addSql('ALTER TABLE leasing_import DROP FOREIGN KEY FK_2A1430D5DE12AB56');
        $this->addSql('ALTER TABLE leasing_import DROP FOREIGN KEY FK_2A1430D516FE72E1');
        $this->addSql('ALTER TABLE login_failure DROP FOREIGN KEY FK_31B61DBCA76ED395');
        $this->addSql('ALTER TABLE protocol_number DROP FOREIGN KEY FK_DBEC1AE6DE12AB56');
        $this->addSql('ALTER TABLE protocol_number DROP FOREIGN KEY FK_DBEC1AE616FE72E1');
        $this->addSql('ALTER TABLE registry_file_audit DROP FOREIGN KEY FK_D5F09FF8DE12AB56');
        $this->addSql('ALTER TABLE registry_file_audit DROP FOREIGN KEY FK_D5F09FF816FE72E1');
        $this->addSql('ALTER TABLE user_password DROP FOREIGN KEY FK_D54FA2D5A76ED395');
        $this->addSql('DROP TABLE additional_contribution');
        $this->addSql('DROP TABLE application');
        $this->addSql('DROP TABLE application_attachment');
        $this->addSql('DROP TABLE application_group');
        $this->addSql('DROP TABLE application_import');
        $this->addSql('DROP TABLE application_import_template');
        $this->addSql('DROP TABLE application_message');
        $this->addSql('DROP TABLE application_message_attachment');
        $this->addSql('DROP TABLE application_nsia');
        $this->addSql('DROP TABLE application_status_log');
        $this->addSql('DROP TABLE assurance_enterprise_import');
        $this->addSql('DROP TABLE ateco_code');
        $this->addSql('DROP TABLE bank');
        $this->addSql('DROP TABLE bank_leasing');
        $this->addSql('DROP TABLE city');
        $this->addSql('DROP TABLE company_size');
        $this->addSql('DROP TABLE confidi');
        $this->addSql('DROP TABLE country');
        $this->addSql('DROP TABLE ext_log_entries');
        $this->addSql('DROP TABLE financial_destination');
        $this->addSql('DROP TABLE financing_import');
        $this->addSql('DROP TABLE leasing_destination');
        $this->addSql('DROP TABLE leasing_import');
        $this->addSql('DROP TABLE legal_form');
        $this->addSql('DROP TABLE login_failure');
        $this->addSql('DROP TABLE periodicity');
        $this->addSql('DROP TABLE protocol_number');
        $this->addSql('DROP TABLE registry_file_audit');
        $this->addSql('DROP TABLE `user`');
        $this->addSql('DROP TABLE user_password');
    }
}

<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20220124143244 extends AbstractMigration
{
    public function getDescription() : string
    {
        return '';
    }

    public function up(Schema $schema) : void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('CREATE TABLE financing_provisioning_certification (id INT AUTO_INCREMENT NOT NULL, created_by INT DEFAULT NULL, updated_by INT DEFAULT NULL, application_id INT DEFAULT NULL, amount DOUBLE PRECISION NOT NULL, contract_signature_date DATE NOT NULL, issue_date DATE NOT NULL, periodicity VARCHAR(64) NOT NULL, first_depreciation_deadline DATE NOT NULL, pre_depreciation_exists VARCHAR(1) NOT NULL, installment_amount DOUBLE PRECISION NOT NULL, rate_type VARCHAR(1) NOT NULL, rate DOUBLE PRECISION NOT NULL, taeg DOUBLE PRECISION NOT NULL, spread DOUBLE PRECISION NOT NULL, status VARCHAR(64) NOT NULL, created_at DATETIME DEFAULT NULL, updated_at DATETIME DEFAULT NULL, deleted_at DATETIME DEFAULT NULL, INDEX IDX_22B5DF08DE12AB56 (created_by), INDEX IDX_22B5DF0816FE72E1 (updated_by), UNIQUE INDEX UNIQ_22B5DF083E030ACD (application_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('ALTER TABLE financing_provisioning_certification ADD CONSTRAINT FK_22B5DF08DE12AB56 FOREIGN KEY (created_by) REFERENCES `user` (id) ON DELETE SET NULL');
        $this->addSql('ALTER TABLE financing_provisioning_certification ADD CONSTRAINT FK_22B5DF0816FE72E1 FOREIGN KEY (updated_by) REFERENCES `user` (id) ON DELETE SET NULL');
        $this->addSql('ALTER TABLE financing_provisioning_certification ADD CONSTRAINT FK_22B5DF083E030ACD FOREIGN KEY (application_id) REFERENCES application (id)');
    }

    public function down(Schema $schema) : void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('DROP TABLE financing_provisioning_certification');
    }
}

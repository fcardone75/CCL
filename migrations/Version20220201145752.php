<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20220201145752 extends AbstractMigration
{
    public function getDescription() : string
    {
        return '';
    }

    public function up(Schema $schema) : void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE financing_provisioning_certification ADD registry_file_audit_id INT DEFAULT NULL');
        $this->addSql('ALTER TABLE financing_provisioning_certification ADD CONSTRAINT FK_22B5DF0896F28344 FOREIGN KEY (registry_file_audit_id) REFERENCES registry_file_audit (id)');
        $this->addSql('CREATE INDEX IDX_22B5DF0896F28344 ON financing_provisioning_certification (registry_file_audit_id)');
    }

    public function down(Schema $schema) : void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE financing_provisioning_certification DROP FOREIGN KEY FK_22B5DF0896F28344');
        $this->addSql('DROP INDEX IDX_22B5DF0896F28344 ON financing_provisioning_certification');
        $this->addSql('ALTER TABLE financing_provisioning_certification DROP registry_file_audit_id');
    }
}

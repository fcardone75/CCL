<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20210601103407 extends AbstractMigration
{
    public function getDescription() : string
    {
        return '';
    }

    public function up(Schema $schema) : void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE application_group ADD registry_file_audit_id INT DEFAULT NULL');
        $this->addSql('ALTER TABLE application_group ADD CONSTRAINT FK_8E54A3BF96F28344 FOREIGN KEY (registry_file_audit_id) REFERENCES registry_file_audit (id)');
        $this->addSql('CREATE INDEX IDX_8E54A3BF96F28344 ON application_group (registry_file_audit_id)');
    }

    public function down(Schema $schema) : void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE application_group DROP FOREIGN KEY FK_8E54A3BF96F28344');
        $this->addSql('DROP INDEX IDX_8E54A3BF96F28344 ON application_group');
        $this->addSql('ALTER TABLE application_group DROP registry_file_audit_id');
    }
}

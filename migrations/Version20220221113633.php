<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20220221113633 extends AbstractMigration
{
    public function getDescription() : string
    {
        return '';
    }

    public function up(Schema $schema) : void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE financing_provisioning_certification ADD last_depreciation_deadline DATE');
        $this->addSql('UPDATE financing_provisioning_certification SET last_depreciation_deadline=first_depreciation_deadline WHERE last_depreciation_deadline IS NULL');
        $this->addSql('ALTER TABLE financing_provisioning_certification CHANGE last_depreciation_deadline last_depreciation_deadline DATE NOT NULL');
    }

    public function down(Schema $schema) : void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE financing_provisioning_certification DROP last_depreciation_deadline, CHANGE first_depreciation_deadline first_depreciation_deadline DATE NOT NULL');
    }
}

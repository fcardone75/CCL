<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20220216165249 extends AbstractMigration
{
    public function getDescription() : string
    {
        return '';
    }

    public function up(Schema $schema) : void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE financing_provisioning_certification ADD pre_depreciation INT NOT NULL');
        $this->addSql('UPDATE financing_provisioning_certification SET pre_depreciation=1 WHERE pre_depreciation_exists="S"');
        $this->addSql('UPDATE financing_provisioning_certification SET pre_depreciation=0 WHERE pre_depreciation_exists="N"');
        $this->addSql('ALTER TABLE financing_provisioning_certification DROP pre_depreciation_exists');
    }

    public function down(Schema $schema) : void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE financing_provisioning_certification ADD pre_depreciation_exists VARCHAR(1) CHARACTER SET utf8mb4 NOT NULL COLLATE `utf8mb4_unicode_ci`');
        $this->addSql('UPDATE financing_provisioning_certification SET pre_depreciation_exists="S" WHERE pre_depreciation>=1');
        $this->addSql('UPDATE financing_provisioning_certification SET pre_depreciation_exists="N" WHERE pre_depreciation<=0');
        $this->addSql('ALTER TABLE financing_provisioning_certification DROP pre_depreciation');
    }
}

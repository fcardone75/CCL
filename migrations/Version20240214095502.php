<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20240214095502 extends AbstractMigration
{
    public function getDescription(): string
    {
        return 'In seguito a modifiche del template di import è necessario modificare la lunghezza del campo';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE leasing_destination CHANGE destination destination VARCHAR(255) NOT NULL');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE leasing_destination CHANGE destination destination VARCHAR(50) NOT NULL');
    }
}

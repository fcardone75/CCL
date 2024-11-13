<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20240621160855 extends AbstractMigration
{
    public function getDescription(): string
    {
        return 'Adding Google Authentication';
    }

    public function up(Schema $schema): void
    {
        $this->addSql('ALTER TABLE user ADD google_authenticator_secret VARCHAR(255) DEFAULT NULL');
    }

    public function down(Schema $schema): void
    {
        $this->addSql('ALTER TABLE `user` DROP google_authenticator_secret');
    }
}

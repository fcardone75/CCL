<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20210521151204 extends AbstractMigration
{
    public function getDescription() : string
    {
        return '';
    }

    public function up(Schema $schema) : void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE additional_contribution ADD nsia_numero_posizione VARCHAR(64) DEFAULT NULL, ADD nsia_presentation_date DATE DEFAULT NULL, ADD nsia_status VARCHAR(64) DEFAULT NULL, ADD nsia_nota VARCHAR(64) DEFAULT NULL, ADD nsia_data_delibera DATE DEFAULT NULL, ADD nsia_codice_cor INT DEFAULT NULL, ADD nsia_data_rilascio_cor DATE DEFAULT NULL, ADD nsia_importo_contributo_deliberato DOUBLE PRECISION DEFAULT NULL, ADD nsia_importo_contributo_liquidato DOUBLE PRECISION DEFAULT NULL, ADD nsia_data_liquidazione DATE DEFAULT NULL, ADD nsia_iban_liquidazione VARCHAR(255) DEFAULT NULL, ADD nsia_data_revoca DATE DEFAULT NULL, ADD nsia_motivo_revoca VARCHAR(255) DEFAULT NULL, ADD nsia_importo_contributo_revocato DOUBLE PRECISION DEFAULT NULL, ADD nsia_data_avvio_procedimento_revoca DATE DEFAULT NULL, ADD nsia_importo_recupero_dovuto DOUBLE PRECISION DEFAULT NULL, ADD nsia_interessi_dovuti DOUBLE PRECISION DEFAULT NULL, ADD nsia_data_richiesta_recupero DATE DEFAULT NULL, ADD nsia_importo_contributo_restituito DOUBLE PRECISION DEFAULT NULL, ADD nsia_importo_interessi_restituiti DOUBLE PRECISION DEFAULT NULL, ADD nsia_data_restituzione DATE DEFAULT NULL');
        $this->addSql('ALTER TABLE application DROP FOREIGN KEY FK_A45BDDC1AE550BE2');
        $this->addSql('DROP INDEX UNIQ_A45BDDC1AE550BE2 ON application');
        $this->addSql('ALTER TABLE application ADD nsia_numero_posizione VARCHAR(64) DEFAULT NULL, ADD nsia_data_protocollo DATE DEFAULT NULL, ADD nsia_nota VARCHAR(255) DEFAULT NULL, ADD nsia_data_delibera DATE DEFAULT NULL, ADD nsia_data_rilascio_cor DATE DEFAULT NULL, ADD nsia_ldcl_importo_riscatto DOUBLE PRECISION DEFAULT NULL, ADD nsia_durata_garanzia INT DEFAULT NULL, ADD nsia_importo_riassicurazione DOUBLE PRECISION DEFAULT NULL, ADD nsia_esl_riassicurazione DOUBLE PRECISION DEFAULT NULL, ADD nsia_data_inizio_garanzia DATE DEFAULT NULL, ADD nsia_data_fine_garanzia DATE DEFAULT NULL, ADD nsia_data_liquidazione_confidi DATE DEFAULT NULL, ADD nsia_importo_perdita_confidi DOUBLE PRECISION DEFAULT NULL, ADD nsia_data_richiesta_rimborso DATE DEFAULT NULL, ADD nsia_data_protocollo_perdita DATE DEFAULT NULL, ADD nsia_data_delibera_perdita DATE DEFAULT NULL, ADD nsia_importo_rimborso_prenotato DOUBLE PRECISION DEFAULT NULL, ADD nsia_importo_rimborsato DOUBLE PRECISION DEFAULT NULL, ADD nsia_data_liquidazione DATE DEFAULT NULL, ADD nsia_importo_restituito_confidi DOUBLE PRECISION DEFAULT NULL, ADD nsia_data_restituzione_confidi DATE DEFAULT NULL, CHANGE application_nsia_id nsia_codice_cor INT DEFAULT NULL');
        $this->addSql('ALTER TABLE confidi ADD nsia_tot_garantito DOUBLE PRECISION DEFAULT NULL, ADD nsia_tot_riserva_accantonata DOUBLE PRECISION DEFAULT NULL, ADD nsia_tot_inefficace DOUBLE PRECISION DEFAULT NULL, ADD nsia_tot_escusso DOUBLE PRECISION DEFAULT NULL, ADD nsia_tot_escutibile DOUBLE PRECISION DEFAULT NULL, ADD nsia_numero_pratiche_presentate INT DEFAULT NULL, ADD nsia_numero_pratiche_approvate INT DEFAULT NULL, ADD nsia_numero_pratiche_in_essere INT DEFAULT NULL');
    }

    public function down(Schema $schema) : void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE additional_contribution DROP nsia_numero_posizione, DROP nsia_presentation_date, DROP nsia_status, DROP nsia_nota, DROP nsia_data_delibera, DROP nsia_codice_cor, DROP nsia_data_rilascio_cor, DROP nsia_importo_contributo_deliberato, DROP nsia_importo_contributo_liquidato, DROP nsia_data_liquidazione, DROP nsia_iban_liquidazione, DROP nsia_data_revoca, DROP nsia_motivo_revoca, DROP nsia_importo_contributo_revocato, DROP nsia_data_avvio_procedimento_revoca, DROP nsia_importo_recupero_dovuto, DROP nsia_interessi_dovuti, DROP nsia_data_richiesta_recupero, DROP nsia_importo_contributo_restituito, DROP nsia_importo_interessi_restituiti, DROP nsia_data_restituzione');
        $this->addSql('ALTER TABLE application ADD application_nsia_id INT DEFAULT NULL, DROP nsia_numero_posizione, DROP nsia_data_protocollo, DROP nsia_nota, DROP nsia_data_delibera, DROP nsia_codice_cor, DROP nsia_data_rilascio_cor, DROP nsia_ldcl_importo_riscatto, DROP nsia_durata_garanzia, DROP nsia_importo_riassicurazione, DROP nsia_esl_riassicurazione, DROP nsia_data_inizio_garanzia, DROP nsia_data_fine_garanzia, DROP nsia_data_liquidazione_confidi, DROP nsia_importo_perdita_confidi, DROP nsia_data_richiesta_rimborso, DROP nsia_data_protocollo_perdita, DROP nsia_data_delibera_perdita, DROP nsia_importo_rimborso_prenotato, DROP nsia_importo_rimborsato, DROP nsia_data_liquidazione, DROP nsia_importo_restituito_confidi, DROP nsia_data_restituzione_confidi');
        $this->addSql('ALTER TABLE application ADD CONSTRAINT FK_A45BDDC1AE550BE2 FOREIGN KEY (application_nsia_id) REFERENCES application_nsia (id)');
        $this->addSql('CREATE UNIQUE INDEX UNIQ_A45BDDC1AE550BE2 ON application (application_nsia_id)');
        $this->addSql('ALTER TABLE confidi DROP nsia_tot_garantito, DROP nsia_tot_riserva_accantonata, DROP nsia_tot_inefficace, DROP nsia_tot_escusso, DROP nsia_tot_escutibile, DROP nsia_numero_pratiche_presentate, DROP nsia_numero_pratiche_approvate, DROP nsia_numero_pratiche_in_essere');
    }
}

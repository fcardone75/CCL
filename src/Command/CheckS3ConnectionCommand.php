<?php

namespace App\Command;

use Gaufrette\Filesystem;
use Symfony\Component\Console\Command\Command;
use Symfony\Component\Console\Input\InputInterface;
use Symfony\Component\Console\Output\OutputInterface;
use Knp\Bundle\GaufretteBundle\FilesystemMap;

class CheckS3ConnectionCommand extends Command
{
    private $filesystemMap;

    public function __construct(FilesystemMap $filesystemMap)
    {
        parent::__construct();

        $this->filesystemMap = $filesystemMap;
    }

    protected function configure()
    {
        $this
            ->setName('gaufrette:test-s3-connection')
            ->setDescription('List all files for each configured Gaufrette adapter');
    }

    protected function execute(InputInterface $input, OutputInterface $output)
    {
        $output->writeln('<info>Listing files for each Gaufrette adapter:</info>');

        foreach ($this->filesystemMap->getIterator() as $filesystemName => $filesystem) {
            $output->writeln(sprintf('<comment>%s:</comment>', $filesystemName));
            /** @var Filesystem $filesystem */
            $files = $filesystem->listKeys();
            $files = array_merge(...array_values($files));
            if (empty($files)) {
                $output->writeln('<comment>No files found.</comment>');
            } else {
                foreach ($files as $file) {
                    $output->writeln(sprintf('- %s', $file));
                }
            }

            $output->writeln('');
        }

        return Command::SUCCESS;
    }
}


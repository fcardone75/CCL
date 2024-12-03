<?php

namespace App\Command;

use Symfony\Component\Console\Command\Command;
use Symfony\Component\Console\Input\InputInterface;
use Symfony\Component\Console\Output\OutputInterface;
use Symfony\Component\HttpKernel\KernelInterface;

class ShowProjectDirCommand extends Command
{
    protected static $defaultName = 'app:show-project-dir';

    private $kernel;

    public function __construct(KernelInterface $kernel)
    {
        $this->kernel = $kernel;
        parent::__construct();
    }

    protected function configure()
    {
        $this
            ->setDescription('Mostra il valore di kernel.project_dir');
    }

    protected function execute(InputInterface $input, OutputInterface $output)
    {
        $projectDir = $this->kernel->getProjectDir();
        $output->writeln('Il valore di kernel.project_dir è: ' . $projectDir);

        return Command::SUCCESS;
    }
}
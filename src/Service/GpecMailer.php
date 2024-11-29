<?php

namespace App\Service;

use App\Service\Contracts\EmailInterface;
use Bni\Gpec\Gpec\GpecService;
use Symfony\Component\Mailer\Envelope;
use Symfony\Component\Mime\Email;

class GpecMailer implements EmailInterface
{
    private GpecService $gpecService;

    public function __construct()
    {

    }

    public function send(Email $email, ?Envelope $envelope = null): void
    {
        $gpecEnvPath = $_ENV['GPEC_ENV_UP_FOLDER']; // Ideally fetch from parameters or env
        $this->gpecService = new GpecService($gpecEnvPath);
        foreach ($email->getTo() as $to) {
            $this->gpecService->sendMail($to->getAddress(), $email->getSubject(), $email->getHtmlBody());
        }
    }
}

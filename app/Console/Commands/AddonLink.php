<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;

class AddonLink extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'extension:link';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Créer un lien symbolique de "public / addons" vers "app / addons"';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return mixed
     */
    public function handle()
    {
        if (file_exists(public_path('addons'))) {
            return $this->error('Le répertoire "public / storage" existe déjà.');
        }

        $this->laravel->make('files')->link(
            app_path('Addons'), public_path('addons')
        );

        $this->info('Le répertoire [public / addons] a été lié.');
    }
}

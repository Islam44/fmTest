<?php

namespace App\Providers;

use App\Models\ACLRULE;
use Illuminate\Support\Facades\Artisan;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Config;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\Session;

class FileUploaderEventServiceProvider extends ServiceProvider
{
    /**
     * Register services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap services.
     *
     * @return void
     */
    public function boot()
    {
        \Event::listen('Alexusmai\LaravelFileManager\Events\FilesUploaded',
            function ($event) {
                $files_data=$event->files();
                foreach ($files_data as $file_data){
                    $data=(object)[];
                    $data->user_id=2;
                    $data->disk=$event->disk();
                    $data->path=$file_data['path'];
                    $data->access=2;
                    $data->project_id=   Session::get('ass_id');;
                    $data->ass_id=session('ass_id');
                    ACLRULE::create((array)$data);
                }
            }
        );
    }
}

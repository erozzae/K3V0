<?php

use Illuminate\Database\Seeder;
// use App\Dokumentasi;
use App\Introduction;
use App\About;
class K3V0Seeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        // Dokumentasi::create([
        //     'dokumentasi' => 'dokumen',
           
        // ]);

        Introduction::create([
            'introduction'=> 'Penjelasan Aplikasi Singkat',
        ]);

        About::create([
            'about_lab'=> 'Tentang Lab',
            'about_aplikasi'=> 'Tentang Aplikasi',
        ]);
    }
}

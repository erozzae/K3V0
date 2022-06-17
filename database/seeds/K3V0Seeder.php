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
            'introduction'=> 'K3V0 merupakan aplikasi yang ditujukan kepada siswa SMK untuk mendapatkan informasi K3 secara mudah guna mengimplementasikan K3 saat di lab dan magang industri.',
        ]);

        About::create([
            'about_lab'=> 'Tentang Lab',
            'about_aplikasi'=> 'Tentang Aplikasi',
        ]);
    }
}

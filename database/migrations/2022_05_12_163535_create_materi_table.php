<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateMateriTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('materi', function (Blueprint $table) {
            // $table->id();
            $table->bigIncrements('id_materi');
            $table->unsignedBigInteger('id_judul_materi');
            $table->unsignedBigInteger('id_bab');
            $table->foreign('id_judul_materi')->references('id_judul_materi')->on('judul_materi')->onDelete('cascade');
            $table->foreign('id_bab')->references('id_bab')->on('bab')->onDelete('cascade');
            $table->string('isi_materi');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('materi');
    }
}

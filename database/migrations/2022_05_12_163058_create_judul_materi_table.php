<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateJudulMateriTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('judul_materi', function (Blueprint $table) {
            // $table->id();
            $table->bigIncrements('id_judul_materi');
            $table->unsignedBigInteger('id_bab');
            $table->foreign('id_bab')->references('id_bab')->on('bab')->onDelete('cascade');
            $table->string('judul',35);
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
        Schema::dropIfExists('judul_materi');
    }
}

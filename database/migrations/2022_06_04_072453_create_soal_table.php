<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateSoalTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('soal', function (Blueprint $table) {
            // $table->unsignedBigInteger('user_id');
            // $table->foreign('forum_id')->references('id')->on('forum')->onDelete('cascade');
            // $table->foreign('user_id')->references('id')->on('users')->onDelete('cascade');
            $table->bigIncrements('id_soal');
            $table->unsignedBigInteger('id_bab');
            $table->foreign('id_bab')->references('id_bab')->on('Bab')->onDelete('cascade');
            $table->text('soal');
            $table->enum('kunci_jawaban',['A','B','C','D']);
            $table->text('A');
            $table->text('B');
            $table->text('C');
            $table->text('D');

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
        Schema::dropIfExists('soal');
    }
}

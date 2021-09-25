<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class Registrants extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('registrants', function (Blueprint $table) {
            $table->id('id');
            $table->unsignedBigInteger('idevent');
            $table->string('nama');
            $table->string('email');
            $table->date('tanggallahir');
            $table->string('alamat');


            $table->foreign('idevent')
            ->references('id')->on('events')
            ->onUpdate('cascade')
            ->onDelete('cascade');


        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('registrants');
    }
}

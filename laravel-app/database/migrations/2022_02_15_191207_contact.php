<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class Contact extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('contact', function (Blueprint $table) {
            $table->id();
            $table->string('fullNameUz');
            $table->string('fullNameRu');
            $table->string('fullNameEn');
            $table->string('positionUz');
            $table->string('positionRu');
            $table->string('positionEn');
            $table->string('site');
            $table->string('phone');
            $table->string('jobPhone');
            $table->string('social');
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
        //
    }
}

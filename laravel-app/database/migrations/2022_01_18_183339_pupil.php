<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class Pupil extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('pupil', function(Blueprint $table){
            $table->id();
            $table->text('description');
            $table->string('name');
            $table->string('dateBirth');
            $table->string('metricSeries');
            $table->string('metricNumber');
            $table->string('metricDate');
            $table->string('gender');
            $table->string('status');
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

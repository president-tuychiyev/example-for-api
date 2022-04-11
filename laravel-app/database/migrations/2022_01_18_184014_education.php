<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class Education extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('education', function(Blueprint $table){
            $table->id();
            $table->string('level');
            $table->string('expirationDate');
            $table->string('dipSeries');
            $table->string('dipNumber');
            $table->string('dipIssueDate');
            $table->integer('fileId');
            $table->string('position');
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

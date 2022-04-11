<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class Role extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('role', function (Blueprint $table) {
            $table->id();
            $table->integer('status')->default('0');
            $table->string('nameUz')->nullable();
            $table->string('nameRu')->nullable();
            $table->string('nameEn')->nullable();
            $table->char('addAllUsers')->default('false');
            $table->char('addChild')->default('false');
            $table->char('createRole')->default('false');
            $table->char('deleteAllUsers')->default('false');
            $table->char('deleteChild')->default('false');
            $table->char('editChild')->default('false');
            $table->char('export')->default('false');
            $table->char('exportAll')->default('false');
            $table->char('updateAllUsers')->default('false');
            $table->char('viewAllUsers')->default('false');
            $table->char('viewChild')->default('false');
            $table->char('viewRole')->default('false');
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

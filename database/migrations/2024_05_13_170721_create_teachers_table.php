<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('teachers', function (Blueprint $table) {
            $table->id();
            $table->string('deptcode');
            $table->string('teachcode')->unique('UK_TEACHCODE');
            $table->string('firstname');
            $table->string('lastname');
            $table->string('gender');
            $table->string('img');
            $table->date('dob');
            $table->string('mobile1');
            $table->string('mobile2');
            $table->string('email1');
            $table->string('email2');
            $table->string('address1')->default('');
            $table->string('address2')->default('');
            $table->string('spousename');
            $table->string('smobile');
            $table->date('startdate');
            $table->date('enddate');
            $table->string('status');          
            $table->string('devid')->unique('UK_DEVID');
            $table->timestamps();
            $table->foreign('deptcode', 'FK_DEPTCD')->references('deptcode')->on('departments')->onDelete('cascade')->onUpdate('cascade');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('teachers');
    }
};

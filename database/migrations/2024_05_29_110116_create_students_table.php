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
        Schema::create('students', function (Blueprint $table) {
            $table->id();
            $table->string('sroll');
            $table->string('sreg');
            $table->string('sname');
            $table->string('sessionyr');
            $table->string('deptcd')->default('');
            $table->date('sdob');
            $table->string('fname');
            $table->string('mname');
            $table->string('simg');
            $table->string('cardid')->default('');
            $table->string('addr1')->default('');
            $table->string('addr2')->default('');
            $table->string('mobile1')->default('');
            $table->string('mobile2')->default('');
            $table->string('status')->default('1');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('students');
    }
};

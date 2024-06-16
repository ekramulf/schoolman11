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
        Schema::create('studattnds', function (Blueprint $table) {
            $table->id();
            $table->string('devid');
            $table->string('teachid');
            $table->string('studid');
            $table->string('subcode');
            $table->date('attndate');
            $table->char('"present')->default('1');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('studattnds');
    }
};

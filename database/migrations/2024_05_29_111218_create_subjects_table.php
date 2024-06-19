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
        Schema::create('subjects', function (Blueprint $table) {
            $table->id();
            $table->string('sessionyr');
            $table->string('deptcd');
            $table->string('subcd')->unique('UK_SUBCODE');
            $table->string('subnm')->unique('UK_SUBNAME');
            $table->double('subcrmarks');
            $table->string('yr')->default('');
            $table->string('sem')->default('');
            $table->string('classid')->default('');
            $table->string('status')->default('1');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('subjects');
    }
};

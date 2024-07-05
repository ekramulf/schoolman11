<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */

    /*
        CREATE TABLE IF NOT EXISTS `students` (
        `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
        `deptcode` varchar(255) NOT NULL,
        `sessionyr` varchar(255) NOT NULL,
        `studroll` varchar(255) NOT NULL,
        `studregno` varchar(255) NOT NULL,
        `studname` varchar(255) NOT NULL,
        `gender` varchar(255) NOT NULL,
        `studphoto` varchar(255) NOT NULL DEFAULT '',
        `idcardno` varchar(255) NOT NULL,
        `status` varchar(255) NOT NULL DEFAULT '1',
        `created_by` varchar(255) NOT NULL DEFAULT '',
        `created_at` timestamp NULL DEFAULT NULL,
        `updated_at` timestamp NULL DEFAULT NULL,
        PRIMARY KEY (`id`),
        UNIQUE KEY `students_studroll_unique` (`studroll`),
        UNIQUE KEY `students_studregno_unique` (`studregno`),
        UNIQUE KEY `students_idcardno_unique` (`idcardno`),
        KEY `IDX_DEPT_STUDID` (`deptcode`,`idcardno`)
        ) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
    */
     public function up(): void
    {
        Schema::create('students', function (Blueprint $table) {
            $table->id();
            $table->string('deptcode');
            $table->string('sessionyr');
            $table->string('studroll')->unique('UK_STUDROLL');
            $table->string('studregno')->unique('UK_STUDREG');
            $table->string('studname');
            $table->char('gender')->default('M');
            $table->string('studphoto');
            $table->string('idcardno')->unique('UK_STUDIDNO');
            $table->char('status')->default('1');
            $table->date('dob')->default('2000-01-01');
            $table->string('fname');
            $table->string('mname');
            $table->string('addr1')->default('');
            $table->string('addr2')->default('');
            $table->string('mobile1')->default('');
            $table->string('mobile2')->default('');
            $table->timestamps();
            $table->index(['deptcode', 'idcardno'], 'IDX_DEPT_STUDID');
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

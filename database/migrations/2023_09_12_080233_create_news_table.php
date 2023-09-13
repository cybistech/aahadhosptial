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
        Schema::create('news', function (Blueprint $table) {
            $table->id()->nullable(false);
            $table->string('title');
            $table->enum('status', ['draft', 'published'])->default('draft');
            $table->string('author');
            $table->text('meta_description')->nullable();
            $table->text('meta_tags')->nullable();
            $table->text('excerpt')->nullable();
            $table->text('contents')->nullable();
            $table->text('tags')->nullable();
            $table->string('featured_image')->nullable();
            $table->unsignedBigInteger('user_id');

            $table->foreign('user_id')->references('id')->on('users');

            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('news');
    }
};

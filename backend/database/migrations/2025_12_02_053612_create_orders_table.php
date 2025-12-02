<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up()
    {
        Schema::create('orders', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('user_id');

            $table->unsignedBigInteger('promotion_id')->nullable();
            $table->unsignedBigInteger('shipping_id')->nullable();

            $table->text('note')->nullable();
            $table->decimal('total_amount', 15, 2)->default(0);
            $table->enum('status', ['pending', 'paid', 'shipping', 'completed', 'cancelled'])
                ->default('pending');

            $table->timestamps();

            $table->foreign('user_id')->references('id')->on('users');
            $table->foreign('promotion_id')->references('id')->on('promotions');
        });
    }


    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('orders');
    }
};

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
        Schema::create('products', function (Blueprint $table) {
            $table->id();

            $table->string('name');
            $table->text('description')->nullable();

            $table->decimal('price', 15, 2);
            $table->decimal('discount_price', 15, 2)->nullable();

            $table->integer('quantity_in_stock')->default(0);

            // foreign key
            $table->foreignId('category_id')->constrained()->cascadeOnDelete();
            $table->foreignId('brand_id')->nullable()->constrained()->nullOnDelete();

            // hình ảnh đơn
            $table->string('img')->nullable();

            // dưỡng da
            $table->text('ingredients')->nullable();
            $table->text('usage')->nullable();
            $table->string('origin')->nullable();
            $table->string('capacity')->nullable();

            // rating
            $table->decimal('rating', 3, 2)->default(0);

            // trạng thái sản phẩm
            $table->enum('status', ['active', 'inactive'])->default('active');

            $table->timestamps();
        });
    }


    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('products');
    }
};

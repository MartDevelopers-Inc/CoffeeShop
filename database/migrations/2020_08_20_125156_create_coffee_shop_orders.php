<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCoffeeShopOrders extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('coffee_shop_orders', function (Blueprint $table) {
            $table->string('order_id')->unique();
            $table->string('order_code');
            $table->string('customer_id');
            $table->string('customer_name');
            $table->string('prod_id');
            $table->string('prod_name');
            $table->string('prod_price');
            $table->string('prod_qty');
            $table->string('order_status');
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
        Schema::dropIfExists('coffee_shop_orders');
    }
}

<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCoffeeShopProducts extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('coffee_shop_products', function (Blueprint $table) {
            $table->string('prod_id');
            $table->string('prod_code');
            $table->string('prod_name');
            $table->string('prod_img');
            $table->string('prod_desc');
            $table->string('prod_price');
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
        Schema::dropIfExists('coffee_shop_products');
    }
}

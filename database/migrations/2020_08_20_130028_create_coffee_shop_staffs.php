<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCoffeeShopStaffs extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('coffee_shop_staffs', function (Blueprint $table) {
            $table->int('staff_id')->unique();
            $table->string('staff_number');
            $table->string('staff_name');
            $table->string('staff_email');
            $table->string('staff_password');
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
        Schema::dropIfExists('coffee_shop_staffs');
    }
}

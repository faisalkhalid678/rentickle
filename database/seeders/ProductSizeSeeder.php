<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Product_size;

class ProductSizeSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Product_size::factory()
            ->count(80)
            ->create();
    }
}

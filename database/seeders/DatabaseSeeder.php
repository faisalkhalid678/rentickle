<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
       $this->call([
        UserSeeder::class,
        CategorySeeder::class,
        ProductSeeder::class,
        ProductRatingSeeder::class,
        ProductReviewsSeeder::class,
        ProductSizeSeeder::class,
        BookingSeeder::class,
        ProductOfferSeeder::class
    ]);
    }
}

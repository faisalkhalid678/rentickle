<?php

namespace Database\Factories;

use App\Models\Product_rating;
use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;

class Product_ratingFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Product_rating::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'product_id' => $this->faker->unique(true)->numberBetween(1,40),
            'name' => $this->faker->name(),
            'email' => $this->faker->email(),
            'rating' => $this->faker->randomElement(['1','2','3','4','5']),
        ];
    }

    
    
}

<?php

namespace Database\Factories;

use App\Models\Product_review;
use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;

class Product_reviewFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Product_review::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'product_id' => $this->faker->numberBetween(1,40),
            'name' => $this->faker->name(),
            'email' => $this->faker->email(),
            'reviews' => $this->faker->sentence(8),
        ];
    }

    
    
}

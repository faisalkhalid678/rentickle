<?php

namespace Database\Factories;

use App\Models\Category;
use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;

class CategoryFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Category::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'category_name' => $this->faker->word(),
            'category_image' => $this->faker->randomElement(['category1.png','category2.png','category3.png','category4.png','category5.png']),
            'status' => $this->faker->randomElement(['Active','Inactive','Deleted']),
            
        ];
    }

    
    
}
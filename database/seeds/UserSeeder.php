<?php
use App\User;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\DB;
class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {

        DB::table('users')->insert([
                [
                    'level' => 'admin',
                    'name' => 'admin ',
                    'email' => 'admin@gmail.com',
                    'password' => Hash::make('password'),
                ],
                [
                    'level' => 'auth',
                    'name' => 'user',
                    'email' => 'user@gmail.com',
                    'password' => Hash::make('password'),
                ],
                // [
                //     'level' => 'admin',
                //     'name' => 'main admin ',
                //     'email' => 'mainAdmin@gmail.com',
                //     'password' => Hash::make('password'),
                // ],
                // [
                //     'level' => 'auth',
                //     'name' => 'user 2',
                //     'email' => 'user2@gmail.com',
                //     'password' => Hash::make('password'),
                // ]
               
            ]);
    }
}
 
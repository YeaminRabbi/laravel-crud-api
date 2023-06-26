<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\User;
use Illuminate\Support\Facades\Hash;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;
class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        // Reset cached roles and permissions
        app()[\Spatie\Permission\PermissionRegistrar::class]->forgetCachedPermissions();


        $admin = Role::create(['name' => 'admin']);
        $faculty = Role::create(['name' => 'faculty']);
        $student = Role::create(['name' => 'student']);
        $user = Role::create(['name' => 'user']);


        //creating a admin user
        $user_account = new User;
        $user_account->name = 'User';
        $user_account->email = 'user@gmail.com';
        $user_account->password =  Hash::make('123');
        $user_account->status =  1;
        $user_account->save();
 
        $user_account->assignRole($user);




        //creating a admin user
        $AdminUser = new User;
        $AdminUser->name = 'Admin';
        $AdminUser->email = 'admin@gmail.com';
        $AdminUser->password =  Hash::make('123');
        $AdminUser->status =  1;
        $AdminUser->save();

        $AdminUser->assignRole($admin);

          
        //creating a faculty user
        $FacultyUser = new User;
        $FacultyUser->name = 'Faculty';
        $FacultyUser->email = 'faculty@gmail.com';
        $FacultyUser->password =  Hash::make('123');
        $FacultyUser->status =  1;
        $FacultyUser->save();
  
        $FacultyUser->assignRole($faculty);


        //creating a student user
        $StudentUser = new User;
        $StudentUser->name = 'Student';
        $StudentUser->email = 'student@gmail.com';
        $StudentUser->password =  Hash::make('123');
        $StudentUser->status =  1;
        $StudentUser->save();

        $StudentUser->assignRole($student);
    }
}
<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Photo;
use App\Models\Role;
use App\Models\User;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class UserController extends Controller
{
    public function create(Request $request)
    {
        try {

            if (User::where('email', $request->email)->first()):
                return response()->json(['error' => "Such a user exists"], 302);
            else:
                $u = new User();
                $u->roleId = $request->role_id;
                $u->name = $request->name;
                $u->email = $request->email;
                $u->password = Hash::make($request->password);
                $u->save();

                $user = User::where('users.status', '!=', 2)->join('role', 'role.id', '=', 'users.roleId')->select('users.id', 'users.name', 'users.email', 'users.roleId as role_id', 'users.photoId as photo_id', 'role.nameUz as role_uz', 'role.nameRu as role_ru', 'role.nameEn as role_en')->get();
                if ($user->isEmpty()): return response()->json(['error' => "Such users do not exist"], 500);endif;
            endif;

            foreach ($user as $u):
                $r = Role::where('id', $u->role_id)->select('role.addAllUsers as add_all_users', 'role.addChild as add_child', 'role.createRole as create_role', 'role.deleteAllUsers as delete_all_users', 'role.deleteChild as delete_child', 'role.editChild as edit_child', 'role.export', 'role.exportAll as export_all', 'role.UpdateAllUsers as update_all_users', 'role.viewAllUsers as view_all_users', 'role.viewChild as view_child', 'role.viewRole as view_role')->first();
                $p = Photo::where('id', $u->photo_id)->select('photo.hostName as host_name', 'photo.path', 'photo.baseName as base_name', 'photo.originName as origin_name', 'photo.altName as alt_name')->first();
                $uu[] = ['access' => $r, 'data' => $u, 'photo' => $p];
            endforeach;

            return response()->json(['users' => $uu], 200);
        } catch (Exception $e) {
            return response()->json(['error' => $e], 500);
        }
    }

    public function read()
    {
        try {
            $user = User::where('users.status', '!=', 2)->join('role', 'role.id', '=', 'users.roleId')->select('users.id', 'users.name', 'users.email', 'users.roleId as role_id', 'users.photoId as photo_id', 'role.nameUz as role_uz', 'role.nameRu as role_ru', 'role.nameEn as role_en')->get();
            if ($user->isEmpty()): return response()->json(['error' => "Such users do not exist"], 500);endif;

            foreach ($user as $u):
                $r = Role::where('id', $u->role_id)->select('role.addAllUsers as add_all_users', 'role.addChild as add_child', 'role.createRole as create_role', 'role.deleteAllUsers as delete_all_users', 'role.deleteChild as delete_child', 'role.editChild as edit_child', 'role.export', 'role.exportAll as export_all', 'role.UpdateAllUsers as update_all_users', 'role.viewAllUsers as view_all_users', 'role.viewChild as view_child', 'role.viewRole as view_role')->first();
                $p = Photo::where('id', $u->photo_id)->select('photo.hostName as host_name', 'photo.path', 'photo.baseName as base_name', 'photo.originName as origin_name', 'photo.altName as alt_name')->first();
                $uu[] = ['access' => $r, 'data' => $u, 'photo' => $p];
            endforeach;
            return response()->json(['users' => $uu], 200);
        } catch (Exception $e) {
            return response()->json(['error' => $e], 500);
        }
    }

    public function update(Request $request)
    {
        try {
            if (User::where('email', $request->email)->where('id', '!=', $request->user_id)->where('status', '!=', 2)->first()):
                return response()->json(['error' => "Such a user exists"], 302);
            else:
                User::where('id', $request->user_id)->update(['roleId' => $request->role_id, 'name' => $request->name, 'email' => $request->email, 'password' => Hash::make($request->password)]);

                $user = User::where('users.status', '!=', 2)->join('role', 'role.id', '=', 'users.roleId')->select('users.id', 'users.name', 'users.email', 'users.roleId as role_id', 'users.photoId as photo_id', 'role.nameUz as role_uz', 'role.nameRu as role_ru', 'role.nameEn as role_en')->get();
                if ($user->isEmpty()): return response()->json(['error' => "Such users do not exist"], 500);endif;

                foreach ($user as $u):
                    $r = Role::where('id', $u->role_id)->select('role.addAllUsers as add_all_users', 'role.addChild as add_child', 'role.createRole as create_role', 'role.deleteAllUsers as delete_all_users', 'role.deleteChild as delete_child', 'role.editChild as edit_child', 'role.export', 'role.exportAll as export_all', 'role.UpdateAllUsers as update_all_users', 'role.viewAllUsers as view_all_users', 'role.viewChild as view_child', 'role.viewRole as view_role')->first();
                    $p = Photo::where('id', $u->photo_id)->select('photo.hostName as host_name', 'photo.path', 'photo.baseName as base_name', 'photo.originName as origin_name', 'photo.altName as alt_name')->first();
                    $uu[] = ['access' => $r, 'data' => $u, 'photo' => $p];
                endforeach;

                return response()->json(['users' => $uu], 200);
            endif;
        } catch (Exception $e) {
            return response()->json(['error' => $e], 500);
        }
    }

    public function delete(Request $request)
    {
        #set status delete
        try {
            User::where('users.id', $request->user_id)->update(['status' => 2]);

            $user = User::where('users.status', '!=', 2)->join('role', 'role.id', '=', 'users.roleId')->select('users.id', 'users.name', 'users.email', 'users.roleId as role_id', 'users.photoId as photo_id', 'role.nameUz as role_uz', 'role.nameRu as role_ru', 'role.nameEn as role_en')->get();
            if ($user->isEmpty()): return response()->json(['error' => "Such users do not exist"], 500);endif;

            foreach ($user as $u):
                $r = Role::where('id', $u->role_id)->select('role.addAllUsers as add_all_users', 'role.addChild as add_child', 'role.createRole as create_role', 'role.deleteAllUsers as delete_all_users', 'role.deleteChild as delete_child', 'role.editChild as edit_child', 'role.export', 'role.exportAll as export_all', 'role.UpdateAllUsers as update_all_users', 'role.viewAllUsers as view_all_users', 'role.viewChild as view_child', 'role.viewRole as view_role')->first();
                $p = Photo::where('id', $u->photo_id)->select('photo.hostName as host_name', 'photo.path', 'photo.baseName as base_name', 'photo.originName as origin_name', 'photo.altName as alt_name')->first();
                $uu[] = ['access' => $r, 'data' => $u, 'photo' => $p];
            endforeach;

            return response()->json(['users' => $uu], 200);
        } catch (Exception $e) {
            return response()->json(['error' => $e], 500);
        }
    }

    public function select(Request $request)
    {
        try {
            $u = User::where('users.id', $request->user_id)->join('role', 'role.id', '=', 'users.roleId')->select('users.id', 'users.name', 'users.email', 'users.roleId as role_id', 'users.photoId as photo_id', 'role.nameUz as role_uz', 'role.nameRu as role_ru', 'role.nameEn as role_en')->first();
            $r = Role::where('id', $u->role_id)->select('role.addAllUsers as add_all_users', 'role.addChild as add_child', 'role.createRole as create_role', 'role.deleteAllUsers as delete_all_users', 'role.deleteChild as delete_child', 'role.editChild as edit_child', 'role.export', 'role.exportAll as export_all', 'role.UpdateAllUsers as update_all_users', 'role.viewAllUsers as view_all_users', 'role.viewChild as view_child', 'role.viewRole as view_role')->first();
            $p = Photo::where('id', $u->photo_id)->select('photo.hostName as host_name', 'photo.path', 'photo.baseName as base_name', 'photo.originName as origin_name', 'photo.altName as alt_name')->first();
            return response()->json(['user' => ['access' => $r, 'data' => $u, 'photo' => $p]]);
        } catch (Exception $e) {
            return response()->json(['error' => $e], 500);
        }
    }
}

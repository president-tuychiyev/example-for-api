<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Role;
use Exception;
use Illuminate\Http\Request;

class RoleController extends Controller
{
    public function create(Request $request)
    {
        try {
            if (!Role::where('nameUz', $request->role_uz)->where('status', '!=', 2)->first() && !Role::where('nameRu', $request->role_ru)->where('status', '!=', 2)->first() && !Role::where('nameEn', $request->role_en)->where('status', '!=', 2)->first()):
                $r = new Role();
                $r->status = 0;
                $r->nameUz = $request->role_uz;
                $r->nameRu = $request->role_ru;
                $r->nameEn = $request->role_en;
                $r->addAllUsers = $request->add_all_users;
                $r->addChild = $request->add_child;
                $r->createRole = $request->create_role;
                $r->deleteAllUsers = $request->delete_all_users;
                $r->deleteChild = $request->delete_child;
                $r->editChild = $request->edit_child;
                $r->export = $request->export;
                $r->exportAll = $request->export_all;
                $r->updateAllUsers = $request->update_all_users;
                $r->viewAllUsers = $request->view_all_users;
                $r->viewChild = $request->view_child;
                $r->viewRole = $request->view_role;
                $r->save();

                $r = Role::where('status', '!=', 2)->select('role.id as role_id', 'role.nameUz as role_uz', 'role.nameRu as role_ru', 'role.nameEn as role_en', 'role.addAllUsers as add_all_users', 'role.addChild as add_child', 'role.createRole as create_role', 'role.deleteAllUsers as delete_all_users', 'role.deleteChild as delete_child', 'role.editChild as edit_child', 'role.export', 'role.exportAll as export_all', 'role.UpdateAllUsers as update_all_users', 'role.viewAllUsers as view_all_users', 'role.viewChild as view_child', 'role.viewRole as view_role')->get();

                if (empty($r)): return response()->json(['error' => "Such roles do not exist"], 500);endif;

                return response()->json(['roles' => $r], 200);
            else:
                return response()->json(['error' => "Such a role name exists"], 302);
            endif;
        } catch (Exception $e) {
            return response()->json(['error' => $e], 500);
        }
    }

    public function read()
    {
        try {
            $r = Role::where('status', '!=', 2)->select('role.id as role_id', 'role.nameUz as role_uz', 'role.nameRu as role_ru', 'role.nameEn as role_en', 'role.addAllUsers as add_all_users', 'role.addChild as add_child', 'role.createRole as create_role', 'role.deleteAllUsers as delete_all_users', 'role.deleteChild as delete_child', 'role.editChild as edit_child', 'role.export', 'role.exportAll as export_all', 'role.UpdateAllUsers as update_all_users', 'role.viewAllUsers as view_all_users', 'role.viewChild as view_child', 'role.viewRole as view_role')->get();

            if (empty($r)): return response()->json(['error' => "Such roles do not exist"], 500);endif;

            return response()->json(['roles' => $r], 200);
        } catch (Exception $e) {
            return response()->json(['error' => $e], 500);
        }
    }

    public function update(Request $request)
    {
        try {
            if (Role::where('id', $request->role_id)->where('status', '!=', 2)->first()):
                if (!Role::where('nameUz', $request->role_uz)->where('id', '!=', $request->role_id)->where('status', '!=', 2)->first() || !Role::where('nameRu', $request->role_ru)->where('id', '!=', $request->role_id)->where('status', '!=', 2)->first() || !Role::where('nameEn', $request->role_en)->where('id', '!=', $request->role_id)->where('status', '!=', 2)->first()):
                    Role::where('id', $request->role_id)->update([
                        'nameUz' => $request->role_uz,
                        'nameRu' => $request->role_ru,
                        'nameEn' => $request->role_en,
                        'addAllUsers' => $request->add_all_users,
                        'addChild' => $request->add_child,
                        'createRole' => $request->create_role,
                        'deleteAllUsers' => $request->delete_all_users,
                        'deleteChild' => $request->delete_child,
                        'editChild' => $request->edit_child,
                        'export' => $request->export,
                        'exportAll' => $request->export_all,
                        'updateAllUsers' => $request->update_all_users,
                        'viewAllUsers' => $request->view_all_users,
                        'viewChild' => $request->view_child,
                        'viewRole' => $request->view_role,
                    ]);
                    $r = Role::where('status', '!=', 2)->select('role.id as role_id', 'role.nameUz as role_uz', 'role.nameRu as role_ru', 'role.nameEn as role_en', 'role.addAllUsers as add_all_users', 'role.addChild as add_child', 'role.createRole as create_role', 'role.deleteAllUsers as delete_all_users', 'role.deleteChild as delete_child', 'role.editChild as edit_child', 'role.export', 'role.exportAll as export_all', 'role.UpdateAllUsers as update_all_users', 'role.viewAllUsers as view_all_users', 'role.viewChild as view_child', 'role.viewRole as view_role')->get();

                    if (empty($r)): return response()->json(['error' => "Such roles do not exist"], 500);endif;

                    return response()->json(['roles' => $r], 200);
                else:
                    return response()->json(['error' => "Such a role name exists"], 302);
                endif;
            else:
                return response()->json(['error' => "No role was found with such an id"], 404);
            endif;

        } catch (Exception $e) {
            return response()->json(['error' => $e], 500);
        }
    }

    public function delete(Request $request)
    {
        #set status delete
        try {
            Role::where('id', $request->role_id)->update(['status' => 2]);
            $r = Role::where('status', '!=', 2)->select('role.id as role_id', 'role.nameUz as role_uz', 'role.nameRu as role_ru', 'role.nameEn as role_en', 'role.addAllUsers as add_all_users', 'role.addChild as add_child', 'role.createRole as create_role', 'role.deleteAllUsers as delete_all_users', 'role.deleteChild as delete_child', 'role.editChild as edit_child', 'role.export', 'role.exportAll as export_all', 'role.UpdateAllUsers as update_all_users', 'role.viewAllUsers as view_all_users', 'role.viewChild as view_child', 'role.viewRole as view_role')->get();

            if (empty($r)): return response()->json(['error' => "Such roles do not exist"], 500);endif;

            return response()->json(['roles' => $r], 200);
        } catch (Exception $e) {
            return response()->json(['error' => $e], 500);
        }
    }
}

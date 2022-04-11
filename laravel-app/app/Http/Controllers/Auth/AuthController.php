<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Models\Photo;
use App\Models\Role;
use App\Models\User;
use Illuminate\Http\Request;

class AuthController extends Controller
{
    /**
     * Create a new AuthController instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth:api', ['except' => ['login']]);
    }

    /**
     * Get a JWT via given credentials.
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function login(Request $request)
    {
        $credentials = request(['email', 'password']);

        if (!$token = auth()->attempt($credentials)) {
            return response()->json(['error' => 'Unauthorized'], 401);
        }

        $u = User::where('email', $request->email)->join('role', 'role.id', '=', 'users.roleId')->select('users.id', 'users.name', 'users.email', 'users.roleId as role_id', 'users.photoId as photo_id', 'role.nameUz as role_uz', 'role.nameRu as role_ru', 'role.nameEn as role_en')->first();
        $r = Role::where('id', $u->role_id)->select('role.addAllUsers as add_all_users', 'role.addChild as add_child', 'role.createRole as create_role', 'role.deleteAllUsers as delete_all_users', 'role.deleteChild as delete_child', 'role.editChild as edit_child', 'role.export', 'role.exportAll as export_all', 'role.UpdateAllUsers as update_all_users', 'role.viewAllUsers as view_all_users', 'role.viewChild as view_child', 'role.viewRole as view_role')->first();
        $p = Photo::where('id', $u->photo_id)->select('photo.hostName as host_name', 'photo.path', 'photo.baseName as base_name', 'photo.originName as origin_name', 'photo.altName as alt_name')->first();

        return response()->json([ 'token' => $this->respondWithToken($token), 'user' => [ 'access' => $r, 'data' => $u, 'photo' => $p ] ]);
    }

    /**
     * Get the authenticated User.
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function me()
    {
        return response()->json(auth()->user());
    }

    /**
     * Log the user out (Invalidate the token).
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function logout()
    {
        auth()->logout();

        return response()->json(['message' => 'Successfully logged out']);
    }

    /**
     * Refresh a token.
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function refresh()
    {
        return $this->respondWithToken(auth()->refresh());
    }

    /**
     * Get the token array structure.
     *
     * @param  string $token
     *
     * @return \Illuminate\Http\JsonResponse
     */
    protected function respondWithToken($token)
    {
        return response()->json([
            'access_token' => $token,
            'token_type' => 'bearer',
            'expires_in' => auth()->factory()->getTTL() * 60,
        ]);
    }
}

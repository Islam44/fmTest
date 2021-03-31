<?php

namespace App\Http;

use Alexusmai\LaravelFileManager\Services\ACLService\ACLRepository;
use Illuminate\Support\Facades\Artisan;
use Illuminate\Support\Facades\Auth;

/**
 * Class DBACLRepository
 *
 * @package Alexusmai\LaravelFileManager\Services\ACLService
 */
class DBACLRepository implements ACLRepository
{

    /**
     * Get user ID
     *
     * @return mixed
     */
    public function getUserID()
    {
        return Auth::id();
    }


    /**
     * Get ACL rules list for user
     *
     * @return array
     */
    public function getRules(): array
    {
        if (Auth::id()==1){
            return [
                ['disk' => 'projects', 'path' => '*', 'access' => 2],
            ];
        }
        return \DB::table('acl_rules')
            ->where('user_id', $this->getUserID())
            ->get(['disk', 'path', 'access'])
            ->map(function ($item) {
                return get_object_vars($item);
            })
            ->all();
    }
}

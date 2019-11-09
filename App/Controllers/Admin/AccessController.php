<?php

namespace App\Controllers\Admin;

use System\Controller;

class AccessController extends Controller
{
    /**
    * Check User Permissions to access admin pages
    *
    * @return void
    */
    public function index()
    {
        $loginModel = $this->load->model('Login');

        $ignoredPages = ['admin/login', 'admin/login/submit'];
                         
        $currentRoute = $this->route->getCurrentRouteUrl();

        $isNotLogged =  !$loginModel->isLogged();


        // User is not logged in and he is not requesting login page
        // then redirect him to login page
        if ($isNotLogged AND ! in_array($currentRoute , $ignoredPages)) {
            return $this->url->redirectTo('admin/login');
        }

        // There are two possibilities
        // First One the user is not logged in and he is requesting login page
        // Second One the user is logged in successfully and he is requesting
        // an admin page

        if ($isNotLogged) {
            return false;
        }

        $user = $loginModel->user();

        $usersGroupsModel = $this->load->model('UsersGroups');

        $usersGroup = $usersGroupsModel->get($user->users_group_id);

        // If the user doesn't have permissions to access this page
        //  then he will be redirected to 404 page
        if (! in_array($currentRoute, $usersGroup->pages)) {
            return $this->url->redirectTo('404');
        }
    }
}
<?php

namespace App\Controllers\Blog\Common;

use System\Controller;

class SidebarController extends Controller
{
    public function index()
    {
        $data['categories'] = $this->load->model('Categories')->getEnabledCategoriesWithNumberOfTotalPosts();

        return $this->view->render('blog/common/sidebar', $data);
    }
}
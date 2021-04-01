<?php

namespace App\Controllers;

use CodeIgniter\API\ResponseTrait;
use App\Controllers\BaseController;

class Menu extends BaseController
{
	use ResponseTrait;

	public function index()
	{
		$mdl_menu = new \App\Models\Menu();

		$menuitems = $mdl_menu->getMenu(0);
		$response = [
			'expanded' => true,
			'children' => $menuitems
		];


		return $this->respond($response, 200);
	}
}

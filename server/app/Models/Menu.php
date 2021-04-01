<?php

namespace App\Models;

use CodeIgniter\Model;

class Menu extends Model
{
	protected $DBGroup              = 'default';
	protected $table                = 'menu';
	protected $primaryKey           = 'id';
	protected $useAutoIncrement     = true;
	protected $insertID             = 0;
	protected $returnType           = 'array';
	protected $useSoftDelete        = false;
	protected $protectFields        = true;
	protected $allowedFields        = [];

	// Dates
	protected $useTimestamps        = false;
	protected $dateFormat           = 'datetime';
	protected $createdField         = 'created_at';
	protected $updatedField         = 'updated_at';
	protected $deletedField         = 'deleted_at';

	// Validation
	protected $validationRules      = [];
	protected $validationMessages   = [];
	protected $skipValidation       = false;
	protected $cleanValidationRules = true;

	// Callbacks
	protected $allowCallbacks       = true;
	protected $beforeInsert         = [];
	protected $afterInsert          = [];
	protected $beforeUpdate         = [];
	protected $afterUpdate          = [];
	protected $beforeFind           = [];
	protected $afterFind            = [];
	protected $beforeDelete         = [];
	protected $afterDelete          = [];

	public function getMenu($id_parent) {
		$result = [];
		$data = $this->getWhere(['id_parent'=>$id_parent])->getResultArray();
		foreach ($data as $key => $value) {
			$result[$key] = $value;
			
			$children = $this->getMenu($value["id"]);
			$result[$key]['leaf'] = count($children)==0;
			if(count($children)>0) {
				$result[$key]['children'] = $children;	
			}
		}

		return $result;

	}
}

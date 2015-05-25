<?php
namespace Project\Forms;

use Vegas\Forms\Element\Text;
use Vegas\Forms\Element\Upload;
use Vegas\Validation\Validator\PresenceOf;
use Vegas\Validation\Validator\Url;

class Project extends \Vegas\Forms\Form
{
    public function initialize()
    {
        $name = new Text('name');
        $name->setLabel('Name');
        $name->addValidator(new PresenceOf());
        $this->add($name);

        $url = new Text('url');
        $url->setLabel('Project url');
        $url->addValidator(new Url());
        $this->add($url);

        $image = new Upload('image');
        $image->setModel(new \File\Models\File());
        $image->setUploadUrl($this->url->get([
            'for' => 'admin/project',
            'action' => 'upload'
        ]));
        $image->setPath(APP_ROOT.'/public/uploads/');
        $image->setLabel('Image');
        $this->add($image);
    }
}
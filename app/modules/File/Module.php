<?php
/**
 * This file is part of Vegas package
 *
 * @author Arkadiusz Ostrycharz <arkadiusz.ostrycharz@gmail.com>
 * @copyright Amsterdam Standard Sp. Z o.o.
 * @homepage https://bitbucket.org/amsdard/vegas-phalcon
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */
namespace File;

class Module extends \Vegas\Mvc\ModuleAbstract
{
    public function __construct() {
        $this->namespace = __NAMESPACE__;
        $this->dir = __DIR__;
    }
}
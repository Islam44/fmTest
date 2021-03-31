<?php

namespace App\Http\Controllers;

use Alexusmai\LaravelFileManager\FileManager;
use Alexusmai\LaravelFileManager\Services\ConfigService\DefaultConfigRepository;
use Alexusmai\LaravelFileManager\Traits\ContentTrait;
use App\Http\DBACLRepository;
use App\Models\Node;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;

class HomeController extends Controller
{
    use ContentTrait;
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
//        Auth::loginUsingId(1);
        $res=json_encode($this->listFolderFiles(public_path('uploads/projects/p_1')));
      return view('welcome2',compact('res'));
}

    function listFolderFiles($dir)
    {
        $fileOrFolderList = scandir($dir,1);
        unset($fileOrFolderList[array_search('.', $fileOrFolderList, true)]);
        unset($fileOrFolderList[array_search('..', $fileOrFolderList, true)]);
        if (count($fileOrFolderList) > 0) {
            $nodes = [];
            foreach ($fileOrFolderList as $index => $fileOrFolder) {
                $node = new Node();
                $node->text = $fileOrFolder;
                if (is_dir($dir . '/' . $fileOrFolder)) {
                    $node->children = $this->listFolderFiles($dir . '/' . $fileOrFolder);
                    $node->type = 'dir';
                } else {
                    $node->type = 'file';
                }
                $node->path = str_replace(public_path('uploads/projects/'), '', $dir . '/' . $fileOrFolder);
                array_push($nodes, $node);
            }
            return $nodes;
        }
        return;
    }

}

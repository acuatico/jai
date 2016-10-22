<?php

namespace App\Http\Controllers;

use App\Service\Category;
use App\Service\Post;
use Carbon\Carbon;
use Illuminate\Http\Request;

use App\Http\Requests;

class PostController extends Controller
{
    /**
     * @var Post
     */
    private $postService;
    /**
     * @var Category
     */
    private $categoryService;

    /**
     * PostController constructor.
     * @param Post $postService
     * @param Category $categoryService
     */
    public function __construct(Post $postService, Category $categoryService)
    {
        $this->postService = $postService;
        $this->categoryService = $categoryService;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('backend.posts.list');
    }

    /**
     * Process datatables ajax request.
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function anyData()
    {
        return $this->postService->datatableData();
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $data['categoryCheckboxes'] = $this->categoryService->categoryCheckbox('categories[]', 1);
        $data['currentDateTime'] = Carbon::now()->format('d-F-Y - H:i');
        return view('backend.posts.add', $data);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->postService->store($request->except(['_token']));

        return backendRedirect('post');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $post = $this->postService->findById($id);
        $data['post'] = $post;
        $selectedCategories = $post->categories->pluck('id')->all();
        $data['categoryCheckboxes'] = $this->categoryService->categoryCheckbox('categories[]', 1, $selectedCategories);
        $data['publishDate'] = Carbon::createFromFormat('Y-m-d H:i:s', $post->publish_date)->format('d-F-Y - H:i');
        $data['featuredImage'] = $post->medias()->where('media_type', 'featured')->first();
        return view('backend.posts.edit', $data);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        var_dump($request->input());
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}

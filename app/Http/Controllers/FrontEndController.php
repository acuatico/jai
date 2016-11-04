<?php

namespace App\Http\Controllers;

use App\Service\Package;
use App\Service\Post;
use App\Service\Slider;
use Illuminate\Http\Request;

use App\Http\Requests;

class FrontEndController extends Controller
{
    /**
     * @var Post
     */
    private $postService;
    /**
     * @var Slider
     */
    private $sliderService;
    /**
     * @var Package
     */
    private $packageService;

    /**
     * FrontEndController constructor.
     * @param Post $postService
     * @param Slider $sliderService
     * @param Package $packageService
     */
    public function __construct(Post $postService, Slider $sliderService, Package $packageService)
    {
        $this->postService = $postService;
        $this->sliderService = $sliderService;
        $this->packageService = $packageService;
    }

    public function homePage($lang)
    {
        $params = [
            'status' => 'publish',
            'post_type_id' => 2,
            'lang' => $lang,
            'meta' => [
                'key' => 'whats_on',
                'operator' => '=',
                'value' => '1'
            ]
        ];
        $post = $this->postService->getPostsWithDetail($params);

        $sliderParams = [
            'title' => 'Homeslider',
            'lang' => $lang,
        ];
        $sliders = $this->sliderService->getSliderWithItems($sliderParams);

        $data['whatsOnContents'] = $post->get();
        $data['sliders'] = $sliders;

        return view('frontend.home', $data);
    }

    public function aboutUs($lang)
    {
        return view('frontend.about-us');
    }

    public function ticket($lang)
    {
        $generalAdmissionParams = [
            'lang' => $lang,
            'is_general_admission' => true
        ];
        $generalPackages = $this->packageService->getPackages($generalAdmissionParams);

        $otherPackageParams = [
            'lang' => $lang,
            'is_general_admission' => true
        ];
        $otherPackages = $this->packageService->getPackages($otherPackageParams);

        $data['generalPackages'] = $generalPackages;
        $data['otherPackages'] = $otherPackages;

        return view('frontend.ticket-hours', $data);
    }

    public function bookTicket($lang)
    {
        return view('frontend.book-detail');
    }

    public function specialPackages($lang)
    {
        $params = [
            'package_type_id' => 2,
            'lang' => $lang
        ];
        $packages = $this->packageService->getPackages($params);
        $data['packages'] = $packages;

        return view('frontend.special-packages', $data);
    }

    public function showTime($lang)
    {
        return view('frontend.showtime');
    }

    public function location($lang)
    {
        return view('frontend.location');
    }

    public function locationMap($lang)
    {
        return view('frontend.location-map');
    }

    public function news($lang, $page = 1)
    {
        $featuredParams = $this->postService->getFeaturedPostParams($lang);
        $featuredPosts = $this->postService->getPostsWithDetail($featuredParams);

        $featuredIds = $featuredPosts->pluck('id');

        $newsParams = $this->postService->getNewsParams($lang, $featuredIds);
        $news = $this->postService->getPostsWithDetail($newsParams);


        $newsPaginated = $news->paginate(5);
//        $newsPaginated->setCurrentPage($page, 0);
//        var_dump($newsPaginated); exit;
        $newsPaginated->setPath('news-blog');
        $data['featuredPosts'] = $featuredPosts->get();
        $data['news'] =$newsPaginated;

        return view('frontend.news', $data);
    }

    public function newsDetail($lang)
    {
        return view('frontend.news-details');
    }

    public function attractions($lang)
    {
        return view('frontend.attractions-experience');
    }

    public function education($lang)
    {
        return view('frontend.education');
    }

    public function conservation($lang)
    {
        return view('frontend.conservation');
    }

    public function career($lang)
    {
        return view('frontend.career');
    }

    public function mediaRoom($lang)
    {
        return view('frontend.media-room');
    }

    public function privacy($lang)
    {
        return view('frontend.privacy-policy');
    }

    public function term($lang)
    {
        return view('frontend.term-use');
    }
}

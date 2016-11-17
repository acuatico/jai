<?php
use App\Models;

if (! function_exists('str_cleaner')) {
    function str_cleaner($string)
    {
        $string = str_replace(' ', '-', $string); // Replaces all spaces with hyphens.

        return preg_replace('/[^A-Za-z0-9\-.]/', '', $string); // Removes special chars.
    }
}

if (! function_exists('backendUrl')) {
    function backendUrl($destination)
    {
        $urlConfig = config('misc.backend.url');
        $url = $urlConfig . '/' . $destination;
        return url($url);
    }
}

if (! function_exists('getSlugOnModelByTitle')) {
    /**
     * @param $title
     * @param $model
     * @param int $iterator
     * @return string
     */
    function getSlugOnModelByTitle($title, $model, $iterator = 1)
    {
        $tempTitle = $title;

        if ($iterator > 1) {
            $tempTitle = $title . ' ' . $iterator;
        }

        $slug = str_slug($tempTitle, '-');
        $tempModel = 'App\\Models\\' . $model;
        if ((new $tempModel())->findBySlug($slug)) {
            $slug = getSlugOnModelByTitle($title, $model, ++$iterator);
        }

        return $slug;
    }
}

if (! function_exists('backendRedirect')) {
    /**
     * Get an instance of the redirector.
     *
     * @param  string|null  $to
     * @param  int     $status
     * @param  array   $headers
     * @param  bool    $secure
     * @return \Illuminate\Routing\Redirector|\Illuminate\Http\RedirectResponse
     */
    function backendRedirect($to = null, $status = 302, $headers = [], $secure = null)
    {
        $backendUrl = config('misc.backend.url');
        if (is_null($to)) {
            return app('redirect');
        }

        $to = $backendUrl . '/' . $to;
        return app('redirect')->to($to, $status, $headers, $secure);
    }
}

if (! function_exists('getMediaByPostId')) {

    function getMediaByPostId($postId, $mediaType = 'featured')
    {
        $postService = new \App\Service\Post();
        return $postService->findById($postId)->medias()->where('media_type', $mediaType)->first();
    }
};

if (! function_exists('lang_url')) {

    function lang_url($url) {
        $currentLang = session('lang');
        return url($currentLang . '/' . $url);
    }

}

if (! function_exists('get_day_from_number')) {

    function get_day_from_number($number, $lang) {
        $arrDay = config('languages.languages.' . $lang . '.days');
        return $arrDay[$number];
    }

}

if (! function_exists('get_post_categories')) {

    function get_post_categories($postId) {
        $postService = new \App\Service\Post();
        $post = $postService->getPost(['id' => $postId]);
        return $post->categories;
    }

}
<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Admin\VillageController;
// use App\Http\Controllers\Admin\PostController;
use App\Http\Controllers\Admin\StateMandalController;
use App\Http\Controllers\Admin\PeopleController;
use App\Http\Controllers\Admin\DashboardController;
use App\Http\Controllers\Auth\AuthController;

use App\Http\Controllers\Twitt\TweetController;
use App\Http\Controllers\Twitt\TweetLikeController;
use App\Http\Controllers\Twitt\RetweetController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\UserFollowController;
use App\Http\Controllers\Profile\ProfileController;


Route::prefix('')->group(function () {
    Route::post('register', [AuthController::class, 'register']);
    Route::post('login', [AuthController::class, 'login']);
    Route::post('logout', [AuthController::class, 'logout']);
    Route::post('refresh', [AuthController::class, 'refresh']);
    Route::get('user', [AuthController::class, 'loadUser']); 
    Route::get('users', [UserController::class, 'getUsers']); 
    Route::post('username', [UserController::class, 'checkUser']); 
});
Route::get('/confirm/{code}',[AuthController::class, 'confirmAccount']);
Route::get('/images/{filename}', 'ImageController@showImage');
// Route::post('/confirm/{code}',[AuthController::class, 'confirmAccount']);
Route::post('/confirm/{code}',[AuthController::class, 'confirmAccount']);
// Route::post('/profiles/{field}/{value}', [ProfileController::class, 'updateField']);

Route::apiResource('profile', 'App\Http\Controllers\Profile\ProfileController');
Route::get('/profession/options', [ProfileController::class, 'getProfession']);
Route::get('/{action}/options', [ProfileController::class, 'handleAction']);
Route::post('/profile/{field}/upload', [ProfileController::class, 'upload']);
Route::post('/profile/{field}', [ProfileController::class, 'updateField']);
Route::post('/profession', [ProfileController::class, 'storeNewprofession']);


// Route::get('/profile/{id}/cover-photo', [ProfileController::class, 'getCoverPhoto']);



Route::prefix('tweets')->group(function () {
    Route::get('/', [TweetController::class, 'index']);
    Route::get('{tweet}', [TweetController::class, 'show']);
    Route::post('/', [TweetController::class, 'store']);
    Route::put('{id}', [TweetController::class, 'update']);
    Route::delete('{id}', [TweetController::class, 'destroy']);
    Route::post('{tweet}/like', [TweetLikeController::class, 'store']);
    Route::post('{tweet}/retweet', [RetweetController::class, 'store']);    
    Route::get('{tweet}/responses', [TweetController::class, 'getResponses']);  
    Route::get('/{id}/new', [TweetController::class, 'getNewTweets']);
    
});

Route::prefix('/users')->group(function () {
    Route::get('/followers', [UserFollowController::class, 'followers'])->name('followers');
    Route::get('/following', [UserFollowController::class, 'following'])->name('following');
    Route::post('/follow/{user}', [UserFollowController::class, 'follow'])->name('follow');
    Route::post('/unfollow/{user}', [UserFollowController::class, 'unfollow'])->name('unfollow');
});
// Route::controller(StateMandalController::class)->group(function () {
//     Route::get('states', 'fetchState');
//     Route::get('districts', 'fetchDistrict');
//     Route::get('mandals', 'fetchMandal');
//     Route::get('villages', 'fetchVillage');
//     // Route::get('village', 'show');   
// });

Route::prefix('')->group(function () {
    Route::get('states', [StateMandalController::class, 'fetchState']);
    Route::get('districts', [StateMandalController::class, 'fetchDistrict']);
    Route::get('mandals', [StateMandalController::class, 'fetchMandal']);
    Route::get('villages', [StateMandalController::class, 'fetchVillage']);
    Route::post('village', [VillageController::class, 'store']);   
});

// Route::get('/states', [StateMandalController::class, 'fetchState']);
Route::controller(VillageController::class)->group(function () {
    Route::post('village/create', 'store');
    Route::get('village', 'show');
});

Route::controller(DashboardController::class)->group(function () {
    Route::get('get_numbers', 'getNumbers'); 

});


Route::group(['prefix' => '/v1', 'namespace' => 'Api\V1', 'as' => 'api.'], function () {
    return 'hello';

});


Route::group(['middleware' => ['auth'], 'prefix' => 'auth','as' => 'auth.'], function () {
    Route::get('/msg', function () {
        return response()->json([
            'message' => 'This is a simple example of item returned by your APIs in auth. Everyone can see it.'
        ]);
    });
});

Route::get('/msg', function () {
    return response()->json([
        'message' => 'This is a simple example of item returned by your APIs. Everyone can see it.'
    ]);
});
<?php

namespace App\Http\Controllers\Profile;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\ProfileRelated\Profile;
use Illuminate\Support\Facades\Auth;
use App\User;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;


class ProfileController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:api', ['except' => []]);
    }




    public function show(int $uid)
    {
        $profile = Profile::where('user_id', $uid)->first();
        return response()->json($profile);
    }

    public function update(Request $request)
    {
        $user = Auth::user();
        $profile = Profile::where('user_id', $user->id)->first();

        $profile->fill($request->all());
        $profile->save();
        return response()->json(['message' => 'Profile updated successfully.']);
    }
    public function getMarried($action) {
        
            $mappedArray[] = ['label' => 'Married','value' => true,];
            $mappedArray[]=['label' => 'Single','value' => false,];
       
        return response()->json($mappedArray);
    }
    public function getGender ($action) {
        $user = Auth::user();
        $profile = $user->profile;
        return $profile->getStatusEnumValues($action);
        $contents = $profile->getStatusEnumValues($action);
        $mappedArray = [];

        foreach ($contents as $value) {
            $mappedArray[] = [
                'label' => $value,
                'value' => $value,
            ];
        }    
        return response()->json($mappedArray);
    }


    public function handleAction($action) {
        
        $methodName = 'get' . ucfirst($action);
    
        if (method_exists($this, $methodName)) {
            return $this->{$methodName}($action);
        } else {
            abort(404);
        }
    }


//     public function edit()
// {
//     $user = Auth::user();
//     $profile = $user->profile;

//     return  compact('profile');
// }
    // public function saveCoverPhoto(Request $request, $id)
    // {
    //     $user = User::find($id);

    //     if (!$user) {
    //         return response()->json(['error' => 'User not found'], 404);
    //     }

    //     if (!$request->hasFile('cover_photo')) {
    //         return response()->json(['error' => 'No cover photo provided'], 400);
    //     }

    //     $coverPhoto = $request->file('cover_photo');
    //     $filename = time() . '_' . $coverPhoto->getClientOriginalName();
    //     $path = $coverPhoto->storeAs('public/cover_photos', $filename);

    //     $profile = $user->profile ?? new Profile(['user_id' => $id]);
    //     $profile->cover_photo = $filename;
    //     $profile->save();

    //     return response()->json(['message' => 'Cover photo saved successfully'], 200);
    // }

    public function upload(Request $request,$field)
    {
        $request->validate([
            'image' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
        ]);

        $imageName = time() . '.' . $request->image->extension();

        $request->image->move(public_path('images'), $imageName);

        // Store the image path in the profiles table
        $user = Auth::user();
        $profile = $user->profile;



        $profile->{$field} = 'images/' . $imageName;
        $profile->save();

        return response()->json([
            'success' => true,
            'message' => 'Image uploaded and saved successfully',
            'file_path' => 'images/' . $imageName,
        ]);
    }

    public function getCoverPhoto($id)
    {
        $profile = Profile::find($id);

        if (!$profile) {
            return response()->json([
                'success' => false,
                'message' => 'Profile not found',
            ], 404);
        }

        return response()->json([
            'success' => true,
            // 'cover_photo_uri' => url('/') . '/' . $profile->cover_photo,
            'cover_photo_uri' => asset($profile->cover_photo)
        ]);
    }

    // public function saveDateOfBirth(Request $request, $id)
    // {
    //     $user = User::find($id);

    //     if (!$user) {
    //         return response()->json(['error' => 'User not found'], 404);
    //     }

    //     $profile = $user->profile ?? new Profile(['user_id' => $id]);
    //     $profile->date_of_birth = $request->input('date_of_birth');
    //     $profile->save();

    //     return response()->json(['message' => 'Date of birth saved successfully'], 200);
    // }
    // public function updateField($field, $value)
    // {
    //     // Find the currently authenticated user's profile
    //     $profile = auth()->user()->profile;
        
    //     // Update the specified field with the given value
    //     $profile->{$field} = $value;
        
    //     // Save the changes
    //     $profile->save();
        
    //     // Return a success response
    //     return response()->json(['message' => 'Field updated successfully']);
    // }

    public function updateField(Request $request, $field)
    {
        // return $request;
        $user = $request->user();
        $profile = $user->profile;

        
        
        switch ($field) {
            case 'native_place':
                $field='native_place_id';
                // $profile->native_place_id = $request->input('value');
                break;
            case 'work_place':
                $field='work_place_id';
                // $profile->work_place_id = $request->input('value');
                break;
            case 'education':
                $field='education_id';
                // $profile->education_id = $request->input('value');
                break;
            case 'profession':
                $field='profession_id';
                // $profile->profession_id = $request->input('value');
        //         break;
        //     case 'about_work':
        //         $profile->about_work = $request->input('value');
        //         break;
        //     case 'work_experience':
        //         $profile->work_experience = $request->input('value');
        //         break;
        //     case 'interests':
        //         $profile->interests = $request->input('value');
        //         break;
        //     case 'twitter_handle':
        //         $profile->twitter_handle = $request->input('value');
        //         break;
        //     case 'linkedin_handle':
        //         $profile->linkedin_handle = $request->input('value');
        //         break;
        //     case 'facebook_handle':
        //         $profile->facebook_handle = $request->input('value');
        //         break;
        //     case 'instagram_handle':
        //         $profile->instagram_handle = $request->input('value');
        //         break;
            default:
                $field=$field;
                break;
                // $profile->{$field} = $request->input('value');
                // return response()->json(['error' => 'value'], 400);
        }
        $profile->{$field} = $request->input('value');
        $profile->save();
        return response()->json([$field => $profile->{$field}]);
    }
}



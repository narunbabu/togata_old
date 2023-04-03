<?php

namespace App\Models\ProfileRelated;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\User;
use App\Models\ProfilesRelated\ProfessionCategory;
use App\Models\PlaceRelated\Village;
use App\Models\Qualification;
use Illuminate\Support\Facades\DB;
class Profile extends Model
{
    protected $fillable = [
        'user_id',
        'avatar',
        'cover_photo',
        'date_of_birth',
        'gender',
        'married',
        'gotram',
        'bio',
        'best_known_for',
        'achievements_recognitions',
        'native_place_id',
        'work_place_id',
        'education_id',
        'profession_id',
        'about_work',
        'work_experience',
        'interests',
        'twitter_handle',
        'linkedin_handle',
        'facebook_handle',
        'instagram_handle',
    ];

    public function user()
    {
        return $this->belongsTo(User::class);
    }

    public function nativePlace()
    {
        return $this->belongsTo(Village::class, 'native_place_id');
    }

    public function workPlace()
    {
        // return $this->hasMany(Village::class,'work_place_id');
        return $this->belongsTo(Village::class, 'work_place_id');
    }

    public function education()
    {
        return $this->belongsTo(Qualification::class);
    }

    public function profession()
    {
        return $this->belongsTo(AllProfession::class);
    }
    public static function getStatusEnumValues($field)
    {
        // return "SHOW COLUMNS FROM profiles WHERE Field = '{$field}'";
        $type = DB::select(DB::raw("SHOW COLUMNS FROM profiles WHERE Field = '{$field}'"))[0]->Type;
        preg_match('/^enum\((.*)\)$/', $type, $matches);
        $enum = array();
        foreach (explode(',', $matches[1]) as $value) {
            $v = trim($value, "'");
            $enum[] = $v;
        }
        return $enum;
    }

    public function toArray()
    {
        $array = parent::toArray(); 
        $array['surname'] = ucwords($this->user->surname);
        $array['name'] = ucwords($this->user->name);
        $array['username'] = $this->user->username;
        $array['mobile'] = $this->user->mobile;
        $array['email'] = $this->user->email;
        $array['native_place'] = $this->nativePlace->name.', \n'.$this->nativePlace->mandal->name.' (M), \n'.
                                $this->nativePlace->mandal->district->name.' (D)';
        $array['work_place'] = $this->workPlace->name.'\n'.$this->workPlace->mandal->name.' (M), \n'.
                                $this->workPlace->mandal->district->name.' (D) ';
        $array['education'] = $this->education->name;
        $array['profession'] = $this->profession->name;
        $array['cover_photo'] =asset($this->cover_photo);
        $array['avatar'] =asset($this->avatar);

        return $array;
    }
}

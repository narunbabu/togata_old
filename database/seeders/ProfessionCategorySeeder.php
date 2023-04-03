<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
class ProfessionCategorySeeder extends Seeder
{

    public function run()
    {
        // DB::table('prof_categories')->insert(
        $items=    [
            ['name' => 'Accounting and Finance'],
            ['name' => 'Arts and Entertainment'],
            ['name' => 'Journalism and Media'],            
            ['name' => 'Aviation'],
            ['name' => 'Business and Entrepreneurship'],
            ['name' => 'Construction and Engineering'],
            ['name' => 'Customer Service'],
            ['name' => 'Data Entry and Administration'],
            ['name' => 'Design and Creative'],
            ['name' => 'Education and Training'],
            ['name' => 'Environmental and Agriculture'],
            ['name' => 'Healthcare'],
            ['name' => 'Human Resources'],
            ['name' => 'Information Technology'],
            ['name' => 'Legal'],
            ['name' => 'Marketing and Sales'],
            ['name' => 'Music and Performing Arts'],
            ['name' => 'Photography and Videography'],
            ['name' => 'Public Service and Safety'],
            ['name' => 'Real Estate'],
            ['name' => 'Science and Technology'],
            ['name' => 'Sports and Fitness'],
            ['name' => 'Travel and Tourism']
        ];

        foreach ($items as $item) {
            \App\Models\ProfileRelated\ProfessionCategory::create($item);
        };

        // DB::table('all_professions')->insert(
        $items=    [
            ['name' => 'Chartered Accountant', 'category_id' => 1],
            ['name' => 'Financial Analyst', 'category_id' => 1],
            ['name' => 'Investment Banker', 'category_id' => 1],
            ['name' => 'Tax Consultant', 'category_id' => 1],
            ['name' => 'Auditor', 'category_id' => 1],

            ['name' => 'Actor/Actress', 'category_id' => 2],
            ['name' => 'Director', 'category_id' => 2],
            ['name' => 'Screenwriter', 'category_id' => 2],
            ['name' => 'Stunt Performer', 'category_id' => 2],
            ['name' => 'Voice Actor', 'category_id' => 2],

            ['name' => 'Journalist', 'category_id' => 3],
            ['name' => 'Editor', 'category_id' => 3],
            ['name' => 'News Anchor', 'category_id' => 3],
            ['name' => 'Foreign Correspondent', 'category_id' => 3],
            ['name' => 'Investigative Reporter', 'category_id' => 3],

            ['name' => 'Pilot', 'category_id' => 4],
            ['name' => 'Flight Attendant', 'category_id' => 4],
            ['name' => 'Air Traffic Controller', 'category_id' => 4],
            ['name' => 'Aircraft Mechanic', 'category_id' => 4],
            ['name' => 'Aviation Safety Inspector', 'category_id' => 4],

            ['name' => 'Entrepreneur', 'category_id' => 5],
            ['name' => 'Maggams', 'category_id' => 5],
            ['name' => 'Agriculture', 'category_id' => 5],
            ['name' => 'Small Shop', 'category_id' => 5],
            ['name' => 'Small Factory', 'category_id' => 5],
            ['name' => 'Comapny', 'category_id' => 5],
            ['name' => 'Management Consultant', 'category_id' => 5],
            ['name' => 'Business Analyst', 'category_id' => 5],
            ['name' => 'Marketing Consultant', 'category_id' => 5],
            ['name' => 'Venture Capitalist', 'category_id' => 5],

            ['name' => 'Civil Engineer', 'category_id' => 6],
            ['name' => 'Mechanical Engineer', 'category_id' => 6],
            ['name' => 'Architect', 'category_id' => 6],
            ['name' => 'Structural Engineer', 'category_id' => 6],
            ['name' => 'Electrical Engineer', 'category_id' => 6],

            ['name' => 'Customer Service Representative', 'category_id' => 7],
            ['name' => 'Data Entry Operator', 'category_id' => 7],
            ['name' => 'Technical Support Specialist', 'category_id' => 7],
            ['name' => 'Billing Specialist', 'category_id' => 7],
            ['name' => 'Collections Specialist', 'category_id' => 7],

            ['name' => 'Graphic Designer', 'category_id' => 8],
            ['name' => 'Web Developer', 'category_id' => 8],
            ['name' => 'UX Designer', 'category_id' => 8],
            ['name' => 'Front-End Developer', 'category_id' => 8],
            ['name' => 'Back-End Developer', 'category_id' => 8],

            ['name' => 'Teacher', 'category_id' => 9],
            ['name' => 'Trainer', 'category_id' => 9],
            ['name' => 'Curriculum Developer', 'category_id' => 9],
            ['name' => 'Instructional Designer', 'category_id' => 9],
            ['name' => 'Educational Consultant', 'category_id' => 9],

            ['name' => 'Research Scientist', 'category_id' => 10],
            ['name' => 'Agricultural Engineer', 'category_id' => 10],
            ['name' => 'Biomedical Engineer', 'category_id' => 10],
            ['name' => 'Chemical Engineer', 'category_id' => 10],
            ['name' => 'Environmental Scientist', 'category_id' => 10],

            ['name' => 'Doctor', 'category_id' => 11],
            ['name' => 'Nurse', 'category_id' => 11],
            ['name' => 'Pharmacist', 'category_id' => 11],
            ['name' => 'Dentist', 'category_id' => 11],
            ['name' => 'Physical Therapist', 'category_id' => 11],

            ['name' => 'Human Resources Manager', 'category_id' => 12],
            ['name' => 'Recruiter', 'category_id' => 12],
            ['name' => 'Training and Development Specialist', 'category_id' => 12],
            ['name' => 'Compensation and Benefits Manager', 'category_id' => 12],
            ['name' => 'Labor Relations Specialist', 'category_id' => 12],

            ['name' => 'Software Developer', 'category_id' => 13],
            ['name' => 'Network Administrator', 'category_id' => 13],
            ['name' => 'Computer Systems Analyst', 'category_id' => 13],
            ['name' => 'Web Developer', 'category_id' => 13],
            ['name' => 'Data Scientist', 'category_id' => 13],

            ['name' => 'Lawyer', 'category_id' => 14],
            ['name' => 'Legal Assistant', 'category_id' => 14],
            ['name' => 'Paralegal', 'category_id' => 14],
            ['name' => 'Judge', 'category_id' => 14],
            ['name' => 'Law Clerk', 'category_id' => 14],

            ['name' => 'Marketing Manager', 'category_id' => 15],
            ['name' => 'Sales Executive', 'category_id' => 15],
            ['name' => 'Public Relations Specialist', 'category_id' => 15],
            ['name' => 'Market Research Analyst', 'category_id' => 15],
            ['name' => 'Advertising Manager', 'category_id' => 15],

            ['name' => 'Singer', 'category_id' => 16],
            ['name' => 'Dancer', 'category_id' => 16],
            ['name' => 'Actor', 'category_id' => 16],
            ['name' => 'Musician', 'category_id' => 16],
            ['name' => 'Comedian', 'category_id' => 16],

            ['name' => 'Photographer', 'category_id' => 17],
            ['name' => 'Videographer','category_id' => 17],
            ['name' => 'Film Director', 'category_id' => 17],
            ['name' => 'Video Editor', 'category_id' => 17],
            ['name' => 'Sound Engineer', 'category_id' => 17],

            ['name' => 'Police Officer', 'category_id' => 18],
            ['name' => 'Firefighter', 'category_id' => 18],
            ['name' => 'Paramedic', 'category_id' => 18],
            ['name' => 'Emergency Management Director', 'category_id' => 18],
            ['name' => 'Security Guard', 'category_id' => 18],
            ['name' => 'Private Investigator', 'category_id' => 18],

            ['name' => 'Real Estate Agent', 'category_id' => 19],
            ['name' => 'Property Manager', 'category_id' => 19],
            ['name' => 'Appraiser', 'category_id' => 19],
            ['name' => 'Real Estate Investor', 'category_id' => 19],

            ['name' => 'Biomedical Engineer', 'category_id' => 20],
            ['name' => 'Computer Scientist', 'category_id' => 20],
            ['name' => 'Data Scientist', 'category_id' => 20],
            ['name' => 'Environmental Scientist', 'category_id' => 20],
            ['name' => 'Mathematician', 'category_id' => 20],
            ['name' => 'Research Scientist', 'category_id' => 20],

            ['name' => 'Personal Trainer', 'category_id' => 21],
            ['name' => 'Athletic Trainer', 'category_id' => 21],
            ['name' => 'Sports Coach', 'category_id' => 21],
            ['name' => 'Fitness Instructor', 'category_id' => 21],

            ['name' => 'Travel Agent', 'category_id' => 22],
            ['name' => 'Tour Guide', 'category_id' => 22],
            ['name' => 'Hotel Manager', 'category_id' => 22],
            ['name' => 'Flight Attendant', 'category_id' => 22],
            ];
            foreach ($items as $item) {
                \App\Models\ProfileRelated\AllProfession::create($item);
            }
        
    }
}

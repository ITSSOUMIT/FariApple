<?php

namespace Database\Seeders;

use Botble\Base\Supports\BaseSeeder;
use Botble\Faq\Models\Faq;
use Botble\Faq\Models\FaqCategory;
use Botble\Language\Models\LanguageMeta;
use Illuminate\Support\Facades\DB;

class FaqSeeder extends BaseSeeder
{
    public function run(): void
    {
        Faq::truncate();
        FaqCategory::truncate();
        DB::table('faqs_translations')->truncate();
        DB::table('faq_categories_translations')->truncate();
        LanguageMeta::where('reference_type', FaqCategory::class)->delete();
        LanguageMeta::where('reference_type', Faq::class)->delete();

        $categories = [
            [
                'name' => 'SHIPPING',
            ],
            [
                'name' => 'PAYMENT',
            ],
            [
                'name' => 'ORDER & RETURNS',
            ],
        ];

        foreach ($categories as $index => $value) {
            $value['order'] = $index;
            FaqCategory::create($value);
        }

        $faqItems = [
            [
                'question' => 'What Shipping Methods Are Available?',
                'answer' => 'Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.',
                'category_id' => 1,
            ],
            [
                'question' => 'Do You Ship Internationally?',
                'answer' => 'Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.',
                'category_id' => 1,
            ],
            [
                'question' => 'How Long Will It Take To Get My Package?',
                'answer' => 'Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.',
                'category_id' => 1,
            ],
            [
                'question' => 'What Payment Methods Are Accepted?',
                'answer' => 'Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.',
                'category_id' => 2,
            ],
            [
                'question' => 'Is Buying On-Line Safe?',
                'answer' => 'Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.',
                'category_id' => 2,
            ],
            [
                'question' => 'How do I place an Order?',
                'answer' => 'Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level. Raw denim polaroid paleo farm-to-table, put a bird on it lo-fi tattooed Wes Anderson Pinterest letterpress. Fingerstache McSweeney???s pour-over, letterpress Schlitz photo booth master cleanse bespoke hashtag chillwave gentrify.',
                'category_id' => 3,
            ],
            [
                'question' => 'How Can I Cancel Or Change My Order?',
                'answer' => 'Plaid letterpress leggings craft beer meh ethical Pinterest. Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth.',
                'category_id' => 3,
            ],
            [
                'question' => 'Do I need an account to place an order?',
                'answer' => 'Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY. Cray ugh 3 wolf moon fap, fashion axe irony butcher cornhole typewriter chambray VHS banjo street art.',
                'category_id' => 3,
            ],
            [
                'question' => 'How Do I Track My Order?',
                'answer' => 'Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb @Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level.',
                'category_id' => 3,
            ],
            [
                'question' => 'How Can I Return a Product?',
                'answer' => 'Kale chips Truffaut Williamsburg, hashtag fixie Pinterest raw denim c hambray drinking vinegar Carles street art Bushwick gastropub. Wolf Tumblr paleo church-key. Plaid food truck Echo Park YOLO bitters hella, direct trade Thundercats leggings quinoa before they sold out. You probably haven???t heard of them wayfarers authentic umami drinking vinegar Pinterest Cosby sweater, fingerstache fap High Life.',
                'category_id' => 3,
            ],
        ];

        foreach ($faqItems as $value) {
            Faq::create($value);
        }

        $translations = [
            [
                'name' => 'V???N CHUY???N',
            ],
            [
                'name' => 'THANH TO??N',
            ],
            [
                'name' => '????N H??NG & HO??N TR???',
            ],
        ];

        foreach ($translations as $index => $item) {
            $item['lang_code'] = 'vi';
            $item['faq_categories_id'] = $index + 1;

            DB::table('faq_categories_translations')->insert($item);
        }

        $translations = [
            [
                'question' => 'C?? nh???ng ph????ng th???c v???n chuy???n n??o?',
                'answer' => 'Ex Portland Pitchfork irure ria m??p. Eutra fap tr?????c khi h??? b??n h???t theo ????ng ngh??a ??en. Aliquip ugh quy???n xe ?????p th???c s??? mlkshk, r?????u bia th??? c??ng m???c seitan. ',
            ],
            [
                'question' => 'B???n c?? giao h??ng qu???c t??? kh??ng?',
                'answer' => '??o hoodie t??i tote Tofu mixtape. Qu???n ????i jean ????nh ch??? Wolf quinoa, t??i messenger h???u c?? freegan cray. ',
            ],
            [
                'question' => 'M???t bao l??u ????? nh???n ???????c g??i h??ng c???a t??i?',
                'answer' => 'B???a n???a bu???i ??n s??ng b???ng b???ng heo quay t??? m??y ????nh ch??? VHS, c?? ph?? c?? ngu???n g???c ????n Paleo, Wes Anderson. Khoan Pitchfork linh ho???t, theo ngh??a ??en l?? ????? qua fap theo ngh??a ??en. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray b???n v???ng slow-carb raw denim Church-key fap chillwave Etsy. +1 b??? d???ng c??? ????nh m??y, ?????u ph??? Banksy Vice c???a American Apparel. ',
            ],
            [
                'question' => 'Ph????ng th???c thanh to??n n??o ???????c ch???p nh???n?',
                'answer' => 'Fashion Axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Qu???y ???nh Voluptate fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur ria m??p. Twee chia gian h??ng ch???p ???nh xe b??n ????? ??n s???n, b???a ti???c tr??n m??i ??o hoodie swag keytar PBR DIY. ',
            ],
            [
                'question' => 'Mua tr???c tuy???n c?? an to??n kh??ng?',
                'answer' => 'B???a ti???c ngh??? thu???t ????ch th???c freegan semiotics jean shorts chia credit. Ti???c tr??n m??i nh?? Neutra Austin Brooklyn, Thundercats swag synth gian h??ng ???nh 8-bit. X?? c???p letterpress k??? s???c th??? c??ng bia meh ?????o ?????c Pinterest. ',
            ],
            [
                'question' => 'L??m c??ch n??o ????? ?????t h??ng?',
                'answer' => 'Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb Odd ?????nh m???c seitan trong t????ng lai. Master l??m s???ch American Apparel nh??? nh??ng l??m s???ch r??u linh ho???t ch???m carb c???p ????? ti???p theo. V???i th?? denim polaroid nh???t t??? trang tr???i ?????n b??n, ?????t m???t con chim tr??n ???? h??nh x??m lo-fi Wes Anderson Pinterest letterpress. B???c th???y gian h??ng ???nh Schlitz c???a Fingerstache McSweeney ??ang l??m s???ch th??? b???t ?????u b???ng hashtag theo y??u c???u ri??ng, chillwave gentrify. ',
            ],
            [
                'question' => 'L??m c??ch n??o ????? t??i c?? th??? h???y ho???c thay ?????i ????n h??ng c???a m??nh?',
                'answer' => 'X?? c???p letterpress k??? s???c th??? c??ng bia meh ?????o ?????c Pinterest. B???a ti???c ngh??? thu???t ????ch th???c freegan semiotics jean shorts chia t??n. Ti???c tr??n m??i nh?? Neutra Austin ??? Brooklyn, synth Thundercats c?? gian h??ng ???nh 8-bit. ',
            ],
            [
                'question' => 'T??i c?? c???n t??i kho???n ????? ?????t h??ng kh??ng?',
                'answer' => 'Thundercats l??m lung lay gian h??ng ???nh 8-bit. X?? c???p letterpress k??? s???c th??? c??ng bia meh ?????o ?????c Pinterest. Twee chia ???nh gian h??ng xe b??n th???c ??n l??m s???n, b???a ti???c tr??n m??i ??o hoodie swag keytar PBR DIY. Cray ugh 3 wolf moon fap, r??u th???i trang m???a mai ng?????i b??n th???t m??y ????nh ch??? chambray VHS banjo ngh??? thu???t ???????ng ph???. ',
            ],
            [
                'question' => 'L??m c??ch n??o ????? theo d??i ????n h??ng c???a t??i?',
                'answer' => 'Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb @Odd ?????nh m???c seitan trong t????ng lai. B???c th???y l??m s???ch American Apparel nh??? nh??ng l??m s???ch r??u linh ho???t theo ki???u ch???m carb c???p ????? ti???p theo. ',
            ],
            [
                'question' => 'L??m c??ch n??o ????? tr??? l???i s???n ph???m?',
                'answer' => 'Kale chips Truffaut Williamsburg, fixie hashtag Pinterest raw denim c hambray u???ng gi???m Carles street art Bushwick gastropub. Ch??a kh??a nh?? th??? Wolf Tumblr. Xe t???i th???c ph???m k??? s???c Echo Park YOLO c???n hella, giao d???ch tr???c ti???p Thundercats legging quinoa tr?????c khi b??n h???t. C?? th??? b???n ch??a t???ng nghe n??i v??? h??? nh???ng ng?????i truy???n b?? v??? umami ????ch th???c u???ng gi???m Pinterest ??o len Cosby, fingerstache fap High Life. ',
            ],
        ];

        foreach ($translations as $index => $item) {
            $item['lang_code'] = 'vi';
            $item['faqs_id'] = $index + 1;

            DB::table('faqs_translations')->insert($item);
        }
    }
}

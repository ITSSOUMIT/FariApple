<?php

namespace Database\Seeders;

use Botble\Base\Models\MetaBox as MetaBoxModel;
use Botble\Base\Supports\BaseSeeder;
use Botble\Ecommerce\Models\ProductCategory;
use Botble\Language\Models\LanguageMeta;
use Botble\Menu\Models\Menu as MenuModel;
use Botble\Menu\Models\MenuLocation;
use Botble\Menu\Models\MenuNode;
use Botble\Page\Models\Page;
use Illuminate\Support\Arr;
use Menu;

class MenuSeeder extends BaseSeeder
{
    public function run(): void
    {
        $data = [
            'en_US' => [
                [
                    'name' => 'Main menu',
                    'slug' => 'main-menu',
                    'location' => 'main-menu',
                    'items' => [
                        [
                            'title' => 'Home',
                            'url' => '/',
                        ],
                        [
                            'title' => 'Pages',
                            'url' => '#',
                            'children' => [
                                [
                                    'title' => 'About us',
                                    'reference_id' => 2,
                                    'reference_type' => Page::class,
                                ],
                                [
                                    'title' => 'Terms Of Use',
                                    'reference_id' => 3,
                                    'reference_type' => Page::class,
                                ],
                                [
                                    'title' => 'Terms & Conditions',
                                    'reference_id' => 4,
                                    'reference_type' => Page::class,
                                ],
                                [
                                    'title' => 'Refund Policy',
                                    'reference_id' => 5,
                                    'reference_type' => Page::class,
                                ],
                                [
                                    'title' => 'Coming soon',
                                    'reference_id' => 12,
                                    'reference_type' => Page::class,
                                ],
                            ],
                        ],
                        [
                            'title' => 'Shop',
                            'url' => '/products',
                            'children' => [
                                [
                                    'title' => 'All products',
                                    'url' => '/products',
                                ],
                                [
                                    'title' => 'Products Of Category',
                                    'reference_id' => 15,
                                    'reference_type' => ProductCategory::class,
                                ],
                                [
                                    'title' => 'Product Single',
                                    'url' => '/products/beat-headphone',
                                ],
                            ],
                        ],
                        [
                            'title' => 'Stores',
                            'url' => '/stores',
                        ],
                        [
                            'title' => 'Blog',
                            'reference_id' => 6,
                            'reference_type' => Page::class,
                        ],
                        [
                            'title' => 'FAQs',
                            'reference_id' => 7,
                            'reference_type' => Page::class,
                        ],
                        [
                            'title' => 'Contact',
                            'reference_id' => 8,
                            'reference_type' => Page::class,
                        ],
                    ],
                ],
                [
                    'name' => 'Quick links',
                    'slug' => 'quick-links',
                    'items' => [
                        [
                            'title' => 'Terms Of Use',
                            'reference_id' => 3,
                            'reference_type' => Page::class,
                        ],
                        [
                            'title' => 'Terms & Conditions',
                            'reference_id' => 4,
                            'reference_type' => Page::class,
                        ],
                        [
                            'title' => 'Refund Policy',
                            'reference_id' => 5,
                            'reference_type' => Page::class,
                        ],
                        [
                            'title' => 'FAQs',
                            'reference_id' => 7,
                            'reference_type' => Page::class,
                        ],
                        [
                            'title' => '404 Page',
                            'url' => '/nothing',
                        ],
                    ],
                ],
                [
                    'name' => 'Company',
                    'slug' => 'company',
                    'items' => [
                        [
                            'title' => 'About us',
                            'reference_id' => 2,
                            'reference_type' => Page::class,
                        ],
                        [
                            'title' => 'Affiliate',
                            'reference_id' => 10,
                            'reference_type' => Page::class,
                        ],
                        [
                            'title' => 'Career',
                            'reference_id' => 11,
                            'reference_type' => Page::class,
                        ],
                        [
                            'title' => 'Contact us',
                            'reference_id' => 8,
                            'reference_type' => Page::class,
                        ],
                    ],
                ],
                [
                    'name' => 'Business',
                    'slug' => 'business',
                    'items' => [
                        [
                            'title' => 'Our blog',
                            'reference_id' => 6,
                            'reference_type' => Page::class,
                        ],
                        [
                            'title' => 'Cart',
                            'url' => '/cart',
                        ],
                        [
                            'title' => 'My account',
                            'url' => '/customer/overview',
                        ],
                        [
                            'title' => 'Shop',
                            'url' => '/products',
                        ],
                    ],
                ],
            ],

            'vi' => [
                [
                    'name' => 'Menu ch??nh',
                    'slug' => 'menu-chinh',
                    'location' => 'main-menu',
                    'items' => [
                        [
                            'title' => 'Trang ch???',
                            'url' => '/',
                        ],
                        [
                            'title' => 'Trang',
                            'url' => '#',
                            'children' => [
                                [
                                    'title' => 'V??? ch??ng t??i',
                                    'reference_id' => 2,
                                    'reference_type' => Page::class,
                                ],
                                [
                                    'title' => '??i???u kho???n s??? d???ng',
                                    'reference_id' => 3,
                                    'reference_type' => Page::class,
                                ],
                                [
                                    'title' => '??i???u kho???n v?? quy ?????nh',
                                    'reference_id' => 4,
                                    'reference_type' => Page::class,
                                ],
                                [
                                    'title' => 'Ch??nh s??ch ho??n h??ng',
                                    'reference_id' => 5,
                                    'reference_type' => Page::class,
                                ],
                                [
                                    'title' => 'S???p ra m???t',
                                    'reference_id' => 12,
                                    'reference_type' => Page::class,
                                ],
                            ],
                        ],
                        [
                            'title' => 'S???n ph???m',
                            'url' => '/products',
                            'children' => [
                                [
                                    'title' => 'T???t c??? s???n ph???m',
                                    'url' => '/products',
                                ],
                                [
                                    'title' => 'Danh m???c s???n ph???m',
                                    'reference_id' => 15,
                                    'reference_type' => ProductCategory::class,
                                ],
                                [
                                    'title' => 'S???n ph???m chi ti???t',
                                    'url' => '/products/beat-headphone',
                                ],
                            ],
                        ],
                        [
                            'title' => 'C???a h??ng',
                            'url' => '/stores',
                        ],
                        [
                            'title' => 'Tin t???c',
                            'reference_id' => 6,
                            'reference_type' => Page::class,
                        ],
                        [
                            'title' => 'FAQs',
                            'reference_id' => 7,
                            'reference_type' => Page::class,
                        ],
                        [
                            'title' => 'Li??n h???',
                            'reference_id' => 8,
                            'reference_type' => Page::class,
                        ],
                    ],
                ],
                [
                    'name' => 'Li??n k???t nhanh',
                    'slug' => 'lien-ket-nhanh',
                    'items' => [
                        [
                            'title' => '??i???u kho???n s??? d???ng',
                            'reference_id' => 3,
                            'reference_type' => Page::class,
                        ],
                        [
                            'title' => '??i???u kho???n v?? quy ?????nh',
                            'reference_id' => 4,
                            'reference_type' => Page::class,
                        ],
                        [
                            'title' => 'Ch??nh s??ch ho??n h??ng',
                            'reference_id' => 5,
                            'reference_type' => Page::class,
                        ],
                        [
                            'title' => 'FAQs',
                            'reference_id' => 6,
                            'reference_type' => Page::class,
                        ],
                        [
                            'title' => '404 Page',
                            'url' => '/nothing',
                        ],
                    ],
                ],
                [
                    'name' => 'C??ng ty',
                    'slug' => 'cong-ty',
                    'items' => [
                        [
                            'title' => 'V??? ch??ng t??i',
                            'reference_id' => 2,
                            'reference_type' => Page::class,
                        ],
                        [
                            'title' => 'Ti???p th??? li??n k???t',
                            'reference_id' => 10,
                            'reference_type' => Page::class,
                        ],
                        [
                            'title' => 'Tuy???n d???ng',
                            'reference_id' => 11,
                            'reference_type' => Page::class,
                        ],
                        [
                            'title' => 'Li??n h???',
                            'reference_id' => 8,
                            'reference_type' => Page::class,
                        ],
                    ],
                ],
                [
                    'name' => 'Doanh nghi???p',
                    'slug' => 'doanh-nghiep',
                    'items' => [
                        [
                            'title' => 'Tin t???c',
                            'reference_id' => 6,
                            'reference_type' => Page::class,
                        ],
                        [
                            'title' => 'Gi??? h??ng',
                            'url' => '/cart',
                        ],
                        [
                            'title' => 'T??i kho???n',
                            'url' => '/customer/overview',
                        ],
                        [
                            'title' => 'S???n ph???m',
                            'url' => '/products',
                        ],
                    ],
                ],
            ],
        ];

        MenuModel::truncate();
        MenuLocation::truncate();
        MenuNode::truncate();
        MetaBoxModel::where('reference_type', MenuNode::class)->delete();
        LanguageMeta::where('reference_type', MenuModel::class)->delete();
        LanguageMeta::where('reference_type', MenuLocation::class)->delete();

        foreach ($data as $locale => $menus) {
            foreach ($menus as $index => $item) {
                $menu = MenuModel::create(Arr::except($item, ['items', 'location']));

                if (isset($item['location'])) {
                    $menuLocation = MenuLocation::create([
                        'menu_id' => $menu->id,
                        'location' => $item['location'],
                    ]);

                    $originValue = LanguageMeta::where([
                        'reference_id' => $locale == 'en_US' ? $menu->id : $menu->id + 3,
                        'reference_type' => MenuLocation::class,
                    ])->value('lang_meta_origin');

                    LanguageMeta::saveMetaData($menuLocation, $locale, $originValue);
                }

                foreach ($item['items'] as $menuNode) {
                    $this->createMenuNode($index, $menuNode, $locale, $menu->id);
                }

                $originValue = null;

                if ($locale !== 'en_US') {
                    $originValue = LanguageMeta::where([
                        'reference_id' => $index + 1,
                        'reference_type' => MenuModel::class,
                    ])->value('lang_meta_origin');
                }

                LanguageMeta::saveMetaData($menu, $locale, $originValue);
            }
        }

        Menu::clearCacheMenuItems();
    }

    /**
     * @param int $index
     * @param array $menuNode
     * @param string $locale
     * @param int $menuId
     * @param int $parentId
     */
    protected function createMenuNode(int $index, array $menuNode, string $locale, int $menuId, int $parentId = 0): void
    {
        $menuNode['menu_id'] = $menuId;
        $menuNode['parent_id'] = $parentId;

        if (isset($menuNode['url'])) {
            $menuNode['url'] = str_replace(url(''), '', $menuNode['url']);
        }

        if (Arr::has($menuNode, 'children')) {
            $children = $menuNode['children'];
            $menuNode['has_child'] = true;

            unset($menuNode['children']);
        } else {
            $children = [];
            $menuNode['has_child'] = false;
        }

        $createdNode = MenuNode::create($menuNode);

        if ($children) {
            foreach ($children as $child) {
                $this->createMenuNode($index, $child, $locale, $menuId, $createdNode->id);
            }
        }
    }
}

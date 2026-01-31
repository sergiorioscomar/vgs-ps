{**
 * Copyright since 2007 PrestaShop SA and Contributors
 * PrestaShop is an International Registered Trademark & Property of PrestaShop SA
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Academic Free License 3.0 (AFL-3.0)
 * that is bundled with this package in the file LICENSE.md.
 * It is also available through the world-wide-web at this URL:
 * https://opensource.org/licenses/AFL-3.0
 * If you did not receive a copy of the license and are unable to
 * obtain it through the world-wide-web, please send an email
 * to license@prestashop.com so we can send you a copy immediately.
 *
 * DISCLAIMER
 *
 * Do not edit or add to this file if you wish to upgrade PrestaShop to newer
 * versions in the future. If you wish to customize PrestaShop for your
 * needs please refer to https://devdocs.prestashop.com/ for more information.
 *
 * @author    PrestaShop SA and Contributors <contact@prestashop.com>
 * @copyright Since 2007 PrestaShop SA and Contributors
 * @license   https://opensource.org/licenses/AFL-3.0 Academic Free License 3.0 (AFL-3.0)
 *}
<div id="js-product-list-header">
    <div class="category-banner-fullwidth">
        <div class="category-banner-fullwidth__image" style="background-image: url('{if $category.image.large.url}{$category.image.large.url}{else}{$urls.img_url}c/{$category.id}.jpg{/if}');">
            <div class="category-banner-fullwidth__overlay"></div>
            <div class="container">
                <div class="category-banner-fullwidth__content">
                    <!--<h1 class="category-banner-fullwidth__title">
                        {$category.name}
                    </h1>-->
                </div>
            </div>
        </div>
        <div class="category-bar">
            <div class="container d-flex align-items-center">
                <img class="category-bar__icon" src="{$urls.base_url}img/cosmetica-icon.png" width="58" height="58" alt="{$category.name}">
                <h1 class="category-bar__title text-white text-uppercase mb-0">{$category.name}</h1>
            </div>
        </div>
    </div>
    {* Description only if needed, separate from title in banner mode *}
    {if $category.description && $listing.pagination.items_shown_from == 1}
        <div class="container">
            <div class="block-category">
                 <div id="category-description" class="cms-content">{$category.description nofilter}</div>
            </div>
        </div>
    {/if}
</div>

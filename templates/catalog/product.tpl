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
{extends file=$layout}

{block name='head' append}
  {if $product.show_price}
    <meta property="product:pretax_price:amount" content="{$product.price_tax_exc}">
    <meta property="product:pretax_price:currency" content="{$currency.iso_code}">
    <meta property="product:price:amount" content="{$product.price_amount}">
    <meta property="product:price:currency" content="{$currency.iso_code}">
  {/if}
  {if isset($product.weight) && ($product.weight != 0)}
  <meta property="product:weight:value" content="{$product.weight}">
  <meta property="product:weight:units" content="{$product.weight_unit}">
  {/if}
{/block}

{block name='head' prepend}
  {if $product.default_image}
    <link rel="preload" href="{$product.default_image.bySize.large_default.url}" as="image">
  {/if}
{/block}

{block name='content'}

  <section id="main" class="product-page">

    <div class="product-container js-product-container product-main">
      <div class="product-main__gallery">
        {block name='page_content_container'}
          {block name='page_content'}
            <div class="product-gallery-card">
              {include file='catalog/_partials/product-flags.tpl'}

              {block name='product_cover_thumbnails'}
                {include file='catalog/_partials/product-cover-thumbnails.tpl'}
              {/block}
            </div>
          {/block}
        {/block}
      </div>
      <div class="product-main__summary">
        <div class="product-summary">
          {block name='page_header_container'}
            {block name='page_header'}
              <h1 class="h1 product-summary__title">{block name='page_title'}{$product.name}{/block}</h1>
            {/block}
          {/block}

          {block name='product_description_short'}
            <div id="product-description-short-{$product.id}" class="product-summary__description product-description cms-content">{$product.description_short nofilter}</div>
          {/block}

          {if isset($product_manufacturer->id) || (isset($product.reference_to_display) && $product.reference_to_display neq '') || ($product.show_availability && $product.availability_message)}
            <div class="product-summary__meta">
              {if isset($product_manufacturer->id)}
                <div class="product-summary__meta-item">
                  <span class="product-summary__meta-label custom-meta-label">{l s='Brand' d='Shop.Theme.Catalog'}:</span>
                  <span class="product-summary__meta-value custom-meta-value">{$product_manufacturer->name}</span>
                </div>
              {/if}
              {if isset($product.reference_to_display) && $product.reference_to_display neq ''}
                <div class="product-summary__meta-item">
                  <span class="product-summary__meta-label custom-meta-label">{l s='Reference' d='Shop.Theme.Catalog'}:</span>
                  <span class="product-summary__meta-value custom-meta-value">{$product.reference_to_display}</span>
                </div>
              {/if}
              {if $product.show_availability && $product.availability_message}
                <div class="product-summary__meta-item">
                  <span class="product-summary__meta-label custom-meta-label">{l s='Disponibilidad' d='Shop.Theme.Catalog'}:</span>
                  <span class="product-summary__meta-value">
                    <span
                      class="custom-meta-value {if $product.availability == 'available'}available{elseif $product.availability == 'last_remaining_items'}last-items{else}out-of-stock{/if}"
                    >
                      {if $product.availability == 'available'}
                        <i class="material-icons rtl-no-flip font-reset align-bottom" style="color: #545454;">&#xE5CA;</i>
                      {elseif $product.availability == 'last_remaining_items'}
                        <i class="material-icons font-reset align-bottom" style="color: #545454;">&#xE002;</i>
                      {else}
                        <i class="material-icons font-reset align-bottom" style="color: #545454;">&#xE14B;</i>
                      {/if}
                      {$product.availability_message}
                    </span>
                  </span>
                </div>
              {/if}
            </div>
          {/if}

          {block name='product_prices'}
            {include file='catalog/_partials/product-prices.tpl'}
          {/block}

          <div class="product-information">
            {if $product.is_customizable && count($product.customizations.fields)}
              {block name='product_customization'}
                {include file="catalog/_partials/product-customization.tpl" customizations=$product.customizations}
              {/block}
            {/if}

            <div class="product-actions js-product-actions">
              {block name='product_buy'}
                <form action="{$urls.pages.cart}" method="post" id="add-to-cart-or-refresh">
                  <input type="hidden" name="token" value="{$static_token}">
                  <input type="hidden" name="id_product" value="{$product.id}" id="product_page_product_id">
                  <input type="hidden" name="id_customization" value="{$product.id_customization}" id="product_customization_id" class="js-product-customization-id">

                  {block name='product_variants'}
                    {include file='catalog/_partials/product-variants.tpl'}
                  {/block}

                  {block name='product_pack'}
                    {if $packItems}
                      <section class="product-pack">
                        <p class="h4">{l s='This pack contains' d='Shop.Theme.Catalog'}</p>
                        <div class="card-group-vertical mb-4">
                          {foreach from=$packItems item="product_pack"}
                            {block name='product_miniature'}
                              {include file='catalog/_partials/miniatures/pack-product.tpl' product=$product_pack showPackProductsPrice=$product.show_price}
                            {/block}
                          {/foreach}
                        </div>
                      </section>
                    {/if}
                  {/block}

                  {block name='product_discounts'}
                    {include file='catalog/_partials/product-discounts.tpl'}
                  {/block}

                  {block name='product_add_to_cart'}
                    {include file='catalog/_partials/product-add-to-cart.tpl'}
                  {/block}

                  {block name='product_additional_info'}
                    {include file='catalog/_partials/product-additional-info.tpl'}
                  {/block}

                  {* Input to refresh product HTML removed, block kept for compatibility with themes *}
                  {block name='product_refresh'}{/block}
                </form>
              {/block}

            </div>


            {block name='hook_display_reassurance'}
              {capture name='reassurance_content'}{hook h='displayReassurance'}{/capture}
              {if $smarty.capture.reassurance_content|trim}
                <div class="product-reassurance-custom">
                  {$smarty.capture.reassurance_content nofilter}
                </div>
              {/if}
            {/block}

            {if $product.grouped_features}
              <div class="product-specs-custom table-responsive">
                <table class="table table-sm mb-0">
                  <tbody>
                    {assign var='counter' value=0}
                    {foreach from=$product.grouped_features item=feature}
                      {if $counter % 2 == 0}<tr>{/if}
                        <td class="label">{$feature.name}</td>
                        <td class="value">{$feature.value|escape:'htmlall'|nl2br nofilter}</td>
                      {assign var='counter' value=$counter+1}
                      {if $counter % 2 == 0}</tr>{/if}
                    {/foreach}
                    {if $counter % 2 != 0}
                        <td class="label"></td><td class="value"></td>
                      </tr>
                    {/if}
                  </tbody>
                </table>
              </div>
            {/if}
          </div>
        </div>
      </div>
    </div>
    {include file="catalog/_partials/product-tabs.tpl"}

    {block name='product_footer'}
      {hook h='displayFooterProduct' product=$product category=$category}
    {/block}

    {block name='product_accessories'}
      {if $accessories}
        {include file='catalog/_partials/product-accessories.tpl' products=$accessories}
      {/if}
    {/block}

    {block name='product_images_modal'}
      {include file='catalog/_partials/product-images-modal.tpl'}
    {/block}

    {block name='page_footer_container'}
      <footer class="page-footer">
        {block name='page_footer'}
          <!-- Footer content -->
        {/block}
      </footer>
    {/block}
  </section>

{/block}

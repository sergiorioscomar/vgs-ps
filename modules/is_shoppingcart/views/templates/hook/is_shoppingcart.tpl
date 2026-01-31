{**
 * 2007-2020 PrestaShop and Contributors
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Academic Free License 3.0 (AFL-3.0)
 * that is bundled with this package in the file LICENSE.txt.
 * It is also available through the world-wide-web at this URL:
 * https://opensource.org/licenses/AFL-3.0
 * If you did not receive a copy of the license and are unable to
 * obtain it through the world-wide-web, please send an email
 * to license@prestashop.com so we can send you a copy immediately.
 *
 * @author    PrestaShop SA <contact@prestashop.com>
 * @copyright 2007-2020 PrestaShop SA and Contributors
 * @license   https://opensource.org/licenses/AFL-3.0 Academic Free License 3.0 (AFL-3.0)
 * International Registered Trademark & Property of PrestaShop SA
 *}
<div class="header-top__block header-top__block--cart col flex-grow-0">
  <div class="js-blockcart blockcart cart-preview dropdown" data-refresh-url="{$refresh_url}">
    <a href="#" role="button" id="cartDropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"
      class="header-top__link d-lg-block d-none">
      <div class="header-top__icon-container">
        {* Custom SVG Icon *}
        <svg xmlns="http://www.w3.org/2000/svg" width="15" height="21" viewBox="0 0 21.03 28" class="header-top__icon">
          <path d="M15.6,6.28v-1.39C15.6,2.36,13.44,.18,10.78,0c-1.36-.08-2.67,.38-3.68,1.3-.99,.91-1.59,2.16-1.67,3.58v1.39H0V28H21.03V6.28h-5.43Zm-8.49-1.34c.06-.93,.46-1.78,1.13-2.4,.67-.61,1.53-.92,2.45-.86,1.8,.11,3.26,1.55,3.26,3.2v1.39H7.12v-1.34h-.01Zm12.25,21.4H1.67V7.95h3.76v3.9h1.67v-3.9h6.82v3.9h1.67v-3.9h3.76V26.33h0Z" style="fill:#7951D9;"></path>
        </svg>
        <span class="header-top__badge {if $cart.products_count > 9}header-top__badge--smaller{/if}">
          {$cart.products_count}
        </span>
      </div>
    </a>
    <a href="{$cart_url}" class="d-flex d-lg-none header-top__link">
      <div class="header-top__icon-container">
        {* Custom SVG Icon *}
        <svg xmlns="http://www.w3.org/2000/svg" width="15" height="21" viewBox="0 0 21.03 28" class="header-top__icon">
          <path d="M15.6,6.28v-1.39C15.6,2.36,13.44,.18,10.78,0c-1.36-.08-2.67,.38-3.68,1.3-.99,.91-1.59,2.16-1.67,3.58v1.39H0V28H21.03V6.28h-5.43Zm-8.49-1.34c.06-.93,.46-1.78,1.13-2.4,.67-.61,1.53-.92,2.45-.86,1.8,.11,3.26,1.55,3.26,3.2v1.39H7.12v-1.34h-.01Zm12.25,21.4H1.67V7.95h3.76v3.9h1.67v-3.9h6.82v3.9h1.67v-3.9h3.76V26.33h0Z" style="fill:#7951D9;"></path>
        </svg>
        <span class="header-top__badge {if $cart.products_count > 9}header-top__badge--smaller{/if}">
          {$cart.products_count}
        </span>
      </div>
    </a>
    <div class="dropdown-menu blockcart__dropdown cart-dropdown dropdown-menu-right" aria-labelledby="cartDropdown">
      <div class="cart-dropdown__content keep-open js-cart__card-body cart__card-body">
        <div class="cart-loader">
          <div class="spinner-border text-primary" role="status"><span
              class="sr-only">{l s='Loading...' d='Shop.Theme.Global'}</span></div>
        </div>
        <div class="cart-dropdown__title d-flex align-items-center mb-3">
          <p class="h5 mb-0 mr-2">
            {l s='Your cart' d='Modules.Isshoppingcart.Isshoppingcart'}
          </p>
          <a data-toggle="dropdown" href="#" class="cart-dropdown__close dropdown-close ml-auto cursor-pointer text-decoration-none">
            <i class="material-icons d-block">close</i>
          </a>
        </div>
        {if $cart.products_count > 0}
          <div class="cart-dropdown__products pt-3 mb-3">
            {foreach from=$cart.products item=product}
              {include 'module:is_shoppingcart/views/templates/front/is_shoppingcart-product-line.tpl' product=$product}
            {/foreach}
          </div>

          <div class="cart-summary-line cart-total">
            <span class="label">{$cart.totals.total.label}</span>
            <span class="value">{$cart.totals.total.value}</span>
          </div>

          <div class="mt-3">
            <a href="{$cart_url}" class="btn btn-sm btn-primary btn-block dropdown-close">
              {l s='Proceed to checkout' d='Shop.Theme.Actions'}
            </a>
          </div>

        {else}
          <div class="alert alert-warning">
            {l s='Unfortunately your basket is empty' d='Modules.Isshoppingcart.Isshoppingcart'}
          </div>
        {/if}
      </div>
    </div>
  </div>
</div>

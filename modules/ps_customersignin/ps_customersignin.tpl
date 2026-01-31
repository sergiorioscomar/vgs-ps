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
<div class="col flex-grow-0 header-top__block header-top__block--user">
  <a
    class="header-top__link"
    rel="nofollow"
    href="{$urls.pages.authentication}?back={$urls.current_url|urlencode}"
    {if $logged}
      title="{l s='View my customer account' d='Shop.Theme.Customeraccount'}"
    {else}
      title="{l s='Log in to your customer account' d='Shop.Theme.Customeraccount'}"
    {/if}
  >
    <div class="header-top__icon-container">
      {* Custom SVG User Icon *}
      <svg xmlns="http://www.w3.org/2000/svg" width="17" height="18" viewBox="0 0 23.21 25" class="header-top__icon">
        <g>
          <path d="M23.21,25h-1.79v-3.19c0-3.02-2-5.48-4.46-5.48H6.25c-2.46,0-4.46,2.46-4.46,5.48v3.19H0v-3.19c0-4.01,2.81-7.27,6.25-7.27h10.71c3.44,0,6.25,3.27,6.25,7.27v3.19Z" style="fill:#328189;"></path>
          <path d="M11.61,12.5c-3.51,0-6.25-2.74-6.25-6.25S8.1,0,11.61,0s6.25,2.81,6.25,6.25-2.81,6.25-6.25,6.25Zm0-10.71c-2.5,0-4.46,1.96-4.46,4.46s1.96,4.46,4.46,4.46,4.46-2.04,4.46-4.46S14.03,1.79,11.61,1.79Z" style="fill:#328189;"></path>
        </g>
      </svg>
    </div>
  </a>
</div>

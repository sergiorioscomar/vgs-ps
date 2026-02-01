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
{block name='header_banner'}
    <div class="top-banner">
        <div class="container">
            <div class="top-banner__content">
                <div class="top-banner__left">
                    <p class="top-banner__text">{l s='Lun-Vie 9:00h - 19:00h | 976 123 456' d='Shop.Theme.Global'}</p>
                </div>
                <div class="top-banner__right">
                    <p class="top-banner__text top-banner__text--highlight">{l s='Envios gratuitos por compras superiores a 50€' d='Shop.Theme.Global'}</p>
                </div>
            </div>
        </div>
    </div>
{/block}

{block name='header_top'}
    <div class="js-header-top-wrapper">
        <div class="header-top js-header-top">
            <div class="header-top__content">
                <div class="container">
                    <div class="row align-items-center header-top__row">
                        
                        {* Mobile Menu Toggle *}
                        <div class="col-auto d-lg-none">
                            <a class="header-top__link" rel="nofollow" href="#" data-toggle="modal" data-target="#mobile_top_menu_wrapper">
                                <span class="material-icons">menu</span>
                            </a>
                        </div>

                        {* Logo *}
                        <div class="col-lg-2 col-md-3 col-4">
                            <a href="{$urls.pages.index}">
                                {images_block webpEnabled=$webpEnabled}
                                    <img
                                        {if !empty($shop.logo_details)}
                                            src="{$shop.logo_details.src}"
                                            width="{$shop.logo_details.width}"
                                            height="{$shop.logo_details.height}"
                                        {else}
                                            src="{$shop.logo}" 
                                        {/if}
                                         class="logo img-fluid"
                                         alt="{$shop.name} {l s='logo' d='Shop.Theme.Global'}"> 
                                {/images_block}
                            </a>
                        </div>

                        {* Search Bar + User Icons *}
                        <div class="col-lg-10 col-md-9 col d-none d-lg-flex align-items-center">
                            <div class="search-container flex-grow-1">
                                <div class="header-top__modules row align-items-center no-gutters w-100">
                                    {hook h='displayTop'}
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
{/block}

{block name='header_nav'}
    <nav class="header-nav">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-auto">
                    {* Menu Hamburguesa visible en desktop y mobile *}
                    <a class="header-nav__hamburger" rel="nofollow" href="#" data-toggle="modal" data-target="#mobile_top_menu_wrapper">
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="20" viewBox="0 0 24 20">
                            <line x1="1.9" y1="2.07" x2="22.31" y2="2.07" style="fill:none; stroke:#FFFFFF; stroke-linecap:round; stroke-linejoin:round; stroke-width:2.64px;"></line>
                            <line x1="1.9" y1="10" x2="22.31" y2="10" style="fill:none; stroke:#FFFFFF; stroke-linecap:round; stroke-linejoin:round; stroke-width:2.64px;"></line>
                            <line x1="1.69" y1="17.93" x2="22.1" y2="17.93" style="fill:none; stroke:#FFFFFF; stroke-linecap:round; stroke-linejoin:round; stroke-width:2.64px;"></line>
                        </svg>
                        <span class="header-nav__hamburger-text">CATEGORÍAS</span>
                    </a>
                </div>
                <div class="col-auto">
                    {* Enlace personalizado *}
                    <a class="header-nav__custom-link" href="/es/productos-rebajados">
                        PROMOCIONES
                    </a>
                </div>
            </div>
        </div>
    </nav>
{/block}
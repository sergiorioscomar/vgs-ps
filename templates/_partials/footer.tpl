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

{* Footer hooks - Comentado para usar versión hardcodeada
<div class="container">
  <div class="row">
    {block name='hook_footer_before'}
      {hook h='displayFooterBefore'}
    {/block}
  </div>
</div>
<div class="footer-container">
  <div class="container">
    <div class="row">
      {block name='hook_footer'}
        {hook h='displayFooter'}
      {/block}
    </div>
    <div class="row">
      {block name='hook_footer_after'}
        {hook h='displayFooterAfter'}
      {/block}
    </div>
  </div>
</div>
End Footer hooks *}

{* Versión hardcodeada del footer *}
<div class="footer-container">
  <div class="container">
   <div class="row" id="footer">
      {* Columna 1: Información de Contacto - Más amplia *}
      <div class="col-lg-5 col-md-6">
        <div class="footer-contact">
          <div class="contact-item mb-3">
            <p></p>
            <p></p> <!-- Espacio para logo si se desea -->
          </div>
          <div class="contact-item mb-3">
            <svg width="21" height="21" viewBox="0 0 21 21" fill="none" xmlns="http://www.w3.org/2000/svg">
              <path d="M0.75 5.25C0.75 13.534 7.466 20.25 15.75 20.25H18C18.5967 20.25 19.169 20.0129 19.591 19.591C20.0129 19.169 20.25 18.5967 20.25 18V16.628C20.25 16.112 19.899 15.662 19.398 15.537L14.975 14.431C14.535 14.321 14.073 14.486 13.802 14.848L12.832 16.141C12.55 16.517 12.063 16.683 11.622 16.521C9.98488 15.9191 8.49815 14.9686 7.26478 13.7352C6.03141 12.5018 5.08087 11.0151 4.479 9.378C4.317 8.937 4.483 8.45 4.859 8.168L6.152 7.198C6.515 6.927 6.679 6.464 6.569 6.025L5.463 1.602C5.40214 1.35869 5.26172 1.1427 5.06405 0.988337C4.86638 0.833971 4.6228 0.750083 4.372 0.75H3C2.40326 0.75 1.83097 0.987053 1.40901 1.40901C0.987053 1.83097 0.75 2.40326 0.75 3V5.25Z" stroke="white" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
            </svg>
            <a href="tel:+34976123456">+34 976 123 456</a>
          </div>
          <div class="contact-item mb-3">
            <svg width="21" height="19" viewBox="0 0 21 19" fill="none" xmlns="http://www.w3.org/2000/svg">
              <path d="M20.25 6.31642V7.0989C20.25 7.44976 20.14 7.79407 19.9318 8.09531C19.7235 8.39654 19.4247 8.64345 19.067 8.80983L12.589 11.8223M0.75 6.31642V7.0989C0.749984 7.44976 0.859953 7.79407 1.06824 8.09531C1.27652 8.39654 1.57534 8.64345 1.933 8.80983L8.411 11.8223M8.411 11.8223L9.433 11.3473C9.76091 11.1947 10.1275 11.1149 10.5 11.1149C10.8725 11.1149 11.2391 11.1947 11.567 11.3473L12.59 11.8223L17.25 13.9901M8.411 11.8223L3.75 13.9901M20.25 15.3849C20.25 15.9003 20.0129 16.3946 19.591 16.759C19.169 17.1235 18.5967 17.3282 18 17.3282H3C2.40326 17.3282 1.83097 17.1235 1.40901 16.759C0.987053 16.3946 0.75 15.9003 0.75 15.3849V6.18169C0.749984 5.83083 0.859953 5.48652 1.06824 5.18529C1.27652 4.88405 1.57534 4.63714 1.933 4.47076L9.433 0.982403C9.76091 0.829856 10.1275 0.75 10.5 0.75C10.8725 0.75 11.2391 0.829856 11.567 0.982403L19.067 4.47076C19.4245 4.63707 19.7232 4.88385 19.9315 5.18491C20.1398 5.48598 20.2498 5.83012 20.25 6.18082V15.3849Z" stroke="white" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
            </svg>
            <a href="mailto:info@dominio.com">info@dominio.com</a>
          </div>
          <div class="contact-item">
            <svg width="17" height="18" viewBox="0 0 17 18" fill="none" xmlns="http://www.w3.org/2000/svg">
              <path d="M15.75 7.22751C15.75 13.3958 8.25 16.9438 8.25 16.9438C8.25 16.9438 0.75 13.3958 0.75 7.22751C0.75 5.50957 1.54018 3.86199 2.9467 2.64722C4.35322 1.43245 6.26088 0.75 8.25 0.75C10.2391 0.75 12.1468 1.43245 13.5533 2.64722C14.9598 3.86199 15.75 5.50957 15.75 7.22751Z" stroke="white" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
            </svg>
            <span>C/ Calle del cliente nº 45<br>50011, Zaragoza</span>
          </div>
          <div class="contact-item mb-3">
            <p></p> <!-- Espacio para redes sociales si se desea -->
            <p></p>
            <p></p>
          </div>
        </div>
      </div>

      {* Columna 2: MI CUENTA *}
      <div class="col-lg col-md-6">
        <h4 class="footer-title">MI CUENTA</h4>
        <ul class="footer-links list-unstyled">
          <li><a href="{$urls.pages.authentication}">Iniciar sesión</a></li>
          <li><a href="{$urls.pages.my_account}">Mi cuenta</a></li>
        </ul>
      </div>

      {* Columna 3: INFORMACIÓN *}
      <div class="col-lg col-md-6">
        <h4 class="footer-title">INFORMACIÓN</h4>
        <ul class="footer-links list-unstyled">
          <li><a href="{$urls.pages.contact}">Contacto</a></li>
          <li><a href="{$link->getCMSLink(1)}">Sobre nosotros</a></li>
        </ul>
      </div>

      {* Columna 4: LEGAL *}
      <div class="col-lg col-md-6">
        <h4 class="footer-title">LEGAL</h4>
        <ul class="footer-links list-unstyled">
          <li><a href="{$link->getCMSLink(2)}">Aviso legal</a></li>
          <li><a href="{$link->getCMSLink(3)}">Condiciones de venta</a></li>
          <li><a href="{$link->getCMSLink(4)}">Política de privacidad</a></li>
          <li><a href="{$link->getCMSLink(5)}">Política de cookies</a></li>
        </ul>
      </div>
    </div>
  </div>
</div>
<div class="footer-copyright">
  <div class="container">
    <div class="row">
      <div class="col-md-12 text-center">
        <p class="mb-0">Todos los derechos reservados - Desarrollado por VGS</p>
      </div>
    </div>
  </div>
</div>


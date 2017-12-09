{*
* 2007-2017 PrestaShop
*
* NOTICE OF LICENSE
*
* This source file is subject to the Academic Free License (AFL 3.0)
* that is bundled with this package in the file LICENSE.txt.
* It is also available through the world-wide-web at this URL:
* http://opensource.org/licenses/afl-3.0.php
* If you did not receive a copy of the license and are unable to
* obtain it through the world-wide-web, please send an email
* to license@prestashop.com so we can send you a copy immediately.
*
* DISCLAIMER
*
* Do not edit or add to this file if you wish to upgrade PrestaShop to newer
* versions in the future. If you wish to customize PrestaShop for your
* needs please refer to http://www.prestashop.com for more information.
*
*  @author PrestaShop SA <contact@prestashop.com>
*  @copyright  2007-2017 PrestaShop SA

*  @license    http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*}

<!-- MODULE Block contact infos -->
<section id="block_contact_infos" class="footer-block col-xs-12 col-sm-4">
	<div>
        <h4>{l s='Store Information' mod='blockcontactinfos'}</h4>
        <ul class="toggle-footer">
            {if $blockcontactinfos_company != ''}
            	<li>
            		<i class="icon-map-marker"></i>{$blockcontactinfos_company|escape:'html':'UTF-8'}{if $blockcontactinfos_address != ''}, {$blockcontactinfos_address|escape:'html':'UTF-8'}{/if}
            	</li>
            {/if}
            {if $blockcontactinfos_phone != ''}
            	<li>
            		<i class="icon-phone"></i>{l s='Call us now:' mod='blockcontactinfos'} 
            		<span>{$blockcontactinfos_phone|escape:'html':'UTF-8'}</span>
            	</li>
            {/if}
            {if $blockcontactinfos_email != ''}
            	<li>
            		<i class="icon-envelope-alt"></i>{l s='Email:' mod='blockcontactinfos'} 
            		<span>{mailto address=$blockcontactinfos_email|escape:'html':'UTF-8' encode="hex"}</span>
            	</li>
            {/if}
                <li>
                    <a href="http://qr.afip.gob.ar/?qr=z7JppuZzUTVA8PGEhnazew,," target="_F960AFIPInfo">
                        <img src="https://www.afip.gob.ar/images/f960/DATAWEB.jpg" border="0" style="width: 45px;">
                    </a>
                    <a href="https://ssl.comodo.com" target="_blank">
                        <img src="https://ssl.comodo.com/images/comodo_secure_seal_76x26_transp.png" alt="SSL" width="76" height="26" style="border: 0px;">
                    </a>
                    <a href="https://www.mercadopago.com.ar/ayuda/dinero-seguridad-compras_283" target="_blank">
                        <div style="    background-position: 0 -128px;
    height: 60px;
    width: 130px;
        background-image: url(https://http2.mlstatic.com/secure/salesforce-resources/resourcesMpPortal//images/security-standards.1.1__vca9022531ea.png);
    background-repeat: no-repeat;
    display: inline-block;
    margin: 2px;
    overflow: hidden;
    text-indent: 100%;
    vertical-align: middle;
    white-space: nowrap;
    ">PCI</div>
                    </a>
                </li>
        </ul>
    </div>
</section>
<!-- /MODULE Block contact infos -->

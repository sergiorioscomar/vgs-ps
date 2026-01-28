{block name='product_price_and_shipping'}
  {if $product.show_price}
    <div class="product-miniature__pricing">
      {hook h='displayProductPriceBlock' product=$product type="before_price"}

      {* Precio actual siempre primero *}
      <span class="price" aria-label="{l s='Price' d='Shop.Theme.Catalog'}">{$product.price}</span>

      {* Si hay descuento, mostrar precio anterior tachado y badge de descuento *}
      {if $product.has_discount}
        {hook h='displayProductPriceBlock' product=$product type="old_price"}
        <span class="price price--regular" aria-label="{l s='Regular price' d='Shop.Theme.Catalog'}">{$product.regular_price}</span>
        {if $product.discount_type === 'percentage' && $product.discount_percentage_absolute}
          <span class="discount-percentage">-{$product.discount_percentage_absolute}</span>
        {elseif $product.discount_percentage}
          <span class="discount-percentage">{$product.discount_percentage}</span>
        {elseif $product.discount_percentage_absolute}
          <span class="discount-percentage">{$product.discount_percentage_absolute}</span>
        {/if}
      {/if}

      {hook h='displayProductPriceBlock' product=$product type='unit_price'}

      {hook h='displayProductPriceBlock' product=$product type='weight'}
    </div>
  {/if}
{/block}

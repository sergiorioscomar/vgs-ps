{block name='product_tabs'}
  <div class="product-tabs product-info-section">
    <h3 class="h3 product-info-title">Información del producto</h3>
    
    {if $product.description}
      {block name='product_description'}
        {cms_images_block webpEnabled=$webpEnabled}
          <div class="product-description cms-content">{$product.description nofilter}</div>
        {/cms_images_block}
      {/block}
    {/if}

    {block name='product_details'}
      {include file='catalog/_partials/product-details.tpl'}
    {/block}

    {block name='product_attachments'}
      {if $product.attachments}
        <section class="product-attachments mt-4">
          <p class="h5 text-uppercase">{l s='Download' d='Shop.Theme.Actions'}</p>
          {foreach from=$product.attachments item=attachment}
            <div class="attachment">
              <h4><a href="{url entity='attachment' params=['id_attachment' => $attachment.id_attachment]}">{$attachment.name}</a></h4>
              <p>{$attachment.description}</p>
              <a href="{url entity='attachment' params=['id_attachment' => $attachment.id_attachment]}">
                {l s='Download' d='Shop.Theme.Actions'} ({$attachment.file_size_formatted})
              </a>
            </div>
          {/foreach}
        </section>
      {/if}
    {/block}

    {foreach from=$product.extraContent item=extra key=extraKey}
      <div class="product-extra-content mt-4 {$extra.attr.class}" {foreach $extra.attr as $key => $val} {$key}="{$val}"{/foreach}>
        {$extra.content nofilter}
      </div>
    {/foreach}
  </div>
{/block}

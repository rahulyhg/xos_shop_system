[@{*
********************************************************************************
* project    : XOS-Shop, open source e-commerce system
*              http://www.xos-shop.com
*
* template   : black-tabs-cbox
* version    : 1.0.7 for XOS-Shop version 1.0 rc7s
* descrip    : xos-shop default template with tabs navigation
*              and popup windows as lightboxes and div/css layout                                                                     
* filename   : product_reviews_write.tpl
* author     : Hanspeter Zeller <hpz@xos-shop.com>
* copyright  : Copyright (c) 2007 Hanspeter Zeller
* license    : This file is part of XOS-Shop.
*
*              XOS-Shop is free software: you can redistribute it and/or modify
*              it under the terms of the GNU General Public License as published
*              by the Free Software Foundation, either version 3 of the License,
*              or (at your option) any later version.
*
*              XOS-Shop is distributed in the hope that it will be useful,
*              but WITHOUT ANY WARRANTY; without even the implied warranty of
*              MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
*              GNU General Public License for more details.
*
*              You should have received a copy of the GNU General Public License
*              along with XOS-Shop.  If not, see <http://www.gnu.org/licenses/>. 
********************************************************************************
*}@]

<!-- product_reviews_write -->
          [@{$form_begin}@] 
          <div class="page-heading" style="line-height: [@{#page_heading_height#}@]px;">[@{$products_name}@]</div>           
          <div style="float: left;">                 
            [@{if $products_model}@]<div class="main"><b>[@{#text_model#}@]</b>&nbsp;&nbsp;[@{$products_model}@]</div>[@{/if}@]
            [@{if $products_p_unit}@]<div class="main"><b>[@{#text_packing_unit#}@]</b>&nbsp;&nbsp;[@{$products_p_unit}@]</div>[@{/if}@]                                                                             
          </div>                                                               
          <div style="text-align: right; float: right;">                                     
            <table border="0" cellspacing="0" cellpadding="0"> 
              <tr>
                <td align="right">                                                                   
                  [@{if $products_price_breaks}@]                 
                  <div class="price-label main" style="padding: 2px 2px 0 2px; text-align: right; white-space: nowrap;"><b>[@{if $products_price_special}@]<span class="text-deco-line-through">[@{$products_price}@]</span> <span class="product-special-price">[@{$products_price_special}@]</span>[@{else}@][@{$products_price}@][@{/if}@]</b></div>
                  <div class="price-label main" style="padding: 0 2px 0 2px;">
                    <table border="0" class="price-label" cellspacing="0" cellpadding="0">                     
                      [@{foreach name=price_breaks item=product_price_break from=$products_price_breaks}@]                        
                      [@{if $smarty.foreach.price_breaks.first}@]
                      <tr>                       
                        <td colspan="2" nowrap="nowrap" class="main" align="center" valign="bottom"><img src="[@{$images_path}@]pixel_trans.gif" alt="" width="100%" height="4" /><br />[@{#text_price_breaks#}@]<br /><img src="[@{$images_path}@]pixel_black.gif" alt="" width="100%" height="1" /></td>
                      </tr>                      
                      <tr>
                        <td nowrap="nowrap" class="main" align="right" valign="top">[@{#text_quantity_in_price_breaks#}@]&nbsp;&nbsp;</td>
                        <td nowrap="nowrap" class="main" align="center" valign="top">[@{#text_price_in_price_breaks#}@]</td>
                      </tr>                                                                   
                      [@{/if}@]                                
                      <tr>   
                        <td nowrap="nowrap" class="main" align="right" valign="top">[@{$product_price_break.qty}@]<sup>+</sup>&nbsp;&nbsp;&nbsp;</td>                
                        <td nowrap="nowrap" class="main" align="right" valign="top"><b>[@{if $product_price_break.price_break_special}@]<span class="text-deco-line-through">[@{$product_price_break.price_break}@]</span> <span class="product-special-price">[@{$product_price_break.price_break_special}@]</span>[@{else}@][@{$product_price_break.price_break}@][@{/if}@]</b></td>
                      </tr>                                                 
                      [@{/foreach}@] 
                    </table>                 
                  </div>
                  <div class="price-label small-text" style="padding: 2px; text-align: right; white-space: nowrap;">                         
                    [@{$products_tax_description|replace:'SMARTY_TAX_WITHOUT_VAT':#text_tax_without_vat#|replace:'SMARTY_TAX_NO_VAT':#text_tax_no_vat#|replace:'SMARTY_TAX_INC_VAT':#text_tax_inc_vat#|replace:'SMARTY_TAX_PLUS_VAT':#text_tax_plus_vat#}@]<br />                                                                                     
                    [@{if $link_filename_popup_content_5}@]                 
                    <script type="text/javascript">
                    /* <![CDATA[ */
                      document.write('[@{#text_plus#}@]&nbsp;<a href="[@{$link_filename_popup_content_5}@]" class="lightbox-system-popup" target="_blank"><span class="text-deco-underline">[@{#text_shipping#}@]</span></a><br />');
                    /* ]]> */   
                    </script>
                    <noscript>
                      [@{#text_plus#}@]&nbsp;<a href="[@{$link_filename_popup_content_5}@]" target="_blank"><span class="text-deco-underline">[@{#text_shipping#}@]</span></a><br />
                    </noscript>
                    [@{else}@]
                      [@{#text_plus#}@]&nbsp;[@{#text_shipping#}@]<br />
                    [@{/if}@]
                  </div>                                                      
                  [@{else}@]
                  <div class="price-label main" style="padding: 2px 2px 0 2px; text-align: right; white-space: nowrap;"><b>[@{if $products_price_special}@]<span class="text-deco-line-through">[@{$products_price}@]</span> <span class="product-special-price">[@{$products_price_special}@]</span>[@{else}@][@{$products_price}@][@{/if}@]</b></div>
                  <div class="price-label small-text" style="padding: 2px; text-align: right; white-space: nowrap;">
                    [@{$products_tax_description|replace:'SMARTY_TAX_WITHOUT_VAT':#text_tax_without_vat#|replace:'SMARTY_TAX_NO_VAT':#text_tax_no_vat#|replace:'SMARTY_TAX_INC_VAT':#text_tax_inc_vat#|replace:'SMARTY_TAX_PLUS_VAT':#text_tax_plus_vat#}@]<br />              
                    [@{if $link_filename_popup_content_5}@]                 
                    <script type="text/javascript">
                    /* <![CDATA[ */
                      document.write('[@{#text_plus#}@]&nbsp;<a href="[@{$link_filename_popup_content_5}@]" class="lightbox-system-popup" target="_blank"><span class="text-deco-underline">[@{#text_shipping#}@]</span></a><br />');
                    /* ]]> */   
                    </script>
                    <noscript>
                      [@{#text_plus#}@]&nbsp;<a href="[@{$link_filename_popup_content_5}@]" target="_blank"><span class="text-deco-underline">[@{#text_shipping#}@]</span></a><br />
                    </noscript>
                    [@{else}@]
                      [@{#text_plus#}@]&nbsp;[@{#text_shipping#}@]<br />
                    [@{/if}@] 
                  </div>      
                  [@{/if}@]                  
                </td>
              </tr>
            </table>  
          </div> 
          <div class="clear">&nbsp;</div>
          <div style="height: 10px; font-size: 0;">&nbsp;</div>                        
          <div style="width: 450px; float: left;"> 
            [@{if $message_stack}@]          
            [@{$message_stack}@]               
            <div style="height: 10px; font-size: 0;">&nbsp;</div>             
            [@{/if}@]                                     
            <div class="main"><b>[@{#sub_title_from#}@]</b> [@{$customers_name}@]</div> 
            <div class="main"><b>[@{#sub_title_review#}@]</b></div>                                    
            <div class="info-box-central-contents">                             
              <div class="main" style="margin: 4px;">                      
                <div class="main">[@{$textarea_field}@]</div>
                <div class="small-text" style="text-align: right;"><small><span class="red-mark"><b>[@{#sub_title_no_html#}@]</b></span></small>&nbsp;[@{#text_no_html#}@]</div>
                <div class="main"><b>[@{#sub_title_rating#}@]</b> <small><span class="red-mark"><b>[@{#text_bad#}@]</b></span></small> [@{$radio_fields}@] <small><span class="red-mark"><b>[@{#text_good#}@]</b></span></small></div>                
              </div>             
            </div>            
            <div style="height: 10px; font-size: 0;">&nbsp;</div>           
            <div class="info-box-central-contents">                             
              <div class="main" style="margin: 4px 15px 4px 15px;">
                <div style="float: left;">
                  <a href="[@{$link_back}@]" class="button-back" style="float: left" title=" [@{#button_title_back#}@] "><span>[@{#button_text_back#}@]</span></a>
                </div>
                <div style="float: right;">                                
                  <script type="text/javascript">
                  /* <![CDATA[ */
                    document.write('<a href="" onclick="if(product_reviews_write.onsubmit())product_reviews_write.submit(); return false" class="button-continue" style="float: left" title=" [@{#button_title_continue#}@] "><span>[@{#button_text_continue#}@]</span></a><input type="image" src="[@{$images_path}@]pixel_trans.gif" alt="" />')
                  /* ]]> */  
                  </script>
                  <noscript>
                    <input type="submit" value="[@{#button_text_continue#}@]" />
                  </noscript>
                </div>                                                                                                                                 
                <div class="clear">&nbsp;</div>                    
              </div>             
            </div>            
          </div>                    
          <div class="small-text" style="width: [@{$td_width_img}@]px; text-align: center; float: right;">
            [@{if $product_img}@]
            <script type="text/javascript">
            /* <![CDATA[ */
              document.write('<a class="lightbox-img" href="[@{$link_product_img}@]" target="_blank">[@{$product_img}@]<br />[@{#text_click_to_enlarge#}@]</a>');

              $(".lightbox-img").colorbox({
                iframe:true, 
                innerWidth:[@{$box_width}@], 
                innerHeight:[@{$box_height}@]
              });              
            /* ]]> */  
            </script>            
            <noscript>
              <a href="[@{$link_product_img_noscript}@]" target="_blank">[@{$product_img}@]<br />[@{#text_click_to_enlarge#}@]</a>
            </noscript>
            [@{/if}@]
            <p><a href="[@{$link_buy_now}@]" class="button-add-to-cart" style="float: right" title=" [@{#button_title_in_cart#}@] "><span>[@{#button_text_in_cart#}@]</span></a></p>
          </div>
          <div class="clear">&nbsp;</div>
          [@{$form_end}@]
<!-- product_reviews_write_eof -->

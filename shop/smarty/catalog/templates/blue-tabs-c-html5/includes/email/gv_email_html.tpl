[@{*
********************************************************************************
* project    : XOS-Shop, open source e-commerce system
*              http://www.xos-shop.com
*
* template   : blue-tabs-c-html5
* version    : 1.0.7 for XOS-Shop version 1.0 rc7s
* descrip    : xos-shop default template with tabs navigation
*              and popup windows as lightboxes and div/css layout                                                                     
* filename   : gv_email_html.tpl
* author     : Hanspeter Zeller <hpz@xos-shop.com>
* copyright  : Copyright (c) 2010 Hanspeter Zeller
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
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
      "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="[@{$xhtml_lang}@]" xml:lang="[@{$xhtml_lang}@]">
<head>
<meta http-equiv="content-type" content="text/html; charset=[@{$charset}@]" />
<meta http-equiv="content-language" content="[@{$xhtml_lang}@]" />
<meta http-equiv="content-style-type" content="text/css" />
<meta name="generator" content="XOS-Shop version 1.0 rc7s, open source e-commerce system" />
<title></title>
</head>
<body>
<table border="0" width="100%" cellspacing="0" cellpadding="2">
  <tr>
    <td><table border="0" width="100%" cellspacing="0" cellpadding="0">
      <tr>
        <td nowrap="nowrap" style="font-family: Verdana, Arial, sans-serif; font-size: 18px; color: #727272; font-weight: bold;">[@{$store_name_address|nl2br}@]</td>
        <td nowrap="nowrap" style="font-family: Verdana, Arial, sans-serif; font-size: 18px; color: #727272; font-weight: bold;" align="right"><img src="[@{$src_embedded_shop_logo}@]" style="border: 0;" alt="shop-logo" title=" shop-logo " /></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="2">
      <tr>
        <td colspan="3" style="font-size: 1px; line-height: 1px; height: 1px; width: 100%; border-top: 1px solid black;">&nbsp;</td>
      </tr>
      <tr>
        <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="2">
          <tr>
            <td nowrap="nowrap" style="font-family: Verdana, Arial, sans-serif; font-size: 11px;">[@{$gv_message|nl2br}@]</td>
          </tr>
          <tr>
            <td nowrap="nowrap" style="font-family: Verdana, Arial, sans-serif; font-size: 11px;">[@{#html_email_text_gv_worth#}@]<b>[@{$gv_amount}@]</b></td>
          </tr>
          <tr>
            <td nowrap="nowrap" style="font-family: Verdana, Arial, sans-serif; font-size: 11px;">[@{#html_email_text_to_redeem#}@][@{#html_email_text_which_is#}@]<b>[@{$gv_id}@]</b>[@{#html_email_text_in_case#}@]</td>
          </tr>                    
          <tr>
            <td style="font-family: Verdana, Arial, sans-serif; font-size: 11px;"><a href="[@{$link_gv_redeem}@]">[@{$link_gv_redeem}@]</a></td>
          </tr>
          <tr>
            <td style="font-family: Verdana, Arial, sans-serif; font-size: 11px;">[@{#html_email_text_or_visit#}@]<a href="[@{$link_shop}@]">[@{$link_shop}@]</a>[@{#html_email_text_enter_code#}@]<br /><br /></td>
          </tr> 
          <tr>
            <td style="font-family: Verdana, Arial, sans-serif; font-size: 11px;">[@{#html_email_text_signature#}@]<br />[@{$store_name}@]</td>
          </tr>                    
        </table></td>
      </tr>
    </table></td>
  </tr>   
  <tr>
    <td style="font-size: 10px; line-height: 10px; height: 10px;">&nbsp;</td>
  </tr> 
</table>
</body>
</html>

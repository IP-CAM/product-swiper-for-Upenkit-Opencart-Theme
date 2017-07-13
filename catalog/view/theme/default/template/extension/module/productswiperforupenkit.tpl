
<div id="module-<?php echo $uniqid; ?>">
    <h3 class="box-title uk-heading-divider">
        <span uk-icon="icon: play"></span>
        <span><?php echo $heading_title; ?></span>
        <div style="float:right;" id="productswiperforupenkit-<?php echo $uniqid; ?>-nav-container"></div>
    </h3>

    <div id="productswiperforupenkit-<?php echo $uniqid; ?>" class="owl-carousel owl-theme">
        <?php foreach ($products as $product) { ?>
        <div class="product-layout">
            <div class="product-thumb transition uk-transition-toggle uk-card uk-card-default uk-card-hover uk-card-small">
                <div class="uk-card-media-top">
                    <div class="image">
                        <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a>
                    </div>
                </div>
              <div class="caption-remove uk-card-body">
                <h4><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h4>
                <?php if ($product['price']) { ?>
                <p class="price">
                  <?php if (!$product['special']) { ?>
                  <?php echo $product['price']; ?>
                  <?php } else { ?>
                  <span class="price-new"><?php echo $product['special']; ?></span> <span class="price-old"><?php echo $product['price']; ?></span>
                  <?php } ?>
                  <?php if ($product['tax']) { ?>
                  <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
                  <?php } ?>
                </p>
                <?php } ?>

                <?php if ($product['special']) { ?>
                <div class="uk-card-badge uk-label uk-label-warning">Special</div>
                <?php } ?>

              </div>


              <div class="buttons-group uk-transition-fade uk-transition-slide-left-small" style="text-align:center;">
                  <div>
                    <a href="<?php echo $product['href']; ?>" class="uk-button uk-button-default uk-button-small" uk-icon="icon: expand"></a>
                    <button type="button" class="uk-button uk-button-default uk-button-small" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');" uk-icon="icon: heart"></button>
                    <button type="button" class="uk-button uk-button-default uk-button-small" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');" uk-icon="icon : settings"></button>
                  </div>
              </div>

              <div class="uk-card-footer">
                  <div style="text-align:center;">
                      <button type="button" class="add-to-cart-button uk-button uk-button-primary" onclick="cart.add('<?php echo $product['product_id']; ?>');" uk-icon="icon: cart"><?php echo $button_cart; ?></button>
                  </div>
              </div>
            </div>

        </div>
        <?php } ?>
    </div>

</div>


<style>
.owl-prev, .owl-next{display: inline-block;}
</style>


<script>
$(function(){
    $('#productswiperforupenkit-<?php echo $uniqid; ?>').owlCarousel({
        loop:true,
        margin:20,
        center: false,
        nav:true,
        lazyContent: true,
        autoplay:true,
        autoplayTimeout:5000,
        autoplayHoverPause:true,
        stagePadding:10,
        autoheight: true,
        navText: ["<span uk-icon='icon: triangle-left'></span>" , "<span uk-icon='icon: triangle-right'></span>"],
        responsive : {
            0 : {
                items:1
            },
            500 : {
                items:2
            },
            800 : {
                items:3
            },
            1100 : {
                items:4
            }
        },
        dots : false,
        navContainer: '#productswiperforupenkit-<?php echo $uniqid; ?>-nav-container'
    })
});
</script>

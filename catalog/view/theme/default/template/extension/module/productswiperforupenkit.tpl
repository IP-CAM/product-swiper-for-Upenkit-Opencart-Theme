<h3 class="box-title"><?php echo $heading_title; ?></h3>
<div id="productswiperforupenkit-<?php echo $uniqid; ?>-nav-container" style="border:1px;"></div>
<div id="productswiperforupenkit-<?php echo $uniqid; ?>" class="owl-carousel owl-theme">
    <?php foreach ($products as $product) { ?>
    <div class="product-layout">
        <div class="product-thumb transition">
            <div class="image">
                <a href="<?php echo $product['href']; ?>">
                    <img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" />
                </a>
            </div>
            <div class="caption">
                <h4>
                    <a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
                </h4>
                <p><?php echo $product['description']; ?></p>
                <?php if ($product['rating']) { ?>
                <div class="rating">
                    <?php for ($i = 1; $i <= 5; $i++) { ?>
                        <?php if ($product['rating'] < $i) { ?>
                        <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                        <?php } else { ?>
                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                        <?php } ?>
                    <?php } ?>
                </div>
                <?php } ?>
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
            </div>
            <div class="button-group">
                <button type="button" onclick="cart.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-shopping-cart"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $button_cart; ?></span></button>
                <button type="button" data-toggle="tooltip" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-heart"></i></button>
                <button type="button" data-toggle="tooltip" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-exchange"></i></button>
            </div>
        </div>
    </div>
    <?php } ?>
</div>





<script>
$(function(){
    $('#productswiperforupenkit-<?php echo $uniqid; ?>').owlCarousel({
        loop:true,
        margin:20,
        center: true,
        nav:true,
        lazyContent: true,
        autoplay:true,
        autoplayTimeout:10000,
        autoplayHoverPause:true,
        stagePadding:10,
        navText: ["<<" , ">>"],
        dots : false,
        navContainer: '#productswiperforupenkit-<?php echo $uniqid; ?>-nav-container'
    })
});
</script>

        <!-- Widget -->
        <div class="col-sm-3 hidden-xs" id="widget">
           
            <!-- Search Widget -->
            <section class="box wow fadeInDown" data-wow-duration="2s" id="search-widget">
                <h3 class="heading">Search Blog</h3>
                <div class="content">
                    <form action="#">
                        <input type="text" name="search" class="input placeholder" placeholder="Search Blog" />
                        <button class="button">Search</button>
                    </form>
                </div>
            </section>
            <!--/ Search Widget -->
            <!-- Categories Widget -->
            <section class="box wow fadeInDown" data-wow-duration="2s" id="categories-widget">
                <h3 class="heading">Categories</h3>
                <div class="content">
                    <?php foreach ($categories AS $category) { ?>
                    <a href="<?php echo url('category/' . seo($category->name) . '/' . $category->id); ?>">
                        <span class="name"><?php echo $category->name; ?></span>
                        <span class="total-posts" title="Posts"><?php echo $category->total_posts; ?></span>
                    </a>
                    <?php } ?>
                </div>
            </section>
            <!--/ Categories Widget -->
            
        </div>
        <!--/ Widget -->

<?php
function takeNewByID($name, $price, $image, $id)
{
?>

	<!-- product -->
	<form action="index.php" method="post" enctype="multipart/form-data">

		<div class="product">
			<div class="product-img">

				<img name="img" src="./img/<?php echo $image ?>" alt="">
			</div>
			<div class="product-body">
				<p class="product-category">Category</p>
				<h3 class="product-name"><a name="name" href="#"><?php echo $name ?></a></h3>
				<h4 class="product-price" name="price"><?php echo number_format($price); ?>VND</h4>
				<div class="product-rating">
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
				</div>
				<div class="product-btns">
					<button class="add-to-wishlist"><i class="fa fa-heart-o"></i><span class="tooltipp">add to wishlist</span></button>
					<button class="add-to-compare"><i class="fa fa-exchange"></i><span class="tooltipp">add to compare</span></button>
					<button class="quick-view"><i class="fa fa-eye"></i><span class="tooltipp">quick view</span></button>
				</div>
			</div>

			<div class="add-to-cart">
				<form action="index.php" method="post">

					<button type="submit" name="add" class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i> add to cart</button>
					<input type="hidden" name="id" value="<?php echo $id ?>">
				</form>
			</div>
		</div>
	</form>
	<!-- /product -->

<?php }
?>
<?php
function takeNewProduct($name, $price, $image, $id)
{
?>
	<!-- product -->
	<form action="index.php" method="post" enctype="multipart/form-data">

		<div class="product">
			<div class="product-img">

				<img name="img" src="./img/<?php echo $image ?>" alt="">
			</div>
			<div class="product-body">
				<p class="product-category">Category</p>
				<h3 class="product-name"><a name="name" href="#"><?php echo $name ?></a></h3>
				<h4 class="product-price" name="price"><?php echo number_format($price); ?>VND</h4>
				<div class="product-rating">
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
				</div>
				<div class="product-btns">
					<button class="add-to-wishlist"><i class="fa fa-heart-o"></i><span class="tooltipp">add to wishlist</span></button>
					<button class="add-to-compare"><i class="fa fa-exchange"></i><span class="tooltipp">add to compare</span></button>
					<button class="quick-view"><i class="fa fa-eye"></i><span class="tooltipp">quick view</span></button>
				</div>
			</div>

			<div class="add-to-cart">
				<form action="index.php" method="post">

					<button type="submit" name="add" class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i> add to cart</button>
					<input type="hidden" name="id" value="<?php echo $id ?>">
				</form>
			</div>
		</div>
	</form>
	<!-- /product -->

<?php }
?>
<?php
function cartElement($image, $name, $price, $id)
{
?>
<form action="cart.php?action=remove&id=<?php echo $id ?>" method="post" class="cart-items">
		<div class="border rounded">
			<div class="row bg-white">
				<div class="col-md-3 pl-0">
					<img src=./img/<?php echo $image ?> alt="Image1" class="img-fluid">
				</div>
				<div class="col-md-6">
					<h5 class="pt-2"><?php echo $name ?></h5>
					<h5 class="pt-2"><?php echo number_format($price) ?>VNĐ</h5>
					<button type="submit" class="btn btn-danger mx-2" name="remove">Xóa</button>
				</div>
			</div>
		</div>
	</form>


<?php } ?>
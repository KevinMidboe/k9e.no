<script lang="ts">
	import type IImage from '$lib/interfaces/IImage';

	let images: IImage[] = [
		{ url: 'IMG_5613.jpeg', alt: 'Kevin at beach' },
		{ url: 'IMG_4551.jpeg', alt: 'Kevin fishing' },
		{ url: 'IMG_1925.jpeg', alt: 'Kevin in a boat with dog' }
	];

	function cycle() {
		images.push(images.shift() || images[0]);
		images = images;
	}
</script>

<div
	class="images"
	on:click={cycle}
	on:keydown={(e) => e.key === 'Enter'}
	role="button"
	tabindex="0"
>
	{#each images as image (image.url)}
		<img src="/images/{image.url}" alt={image.alt} />
	{/each}
</div>

<style lang="scss">
	div.images {
		position: relative;
		display: flex;
		user-select: none;
		-webkit-user-select: none;
		margin-left: 40px;

		img {
			position: absolute;
			margin-top: 10vh;
			max-height: 80vh;
			transition: all 0.51s ease;
		}

		@for $i from 0 through 4 {
			img:nth-of-type(#{$i}) {
				left: calc(-10px * $i);
				top: calc(-10px * $i);
			}
		}
	}
</style>

<script lang="ts">
	import { onMount } from 'svelte';
	import colors from './colors';

	function getRandomColor() {
		return colors[Math.floor(Math.random() * colors.length)];
	}

	function setRandomLinkColor() {
		Array.from(document.getElementsByTagName('a')).forEach((e) => {
			e.classList.add('rainbow-text');
			e.style.backgroundColor = getRandomColor();
		});
	}

	function setColorHoverListener() {
		Array.from(document.querySelectorAll('a, button')).forEach((e) => {
			e.addEventListener('mouseover', setRandomLinkColor);
		});
	}

	onMount(() => {
		setRandomLinkColor();
		setColorHoverListener();
	});
</script>

<style lang="scss">
	:global(.rainbow-text) {
		padding: 0.2rem;
		color: black;
	}
</style>

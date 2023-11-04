<script>
	const year = new Date().getFullYear();
</script>

<footer>
	Copyright © {year} - Kevin Midbøe ፨
	<a href="https://github.com/kevinmidboe/k9e.no">View sourcecode</a>
</footer>

<style lang="scss">
	footer {
		position: fixed;
		bottom: 0;
		width: 100%;
		padding: 0.35rem 0;
		background-color: white;
	}

	@media (max-width: 500px) {
		footer {
			font-size: 0.9rem;
		}
	}
</style>

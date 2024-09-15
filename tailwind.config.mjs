/** @type {import('tailwindcss').Config} */
export default {
	content: ['./src/**/*.{astro,html,js,jsx,md,mdx,svelte,ts,tsx,vue}'],
	darkMode: ['variant', [
		'@media (prefers-color-scheme: dark) { &:not(.light *) }',
		'&:is(.dark *)',
	]],
	theme: {
		extend: {
			colors: ({ colors }) => ({
				primary: {
					100: "#9333ea",
					900: "#7315cb",
				},
				secondary: {
					100: "#ff7e33",
					900: "#cc4b00",
				},
				info: "#0c63e7",
			}),
		},
	},
	plugins: [],
}

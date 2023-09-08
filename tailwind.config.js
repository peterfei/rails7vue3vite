/** @type {import('tailwindcss').Config} */
const colors = require('tailwindcss/colors')
const defaultTheme = require('tailwindcss/defaultTheme')

module.exports = {
    content: [
        './index.html',
        './app/helpers/**/*.rb',
        './app/assets/stylesheets/**/*.css',
        './app/views/**/*.{html,html.erb,erb}',
        './app/javascript/components/**/*.{vue,ts,js,tsx}',
    ],
    theme: {
        extend: {
        },
    },
    corePlugins: {
        aspectRatio: false,
    },
    important: true,
    plugins: [
        require('@tailwindcss/typography'),
        require('@tailwindcss/forms'),
        require('@tailwindcss/aspect-ratio'),
        require('@tailwindcss/line-clamp'),
    ],
}
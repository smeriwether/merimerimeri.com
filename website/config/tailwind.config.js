module.exports = {
  purge: [
    "./website/**/*.html.erb"
  ],
  darkMode: "media",
  theme: {},
  variants: {
    extend: {},
  },
  plugins: [
    require('@tailwindcss/forms'),
  ],
}

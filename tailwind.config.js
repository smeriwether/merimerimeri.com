module.exports = {
  purge: [
    './_includes/**/*.html',
    './_layouts/**/*.html',
    './_posts/*.md',
    './*.html',
  ],
  darkMode: false, // or 'media' or 'class'
  theme: {
    extend: {
      colors: {
        primary: '#FFFFFA',
        secondary: '#F5F4E9',
      },
    },
  },
  variants: {
    extend: {},
  },
  plugins: [],
}

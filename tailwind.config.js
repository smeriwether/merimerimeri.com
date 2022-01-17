module.exports = {
  purge: ['layouts/**/*.html'],
  darkMode: 'media',
  theme: {
    extend: {},
  },
  variants: {
    extend: {
      borderColor: ['group-hover', 'hover'],
      borderWidth: ['group-hover', 'hover'],
      fontWeight: ['group-hover', 'hover']
    },
  },
}

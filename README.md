# phxtailwindui
Get tailwind UI in phoenix

Steps Taken:
* mix phx.new phxtailwindui
* cd assets
* npm install tailwindcss @tailwindcss/ui --save-dev
* npm install postcss-loader --save-dev
* Added assets/postcss.config.js:
```
module.exports = {
    plugins: [
      require('tailwindcss'),
      require('@tailwindcss/ui'),
      require('autoprefixer')
    ]
  }
```
* Replace assets/webpack.config.js use section below `test: /\.css$/,` with:
```use: [
          MiniCssExtractPlugin.loader,
          { loader: 'css-loader', options: { importLoaders: 1 } },
          'postcss-loader'
        ]
```
* Add tailwind directives to assets/css/app.css:
```
@tailwind base;
@tailwind components;
@tailwind utilities;
```

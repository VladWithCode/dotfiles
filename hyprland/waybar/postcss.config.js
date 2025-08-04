module.exports = {
    plugins: [
        require('postcss-preset-env')({
            stage: 0,
            features: {
                // enable CSS custom props
                'custom-properties': true,
                // enable OKLCH support by transpiling to hex
                'color-function': { unresolved: 'warn' },
                'lab-function': { unresolved: 'warn' }
            }
        })
    ]
}

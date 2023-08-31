import {defineConfig} from 'vite'
import RubyPlugin from 'vite-plugin-ruby'
import FullReload from "vite-plugin-full-reload"
import vue from "@vitejs/plugin-vue"
import StimulusHMR from 'vite-plugin-stimulus-hmr'


export default defineConfig({
    clearScreen: false,
    plugins: [
        vue(),
        RubyPlugin(),
        StimulusHMR(),
        FullReload(["config/routes.rb", "app/views/**/*"], {delay: 200})
    ],
    root: "./app/assets",
    build: {
        manifest: true,
        rollupOptions: {
            input: "/app/frontend/entrypoints/application.js"
        }
    }
})

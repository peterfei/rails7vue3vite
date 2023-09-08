# Rails 7 with vite + vue3 +TypeScript+Naive Ui Admin

我以vite_javascript_tag和vite_stylesheet_tag各自代替了javascript_include_tag和stylesheet_link_tag helper，并把vite.json中的sourceCodeDir的值更新为frontend（代替了 Rails 的app/javascript方案）。

## Step 1: Clone 项目

>  项目地址:[rails7vue3vite]([URL]https://github.com/peterfei/rails7vue3vite)

```
git clone git@github.com:peterfei/rails7vue3vite.git
```

如果对你全栈学习有所帮助，劳烦给个Star

```
bundle
cd vite
yarn
vite dev
rails s 
```
浏览器打开 [http://localhost:3000](http://localhost:3000/) .

![image-20230908163951543](http://image-peterfei-blog.test.upcdn.net/image-20230908163951543.png)

![image-20230908164028154](http://image-peterfei-blog.test.upcdn.net/image-20230908164028154.png)

![image-20230908164056082](http://image-peterfei-blog.test.upcdn.net/image-20230908164056082.png)

![image-20230908164118309](http://image-peterfei-blog.test.upcdn.net/image-20230908164118309.png)

![image-20230908164141734](http://image-peterfei-blog.test.upcdn.net/image-20230908164141734.png)

![image-20230908164154059](http://image-peterfei-blog.test.upcdn.net/image-20230908164154059.png)



![image-20230908164216812](http://image-peterfei-blog.test.upcdn.net/image-20230908164216812.png)

![image-20230908164302276](http://image-peterfei-blog.test.upcdn.net/image-20230908164302276.png)



## 开发

### 目录结构

![image-20230908164532553](http://image-peterfei-blog.test.upcdn.net/image-20230908164532553.png)

The vite install will generate the following files

```
# Procfile for dev env to start both rails and vite server
Procfile.dev 
  vite: bin/vite dev
   web: bin/rails s

# Only Vite entry files - mainly used for imports
app/frontend/entrypoints/  

# Executable to start the dev server
bin/vite 

# Defines the node dependencies
package.json                 
package-lock.json

# Configuration for the vite for the app
vite.config.ts     

# Setting for the Vite         
config/vite.json
```

1. A sample file is created app/frontend/entrypoints/application.js in the web app.
2. Vite will also add the following tags to the app/views/layouts/application.html.erb

* vite_javascript_tag: Renders a <script> tag referencing a JavaScript file
* vite_typescript_tag: Renders a <script> tag referencing a TypeScript file
* vite_stylesheet_tag: Renders a <link> tag referencing a CSS file

3. Configure the Vite in the vite.config.ts file. The basic configuration is like adding RubyPlugin is done for us by the vite-rails gem. Apart from this, vite-plugin-full-reload can be added.

```vite.json
import type { UserConfig, ConfigEnv, } from 'vite';
import { loadEnv } from 'vite';
import { resolve } from 'path';
import { wrapperEnv } from './build/utils';
import { createVitePlugins } from './build/vite/plugin';
import { OUTPUT_DIR } from './build/constant';
import { createProxy } from './build/vite/proxy';
import pkg from './package.json';
import { format } from 'date-fns';
const { dependencies, devDependencies, name, version } = pkg;

const __APP_INFO__ = {
    pkg: { dependencies, devDependencies, name, version },
    lastBuildTime: format(new Date(), 'yyyy-MM-dd HH:mm:ss'),
};

function pathResolve(dir: string) {
    return resolve(process.cwd(), '.', dir);
}

export default ({ command, mode }: ConfigEnv): UserConfig => {
    const root = process.cwd();
    const env = loadEnv(mode, root);
    const viteEnv = wrapperEnv(env);
    const { VITE_PUBLIC_PATH, VITE_PORT, VITE_GLOB_PROD_MOCK, VITE_PROXY } =
        viteEnv;
    const prodMock = VITE_GLOB_PROD_MOCK;
    const isBuild = command === 'build';
    return {
        base: VITE_PUBLIC_PATH,
        esbuild: {},
        resolve: {
            alias: [
                {
                    find: /\/#\//,
                    replacement: pathResolve('types') + '/',
                },
                {
                    find: '@',
                    replacement: pathResolve('app/frontend/') + '/',
                },
            ],
            dedupe: ['vue'],
        },
        plugins: createVitePlugins(viteEnv, isBuild, prodMock),
        define: {
            __APP_INFO__: JSON.stringify(__APP_INFO__),
        },
        server: {
            host: true,
            port: VITE_PORT,
            proxy: createProxy(VITE_PROXY),
        },
        optimizeDeps: {
            include: [],
            exclude: ['vue-demi'],
        },
        build: {
            target: 'es2015',
            cssTarget: 'chrome80',
            outDir: OUTPUT_DIR,
            reportCompressedSize: false,
            chunkSizeWarningLimit: 2000,
            manifest: true
        },
    };
};
```







### Wrapping things up
旅程至此告一段落了。我们现在拥有了设置好的 Ruby Vite，运行良好的 live reload，hot replacement，以及所期望的实时性，都被完美修复了！随意分享并把其用到你自己的项目中吧——我希望它能派上用场助你一臂之力！
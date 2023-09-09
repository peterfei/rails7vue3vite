# Rails 7 with vite + vue3 +TypeScript+Naive Ui Admin

## 简介

> 基于 [Vue3.0](https://github.com/vuejs/vue-next)、[Vite](https://github.com/vitejs/vite)、 [Naive UI](https://www.naiveui.com/)、[TypeScript](https://www.typescriptlang.org/)  Rails 的中后台解决方案，它使用了最新的前端技术栈，并提炼了典型的业务模型，页面，包括二次封装组件、动态菜单、权限校验、粒子化权限控制等功能，它可以帮助你快速搭建企业级中后台项目，该项目使用最新的前端技术栈，相信不管是从新技术使用还是其他方面，都能帮助到你。
>
> 我以vite_javascript_tag和vite_stylesheet_tag各自代替了javascript_include_tag和stylesheet_link_tag helper，并把vite.json中的sourceCodeDir的值更新为frontend（代替了 Rails 的app/javascript方案）。

## Step 1: Clone 项目

>  项目地址:[rails7vue3vite]([URL]https://github.com/peterfei/rails7vue3vite)

```
git clone git@github.com:peterfei/rails7vue3vite.git
```

如果对你全栈学习有所帮助，劳烦给个Star

## Step 2: 运行项目

```
bundle
cd vite
yarn
vite dev
rails s 
```
浏览器打开 [http://localhost:3000](http://localhost:3000/) .



## 基础知识

本项目需要一定前端基础知识，请确保掌握 Vue 的基础知识，以便能处理一些常见的问题。 建议在开发前先学一下以下内容，提前了解和学习这些知识，会对项目理解非常有帮助:

- [Vue3 文档](https://v3.vuejs.org/)
- [Vue-RFCS](https://github.com/vuejs/rfcs)
- [Vue2 迁移到 3](https://v3.vuejs.org/guide/migration/introduction.html)
- [TypeScript](https://www.typescriptlang.org/)
- [Vue-router](https://next.router.vuejs.org/)
- [Naive UI](https://www.naiveui.com/)
- [Es6](https://es6.ruanyifeng.com/)
- [Vitejs](https://vitejs.dev/)
- [WindiCss](https://windicss.netlify.app/)

## 浏览器支持

**本地开发**推荐使用`Chrome 最新版`浏览器，**不支持**`Chrome 80`以下版本。

**生产环境**支持现代浏览器，不支持 IE。

| [![IE](http://image-peterfei-blog.test.upcdn.net/internet-explorer_9-11_48x48.png)](http://godban.github.io/browsers-support-badges/)IE | [![ Edge](http://image-peterfei-blog.test.upcdn.net/edge_48x48.png)](http://godban.github.io/browsers-support-badges/)Edge | [![Firefox](http://image-peterfei-blog.test.upcdn.net/firefox_48x48.png)](http://godban.github.io/browsers-support-badges/)Firefox | [![Chrome](http://image-peterfei-blog.test.upcdn.net/chrome_48x48.png)](http://godban.github.io/browsers-support-badges/)Chrome | [![Safari](http://image-peterfei-blog.test.upcdn.net/safari_48x48.png)](http://godban.github.io/browsers-support-badges/)Safari |
| :----------------------------------------------------------: | :----------------------------------------------------------: | :----------------------------------------------------------: | :----------------------------------------------------------: | :----------------------------------------------------------: |
|                         not support                          |                       last 2 versions                        |                       last 2 versions                        |                       last 2 versions                        |                       last 2 versions                        |

![image-20230908163951543](http://image-peterfei-blog.test.upcdn.net/image-20230908163951543.png)

![image-20230908164028154](http://image-peterfei-blog.test.upcdn.net/image-20230908164028154-20230909110430663.png)

![image-20230908164056082](http://image-peterfei-blog.test.upcdn.net/image-20230908164056082.png)

![image-20230908164118309](http://image-peterfei-blog.test.upcdn.net/image-20230908164118309.png)

![image-20230908164141734](http://image-peterfei-blog.test.upcdn.net/image-20230908164141734.png)

![image-20230908164154059](http://image-peterfei-blog.test.upcdn.net/image-20230908164154059.png)



![image-20230908164216812](/Users/mac/Downloads/blog/image-20230908164216812.png)

![image-20230908164302276](http://image-peterfei-blog.test.upcdn.net/image-20230908164302276.png)

![image-20230909110646949](http://image-peterfei-blog.test.upcdn.net/image-20230909110646949.png)

## 开发

### 目录结构

![image-20230908164532553](http://image-peterfei-blog.test.upcdn.net/image-20230908164532553.png)



# 项目配置项

用于修改项目的配色、布局、缓存、多语言、组件默认配置

## 环境变量配置

项目的环境变量配置位于项目根目录下的 .env、.env.development、.env.production

具体可以参考 [Vite 文档](https://github.com/vitejs/vite#modes-and-environment-variables)

> bash

```bash
.env                # 在所有的环境中被载入
.env.local          # 在所有的环境中被载入，但会被 git 忽略
.env.[mode]         # 只在指定的模式中被载入
.env.[mode].local   # 只在指定的模式中被载入，但会被 git 忽略
```

> 温馨提醒
>
> 只有以 `VITE_ `开头的变量会被嵌入到客户端侧的包中，你可以项目代码中这样访问它们：



```javascript
console.log(import.meta.env.VITE_PROT);
```

> 以 `VITE_GLOB_*` 开头的的变量，在打包的时候，会被加入[_app.config.js](https://docs.naiveadmin.com/guide/settings.html#生产环境动态配置)配置文件当中.

### 配置项说明

### .env

所有环境适用

```bash
# 端口号
VITE_PORT=3100
# 网站标题
VITE_GLOB_APP_TITLE=Naive Ui Admin
# 简称，用于配置文件名字 不要出现空格、数字开头等特殊字符
VITE_GLOB_APP_SHORT_NAME=naive_ui_admin
```

### .env.development

开发环境适用



```bash
# 是否开启mock数据，关闭时需要自行对接后台接口
VITE_USE_MOCK=true
# 资源公共路径,需要以 /开头和结尾
VITE_PUBLIC_PATH=/
# 是否删除Console.log
VITE_DROP_CONSOLE=false
# 接口地址
# 如果没有跨域问题，直接在这里配置即可
VITE_GLOB_API_URL=/api
# 图片上传地址
VITE_GLOB_UPLOAD_URL=/upload
# 图片前缀地址
VITE_GLOB_IMG_URL=/
# 接口前缀
VITE_GLOB_API_URL_PREFIX=
```

> 注意

> 这里配置的 `VITE_PROXY` 以及 `VITE_GLOB_API_URL`, /api 需要是唯一的，不要和接口有的名字冲突

> 如果你的接口是 `http://localhost:3000/api` 之类的，请考虑将 `VITE_GLOB_API_URL=/xxxx` 换成别的名字

### .env.production

生产环境适用



```bash
# 是否开启mock
VITE_USE_MOCK=true
# 接口地址 可以由nginx做转发或者直接写实际地址
VITE_GLOB_API_URL=/api
# 文件上传地址 可以由nginx做转发或者直接写实际地址
VITE_GLOB_UPLOAD_URL=/upload
# 接口地址前缀，有些系统所有接口地址都有前缀，可以在这里统一加，方便切换
VITE_GLOB_API_URL_PREFIX=
# 是否删除Console.log
VITE_DROP_CONSOLE=true
# 资源公共路径,需要以 / 开头和结尾
VITE_PUBLIC_PATH=/
```

## 生产环境动态配置

### 说明

当执行`yarn build`构建项目之后，会自动生成 `_app.config.js` 文件并插入 `index.html`。

**注意: 开发环境不会生成**



```js
// _app.config.js
// 变量名命名规则  __PRODUCTION__xxx_CONF__   xxx：为.env配置的VITE_GLOB_APP_SHORT_NAME
window.__PRODUCTION__VUE_VBEN_ADMIN__CONF__ = {
  VITE_GLOB_APP_TITLE: 'Naive Ui Admin',
  VITE_GLOB_APP_SHORT_NAME: 'naive-ui-admin',
  VITE_GLOB_API_URL: '/app',
  VITE_GLOB_API_URL_PREFIX: '/',
  VITE_GLOB_UPLOAD_URL: '/upload',
};
```

### 作用

`_app.config.js` 用于项目在打包后，需要动态修改配置的需求，如接口地址。不用重新进行打包，可在打包后修改 `/dist/_app.config.js` 内的变量，刷新即可更新代码内的局部变量。

### 如何获取全局变量

想要获取 `_app.config.js` 内的变量，可以使用 src/hooks/setting/index.ts 提供的函数来进行获取

### 如何新增(新增一个可动态修改的配置项)

1. 首先在 `.env` 或者对应的开发环境配置文件内，新增需要可动态配置的变量，需要以 `VITE_GLOB_`开头
2. `VITE_GLOB_` 开头的变量会自动加入环境变量，通过在 `src/types/config.d.ts` 内修改 `GlobEnvConfig` 和 `GlobConfig` 两个环境变量的值来定义新添加的类型
3. useGlobSetting函数中添加刚新增的返回值即可



```js
const {
  VITE_GLOB_APP_TITLE,
  VITE_GLOB_API_URL,
  VITE_GLOB_APP_SHORT_NAME,
  VITE_GLOB_API_URL_PREFIX,
  VITE_GLOB_UPLOAD_URL,
} = ENV;

export const useGlobSetting = (): SettingWrap => {
  // Take global configuration
  const glob: Readonly<GlobConfig> = {
    title: VITE_GLOB_APP_TITLE,
    apiUrl: VITE_GLOB_API_URL,
    shortName: VITE_GLOB_APP_SHORT_NAME,
    urlPrefix: VITE_GLOB_API_URL_PREFIX,
    uploadUrl: VITE_GLOB_UPLOAD_URL
  };
  return glob as Readonly<GlobConfig>;
};
```

## 项目配置

> WARNING

项目配置文件用于配置项目内展示的内容、布局、文本等效果，该配置，暂时没有存于`localStorage`中。刷新则恢复初始值。

src/settings/projectSetting.ts



```tsx
const setting = {
    //导航模式 vertical 左侧菜单模式 horizontal 顶部菜单模式
    navMode: 'vertical',
    //导航风格 dark 暗色侧边栏 light 白色侧边栏 header-dark 暗色顶栏
    navTheme: 'dark',
    //顶部
    headerSetting: {
        //背景色
        bgColor: '#fff',
        //固定顶部
        fixed: true,
        //显示重载按钮
        isReload: true,
    },
    //页脚
    showFooter: true,
    //多标签
    multiTabsSetting: {
        //背景色
        bgColor: '#fff',
        //是否显示
        show: true,
        //固定多标签
        fixed: true,
    },
    //菜单
    menuSetting: {
        //最小宽度
        minMenuWidth: 64,
        //菜单宽度
        menuWidth: 200,
        //固定菜单
        fixed: true,
    },
    //面包屑
    crumbsSetting: {
        //是否显示
        show: true,
        //显示图标
        showIcon: false,
    },
    //菜单权限模式 FIXED 前端固定路由  BACK 动态获取
    permissionMode: 'FIXED',
};
export default setting;
```

### 组件配置

`src/settings/componentSetting.ts`

```rst
export default {
    table: {
        apiSetting: {
            // 当前页的字段名
            pageField: 'page',
            // 每页数量字段名
            sizeField: 'pageSize',
            // 接口返回的数据字段名
            listField: 'list',
            // 接口返回总页数字段名
            totalField: 'pageCount',
        },
        //默认分页数量
        defaultPageSize: 10,
        //可切换每页数量集合
        pageSizes: [10, 20, 30, 40, 50],
    },
    upload: {
        //考虑接口规范不同
        apiSetting: {
            // 集合字段名
            infoField: 'data',
            // 图片地址字段名
            imgField: 'photo',
        },
        //最大上传图片大小
        maxSize: 2,
        //图片上传类型
        fileType: ['image/png', 'image/jpg', 'image/jpeg', 'image/gif', 'image/svg+xml'],
    },
};
```

### 主题配置

`src/settings/designSetting.ts`



```tsx
// app theme preset color
export const appThemeList: string[] = [
    '#2d8cf0',
    '#0960bd',
    '#0084f4',
    '#009688',
    '#536dfe',
    '#ff5c93',
    '#ee4f12',
    '#0096c7',
    '#9c27b0',
    '#ff9800',
    '#FF3D68',
    '#00C1D4',
    '#71EFA3',
    '#171010',
    '#78DEC7',
    '#1768AC',
    '#FB9300',
    '#FC5404',
];

const setting = {
    //深色主题
    darkTheme: false,
    //系统主题色
    appTheme: '#2d8cf0',
    //系统内置主题色列表
    appThemeList,
};

export default setting;
```

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



```typescript
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
# 调问开源问卷系统（DWSurvey）

    此代码仓库为基于 Spring Boot、Vue 实现的仓库

### 汇总

* 多种技术方案，满足不同的技术选型需求
* 完善的浏览器兼容、保证传统客户也能正常使用
* 部署简单，一行命令完成部署
* 更新方便，直接替换原安装文件不用担心数据被覆盖
* 最高支持多达40多种题型，如单选题、多选题、填空题、评分题、排序题、分页、分段...
* 可见即所得设计理念、所有内容支持快速富文本编辑
* 多种端适配，不管是PC还是移动端同一个地址系统自动适配
* 支持答卷密码、结束跳转、仅微信答卷限制等
* 数据实时统计，答卷的数据以可视化的方案展现，不同的统计图表
* 后端满足JPA规范，为未来支持更多数据库提供条件
* 成熟稳定，经过多年技术发展，技术体系完善
* 完善的支持服务，QQ群，微信群全天24小时技术服务

### 完善的浏览器兼容

**支持现代浏览器和IE6**

在实际收集问卷过程中，不是所有用户都会安装最新的浏览器，DWSurvey在答卷端支持所有的浏览器环境，方案B、方案C更是全站完全支持

| IE / Edge | Firefox | Chrome | Safari | Opera |
| :-----| ----: | :----: | :----: | :----: | 
| IE6+,Edge | 支持 | 支持 | 支持 | 支持 | 

下面是如何使用Spring Boot方案的快速指南。

## 本地开发

环境版本：jdk1.8, tomcat8.5.59

### 基本步骤

1、下载代码后

具体代码地址参考[多种技术方案](#多种技术方案)

2、创建数据库进行初始化

数据库脚本在根目录下的dwsurvey.sql数据库脚本文件

3、用IDEA打开，进行本地开发

现在您可以进行本地开发了

4、开发完成，编译打包

进入 `cd DWSurvey`:

```bash
mvn package
```

配置文件地址

    源码配置文件地址
    resources/application-***.yml

    war包配置文件地址
    /dwsurvey-oss-v.4.0/WEB-INF/classes/application-dev.yml

	#database settings
	datasource:
    url: jdbc:mysql://localhost:3306/dwsurvey_21test?useUnicode=true&characterEncoding=utf8
    username: root
    password: 123456,.

    分别修改```url、username、password```

5、启动浏览器访问

输入 http://localhost:8080

初始账号：```wzunjh@qq.com``` 密码：```123456```

## 特色

### 全新体验、流程简单

以一种全新的设计体验，告别繁琐的设计流程，通过简单有趣的方式，轻轻松松完成问卷设计，多种技术方案，只为呈现更精美的表单问卷.

丰富的题型支持，通过拖拽即可完成题目选择，并可以随意拖动其位置，还可置入所需图片、企业LOGO、设置答题逻辑，一份优美的问卷就是这么简单。

![我的问卷](src/main/resources/static/img/WX20211203-092339@2x.png)

![问卷编辑](src/main/resources/static/img/WX20211203-092358@2x.png)

![问卷预览](src/main/resources/static/img/WX20211203-092406@2x.png)

![答卷地址](src/main/resources/static/img/WX20211203-092416@2x.png)

![答卷规则](src/main/resources/static/img/WX20211203-092427@2x.png)

![数据统计](src/main/resources/static/img/WX20211203-092439@2x.png)

![原始数据](src/main/resources/static/img/WX20211203-092458@2x.png)

- - -

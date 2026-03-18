# 王灵鑫的简历仓库

这个仓库存放我当前在用的 XeLaTeX 简历源码，以及针对不同岗位方向维护的几个版本。

## 文件说明

- `resume.tex`：图形 / 渲染引擎开发主版
- `resume-gpgpu.tex`：GPGPU / GPU 计算方向版本
- `resume-cpp.tex`：通用 C++ / 系统与工具链方向版本

## 编译方式

项目使用 `XeLaTeX` 构建，推荐直接使用 `latexmk`：

```powershell
latexmk -xelatex -interaction=nonstopmode -halt-on-error resume.tex
latexmk -xelatex -interaction=nonstopmode -halt-on-error resume-gpgpu.tex
latexmk -xelatex -interaction=nonstopmode -halt-on-error resume-cpp.tex
```

也可以使用 `Makefile` 中定义的目标：

```powershell
make graphics
make gpgpu
make cpp
```

## 依赖说明

- TeX 发行版：MiKTeX 或 TeX Live
- 引擎：`xelatex`
- 中文字体：仓库内已包含所需字体文件

## 备注

- 本仓库不再保留原始模板示例文件，只保留我自己的简历版本与公共样式文件。
- 生成的 PDF、日志和中间文件已在 `.gitignore` 中排除。

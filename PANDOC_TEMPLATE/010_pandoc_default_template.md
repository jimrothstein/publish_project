\footnotesize

As of \today

#### PURPOSE:	Compare PANDOC default template vs trival template.

```	
file <- "PANDOC_TEMPLATE/010_pandoc_default_template.md"
PURPOSE:	Use the default pandoc template.
```

####	USAGE:	

#####	Default Template
```
!pandoc % -f markdown -t pdf -o - | zathura -
```


#### Trival Template
```
Not sure why need to \usepackage{hyperref}

!pandoc % -f markdown -t pdf --template PANDOC_TEMPLATE/trivial_template.tex  -o - | zathura -
```
`



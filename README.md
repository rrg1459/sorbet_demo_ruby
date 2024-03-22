# README

Things you may want to cover:

* Ruby version 3.1.3

* Rails version 7.1.3.2

* ...

Fuente:  
https://www.youtube.com/watch?v=k1eIAftdrQA&t=470s&ab_channel=WinstonCodesOn

Para crear el archivo Gemfile
 $ bundle init


$ `ruby typedd.rb`


En el Gemfile:
```
gem "sorbet", group: :development
gem "sorbet-runtime"
```

$ `bundle install`

Para Inicializar sorbet

$ `srb init`

Para ejecutar la verificacion de tipos

$ `srb typecheck`

$ `srb tc`

$ `srb t`

Agregar en el programa typedd.rb en la linea 1 esto:

\# typed: true  
Le indicará a sorbet que escriba estáticamente y verifique este archivo.

Agregar este comando justo de bajo de `# typed: true`, para que pueda ejecutar ruby  (`ruby typedd.rb`) sin problemas.  
`require 'sorbet-runtime'`

$ `srb typecheck`

$ `srb tc`

$ `srb t`

Para corregir los posibles errores automaticamente

$ `srb typecheck -a`

$ `srb tc -a`

$ `srb t -a`


這是改自 rocling2024 的 template 

序
---
原則上rocling 的網站都很相似, 主要是  schedule, sponsors, organization
我希望之後如果還要做資料直接用json 灌入這些資料即可
其餘部分像是 about, dates...etc 這些比較固定, 就直接修改 html 

所以如果不想要重做rocling 網站, 想直接簡單改資料和文案可以考慮採用
template engine: doT.js

設計
---
目前 template 預設行為是抓所有 tpl="{template name}" 的 tag, 並抓其底下的 <data>{template data|JSON string}</data>, render html 在塞回該 tag 底下

template 會直接從 ./templates/{template name}.tpl 抓取

example:

./templates/sponsors.tpl
```
...
sponsors html ...
...
```

./index.html
```
...
<section tpl="sponsors">
    <data hidden>
        {}
    </data>
</section>
...
```

最後 index.html 這部分會修改成
```
...
<section tpl="sponsors">
...
sponsors html ...
...
</section>
...

```

說明
---
所以原則上只要改 tpl 對應的 template & 其資料即可

deploy 
--- 
目前已經有寫好github action, 只要符合 rocling\d+, 那每次在push 到main branch 就會自動deploy 到 {rocling\d+}.aclclp.org.tw

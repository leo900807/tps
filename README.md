# TPS 使用說明

[Readme file on HackMD](https://hackmd.io/@leo900807/ryQacPTwv)

- [題目結構](#題目結構)
- [TPS 指令](#TPS-指令)

## 題目結構

一道題目以該題英文名稱為資料夾名稱，且該資料夾包含以下資料夾及檔案

### 資料夾

[`gen/`](#gen) , [`scripts/`](#scripts) , [`solution/`](#solution) , [`statement/`](#statement) , [`validator/`](#validator)

##### 以下為非必要的資料夾

[`checker/`](#checker)：若該題需要 special judge 則會有此資料夾  

[`grader/`](#grader)：若該題為互動題，則會有此資料夾  

[`public/`](#public)：若有需要提供給參賽者的檔案 (e.g. 供測試用的 grader、測資) 會放置於這個資料夾

##### 需要 Makefile 的資料夾

`gen/` , `validator/` , `checker/`  

`Painting/` <font color="red"><B>為範例資料夾</B></font>  
`template/` <font color="red"><B>為空資料夾，可以直接複製成新的題目資料夾</B></font>

### 檔案

[`problem.json`](#problemjson) , [`solutions.json`](#solutionsjson) , [`subtasks.json`](#subtasksjson)

## gen/

測資生成器會放置於這個資料夾  

<font color="red"><B>請盡量讓生成器接收同樣的參數時可以產生同樣的測資，避免因為產生非預期的測資而沒卡到要卡的東西，建議可以使用</B></font> [testlib.h](https://github.com/MikeMirzayanov/testlib)

### gen/data

這個檔案是生成測資的指令，詳細撰寫方式請參見 [TPS 的說明](https://github.com/ioi-2017/tps/tree/master/docs#gendata)  

<font color="red"><B>這個檔案請勿使用 dos 格式</B></font>

### gen/manual

手動生的測資可以放在這邊讓 `gen/data` 引入

## scripts/

TPS 使用的腳本，基本上不會動到

## solution/

這個資料夾存放**標程**與**其他解題方法的程式碼 (包含需要被 hack 的程式碼)**

## statement/

題目的 .tex 檔存放於此

## validator/

驗證測資正確性所使用的程式，包含但不限於變數範圍、輸入格式以及所有子任務的限制  

若測資正確則 validator 回傳 0，否則回傳非 0 值

## checker/

存放一份用來確認選手輸出是否正確的程式碼，會編譯成執行檔 checker 以匯入 CMS  

<font color="red"><B>請注意 Makefile 中編譯出來檔案的名稱須為 checker.exe 且在</B></font> `chmod +x` <font color="red"><B>後須可執行</B></font>

## grader/

存放用來在 judge 讓選手呼叫的函式庫

## public/

存放要提供給選手的檔案，在這個資料夾的所有東西會被壓縮成一個 .zip 檔放在 CMS 的 Attachment 中  

若為互動題則可以提供讓選手測試用的 grader  

若為 Output Only 則提供輸入檔  

其他也能提供一些檔案，e.g. 較大的範例測資、統合題本

## problem.json

題目的設定檔，包含題目的時限與一些 CMS 的設定，詳細撰寫方式請參見 [TPS 的說明](https://github.com/ioi-2017/tps/tree/master/docs#problemjson)

## solutions.json

標程與其他解法的程式碼，其中用來產生輸出檔的標程設定為 `"verdict": "model_solution"` ，詳細撰寫方式請參見 [TPS 的說明](https://github.com/ioi-2017/tps/tree/master/docs#solutionsjson)

## subtasks.json

子任務分配的設定檔，包含分數及 validator 與子任務的對應關係，詳細撰寫方式請參見 [TPS 的說明](https://github.com/ioi-2017/tps/tree/master/docs#subtasksjson)

## TPS 指令

<font color="red"><B>需先安裝 tps</B></font>  

`sudo ./install-tps.sh`  

需要的套件詳見 [TPS 的說明](https://github.com/ioi-2017/tps/tree/master/docs#Prerequisites-for-the-command-line-interface)

### verify

在題目資料夾下 `tps verify` 的指令，可以檢查現在的題目資料夾有沒有問題

### gen

在題目資料夾下 `tps gen` 的指令，tps 會自動生成並驗證測資，可選參數詳見 [TPS 的說明](https://github.com/ioi-2017/tps/tree/master/docs#gen)

### invoke

在題目資料夾下 `tps invoke <solution file>` 測試該程式碼的輸出與標準程式輸出的比較結果，可選參數詳見 [TPS 的說明](https://github.com/ioi-2017/tps/tree/master/docs#invoke)

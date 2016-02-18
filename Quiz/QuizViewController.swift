//
//  QuizViewController.swift
//  Quiz
//
//  Created by ohtatomotaka on 2015/02/10.
//  Copyright (c) 2015年 LifeisTech. All rights reserved.
//

import UIKit

class QuizViewController: UIViewController {
    //クイズを格納する配列
    var quizArray = [AnyObject]()
    
    //正解数
    var correctAnswer:Int = 0
    
    //クイズを表示するTextView
    @IBOutlet var quizTextView: UITextView!
    
    //選択肢のボタン
    @IBOutlet var choiceButtons1: UIButton!
    @IBOutlet var choiceButtons2: UIButton!
    @IBOutlet var choiceButtons3: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var tmpArray = [AnyObject]()
        
        //------------------------ここから下にクイズを書く------------------------//
        tmpArray.append(["図書館を舞台にした表現の自由を守る戦いを描いたシリーズ名はどれ！","図書館作戦","図書館の変","図書館戦争",3])
        tmpArray.append(["『図書館戦争』の主人公の名前は？","有","都","郁",3])
        tmpArray.append(["『図書館戦争』より、図書館を守る武装組織の名前は？","図書自衛隊","図書隊","図書館戦隊",2])
        tmpArray.append(["『図書館戦争』より、図書隊の精鋭を集めた部隊は？","図書特殊部隊(ライブラリータスクフォース）","LIT","SAT",1])
        tmpArray.append(["『図書館戦争』より、郁の同期で情報屋として知られるのは？","柴咲コウ","柴崎麻子","栗山千明",2])
        tmpArray.append(["『図書館戦争』より、郁の同期で同じ班に所属する隊員は？","手塚聡","福士蒼汰","手塚 光",3])
        tmpArray.append(["『図書館戦争』より、タスクフォースにおける郁の班の班長は？","堂上篤","岡田准一","小牧幹久",1])
        tmpArray.append(["『図書館戦争』より、郁は高校生の時助けてくれた図書隊員をなんと呼んでいた？「私の〇〇」","先生","王子様","彼氏",2])
        tmpArray.append(["『図書館戦争』より、図書隊のモチーフに使われている花は？","バラ","カミツレ(カモミール)","ラベンダー",2])
        tmpArray.append(["『図書館戦争』より、カミツレの花言葉は？","苦難の中の愛","苦難の中の友情","苦難の中の力",3])
        tmpArray.append(["『図書館戦争』シリーズ第二作目は？","図書館改革","図書館内乱","図書館革命",2])
        tmpArray.append(["『図書館戦争』より、郁が手塚にかけた技は？","投げっぱなしジャーマン","十字固め","ヘッドロック",1])
        tmpArray.append(["『図書館内乱』の作品中に登場し実際に出版された小説は？","『ストーリーセラー』","『キケン』","『レインツリーの国』",3])
        tmpArray.append(["『レインツリーの国』より、レインツリーの花言葉は？","歓喜、胸のときめき","愛情、胸のときめき","歓喜、友情",1])
        tmpArray.append(["自衛隊三部作のうち、海上自衛官が主人公のSFは？","空の中","海の中","塩の街",2])
        tmpArray.append(["自衛隊三部作のうち航空自衛隊の女性ファイターパイロットが登場するのは？","空の中","海の中","塩の街",1])
        tmpArray.append(["『クジラの彼』より、海自の潜水艦乗りを恋人にもつ聡美は潜水艦を何に例えたか","イルカ","サメ","クジラ",3])
        tmpArray.append(["県庁を舞台にした小説は？『県庁〇〇〇〇〇課』","おもてなし","もりあげ","おたのしみ",1])
        tmpArray.append(["『県庁おもてなし課』は何県の県庁が舞台となっているか？","神奈川県","高知県","島根県",3])
        tmpArray.append(["『県庁おもてなし課』より、主人公・掛水が最後に見出した広報に必要なものは？おもてなし〇〇〇〇","マインド","セレクト","コレクト",1])
        tmpArray.append(["空自の広報部を描いた小説は？","『空飛ぶ広報室』","『広報官、走る！』","『恋する広報室』",1])
        tmpArray.append(["『空飛ぶ広報室』の主人公の苗字は？","空野","空井","空中",2])
        tmpArray.append(["『空飛ぶ広報室』より、空自の航空祭などで展示飛行を行うチームをなんという？","ブルーインパルス","ホワイトストリーム","スカイキャット",1])
        tmpArray.append(["『空飛ぶ広報室』より、空井のタックネームは？","ブルー","スカイ","フライ",2])
        tmpArray.append(["『空飛ぶ広報室』より、空中に大きなハートを描くブルーインパルスの技は？","スカイハート","バーティカルキューピッド","ビッグハート",2])
        tmpArray.append(["『空飛ぶ広報室』より、広報室長の名前は？","鷲坂","鷹坂","鷺坂",3])
        tmpArray.append(["『空飛ぶ広報室』より、空井たちを取材したTV番組のAD・稲葉リカのあだ名は？","リカぴょん","いなぴょん","いなば",2])
        tmpArray.append(["有川浩さんの作品は？","『食べ物図鑑』","『生き物図鑑』","『植物図鑑』",3])
        tmpArray.append(["『植物図鑑』の主人公の名前は？","あやか","さやか","はるか",2])
        tmpArray.append(["『植物図鑑』でイツキがフキノトウで作った料理は天ぷらと何？","ばっけ味噌","ちゃんちゃん焼き","スパゲッティ",1])
        tmpArray.append(["『植物図鑑』より、ハゼランの別名は？","ゴゴサンジ","サンジソウ","サンジバナ",2])
        
        //------------------------ここから上にクイズを書く------------------------//
        
        // 問題をシャッフルしてquizArrayに格納する
        while (tmpArray.count > 0) {
            let index = Int(arc4random_uniform(UInt32(tmpArray.count)))
            quizArray.append(tmpArray[index])
            tmpArray.removeAtIndex(index)
        }
        choiceQuiz()
    }
    
    func choiceQuiz() {
        quizTextView.text = quizArray[0][0] as! String
        
        //選択肢のボタンにそれぞれ選択肢のテキストをセット
        choiceButtons1.setTitle(quizArray[0][1] as? String, forState: .Normal)
        choiceButtons2.setTitle(quizArray[0][2] as? String, forState: .Normal)
        choiceButtons3.setTitle(quizArray[0][3] as? String, forState: .Normal)
    }
    
    @IBAction func choiceAnswer(sender: UIButton) {
        if quizArray[0][4] as! Int == sender.tag {
            //正解数を増やす
            correctAnswer++
        }
        
        quizArray.removeAtIndex(0)
        //解いた問題数の合計が予め設定していた問題数に達したら結果画面へ
        if quizArray.count == 0 {
            performSegueToResult()
        } else {
            choiceQuiz()
        }
    }
    
    func performSegueToResult() {
        performSegueWithIdentifier("toResultView", sender: nil)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        if (segue.identifier == "toResultView") {
            
            let resultView = segue.destinationViewController as! ResultViewController
            resultView.correctAnswer = self.correctAnswer
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}



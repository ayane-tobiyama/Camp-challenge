/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package objectkiso;
import java.io.*;
import java.util.ArrayList;
/**
 *
 * @author ayanet
 */
public class BlackJack{
    
    public static Integer Input() throws IOException{
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        String str = br.readLine();
        int res = Integer.parseInt(str);
        return res;
    }
    
    public static void Hantei(int m,int y){
        String han = "";
        System.out.println("私の合計：" + m);
        System.out.println("あなたの合計：" + y);
        if((m==y)||(m>21&&y>21)){       
            han = "＜☆★☆引き分けです★☆★＞";
        }else if((m==21)||(21-m<21-y)||(y>21)){
            han = "＜☆★☆私の勝ちです★☆★＞";
        }else if((y==21)||(m>21)||(21-m>21-y)){
            han = "＜☆★☆あなたの勝ちです★☆★＞";
        }else{
            han = "＜⚠⚠⚠エラーです⚠⚠⚠＞";
        }
        System.out.println(han);
    }
    
    public static void main(String args[])throws IOException{
        
        Dealer ME = new Dealer();//Dealerクラス型のMEを定義
        User YOU = new User();//Userクラス型のYOUを定義
        int han;
        ArrayList<Integer> x = new ArrayList();//このクラスでこき使う配列
        System.out.println("♦♤❤♧BlackJackを始めます♢♠♡♣");
        System.out.println("手札をシャッフルしました");
        YOU.setCard(ME.deal());//ユーザーに手札を配る
        ME.setCard(ME.deal());//ディーラーが手札を取得
        System.out.println("あなたの現在の手札の合計：" + YOU.open());        
        System.out.println("YESの場合は１、NOの場合は２を入力してください");
        OUTER:
        while (YOU.checkSum()==true) {
            System.out.print("もう一枚カードを引きますか：");
            han = Input();
            switch (han) {
                case 1:
                    x.add(ME.hit());
                    YOU.setCard(x);
                    break;
                case 2:
                    break OUTER;
                default:
                    System.out.println("YESの場合は１、NOの場合は２を入力してください");
                    break;
            }
            System.out.println("あなたの現在の手札の合計：" + YOU.open());
            x.clear();
        }
        while(ME.checkSum()==true){
            x.add(ME.hit());
            ME.setCard(x);
            x.clear();
        }
        Hantei(ME.open(),YOU.open());           
    }
}

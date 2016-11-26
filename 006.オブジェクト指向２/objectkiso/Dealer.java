/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package objectkiso;

import java.util.ArrayList;
import java.util.Collections;

/**
 *
 * @author ayanet
 */
public class Dealer extends Human {
    
    ArrayList<Integer> cards = new ArrayList();
    
    public Integer open(){
        int sum = 0;
        for(int i=0;i<myCards.size();i++){
            sum += myCards.get(i);
        }
        return sum;
    }
    
    public void setCard(ArrayList<Integer> x){
        for(int i=0;i<x.size();i++){
            myCards.add(x.get(i));
        }
    }
    
    public Boolean checkSum(){
        int sum = 0;
        Boolean han = true;
        for(int i=0;i<myCards.size();i++){
            sum += myCards.get(i);
        }
        if(sum>=17){
            han = false;
        }
        return han;
    }
    
    public ArrayList<Integer> deal(){
        ArrayList<Integer> x = new ArrayList();
        x.add(cards.remove(0));
        x.add(cards.remove(0));
        return x;
    }
    
    public Integer hit(){
        return cards.remove(0);
    }
    
    public Dealer(){  
        for(int i=1;i<=52;i++){
            if(i%13>10||i%13==0){
                cards.add(10);
            }else{
                cards.add(i%13);
            }
        } 
        Collections.shuffle(cards);
    }
    
    public void show(){}
}

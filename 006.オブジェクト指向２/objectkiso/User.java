/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package objectkiso;

import java.util.ArrayList;

/**
 *
 * @author ayanet
 */
public class User extends Human {

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
        if(sum>=21){
            han = false;
        }
        return han;
    }
}

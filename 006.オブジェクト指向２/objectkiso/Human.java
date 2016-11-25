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
abstract class Human {
    abstract public Integer open();
    abstract public void setCard(ArrayList<Integer> x);
    abstract public Boolean checkSum();
    ArrayList<Integer> myCards = new ArrayList<Integer>();
}

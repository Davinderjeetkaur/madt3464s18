/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author macstudent
 */
public class StringReverse {
    public static void main(String[] args){
    // Using traditional approach
   // String result="This is  a test";
   // for(int i=string.length()-1; i>=0; i--) {
    //    result = result + string.charAt(i);
    //}
    //System.out.println(result);

    // Using StringBuffer class
    StringBuffer buffer = new StringBuffer("This is a test");
    System.out.println(buffer.reverse());    
}
}

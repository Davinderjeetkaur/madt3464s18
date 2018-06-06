/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author macstudent
 */
public class ExceptionalHandling {
    public static void main(String args[]){
        try
        {
        int n = Integer.parseInt("123a");
        n=n/(n-n);
  
        System.out.println("n :" + n);
       
        System.out.println("n :" + n);
        if(n<150)
        {
        throw new NumberFormatException();
        }
        int numbers[]={10,20,30};
        System.out.println(numbers[5] + "number[5] : ");
    }
        
    
   
       
    catch(ArithmeticException e){
        System.err.println(e);
        //e.printStackTrace();
    }
        
    catch(ArrayIndexOutOfBoundsException e){
    System.err.println(e);
        //e.printStackTrace();
    }catch(NumberFormatException e){
     System.err.println(e);
        //e.printStackTrace();
}
    finally
{
            System.out.println("the finally block");
        
}}
    

    }
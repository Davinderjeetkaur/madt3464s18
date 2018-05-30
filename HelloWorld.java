
import static java.time.Clock.system;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Davinder
 */
public class HelloWorld {
    public static void main(String args[])
    {
        System.out.println("Hey This is Davinder.");
    
        int n1 = 10;
        int n2;
        float f1 = 10.5f;
        double d1 = 12.2345;
        short s1 = 12;
        char c1 = 'a';
        String str1 = "java";
        boolean b1 = true;
         System.out.println("value of n1 is" + n1);
        n1 *= 20;//n1 = n1*20;
        System.out.println("value of n1 is" + n1);
        n1++;//n1 = n1+1; ++n1;
        System.out.println("value of n1 is" + n1);
        
        ++n1;
        System.out.println("value of n1 is " + n1);
        
        --n1;//n1 = n1- 1;n1 = 201;
        System.out.println("value of n1 is " + n1);
        
        n2 = n1++;//first assign to n2 then increment n1;
        System.out.println("value of n1 is" + n1);
        System.out.println("value of n2 is " + n2);
      
        n2 = n1++;
         System.out.println("value of n1 is " + n1);
        System.out.println("value of n2 is " + n2);
        
        c1 = 'A';
        System.out.println("value of c1 is " + c1);
        
        System.out.println("value of n1 is " + (n1+10));
        
        System.out.println(n1+10+"value of n1 is");
        
        System.out.println("value of c1 is "+ c1 + 10);
        
        System.out.println("value of c1 is "+ (char)(c1 + 10));//considers the ascii value of 'A' that is stored in c1.
        
        System.out.println("value of c1 is "+ ++c1);
    }
}
    


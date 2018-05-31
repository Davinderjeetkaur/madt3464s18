/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package day22;

/**
 *
 * @author macstudent
 */
public class Day22 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        int n1=15;
        if(n1 %2 ==0){
            System.out.println("Even");
        
        }
        else
            System.out.println("odd");
        char pass='A';
        switch (pass)
        {
            case 'A':
                case'S':
                    case'O':
                    System.out.println("value is 10");}
        String province="ON";
        switch(province){
            case "(ON)":
             System.out.println(" Ontario");
             break;
            case "NV":
                System.out.println("Nova Scotia");
                break;
            case "AB":
                System.out.println("Alberta");
                break;
            default:
                System.out.println("not valid province");
                break;
                
                
        
                    
        }
        n1 = 20;
        while(n1 >10){
            //System.out.println("n1 :" + n1);
            n1--;
            
        }
        do{
            System.out.println("n1 :" + n1);
            n1--;
        }while(n1 >10);
        int i=0;
        for( ; ; ){
        {
            System.out.println("i :" + i++);
            
        }
        
                break;
        }
    for (i=1;i<=5; i++){
        if (i ==3){
        }else{
            System.out.println("i:" + i);
        }
    }
     
    for (i=1; i<=5; ++i){
        for(int space =5; space>i ; space--){
            System.out.print(" ");
        }
        for(int j=1; j<=i ; ++j){
            System.out.print("* ");
        }
        System.out.println("");
        
    }
    //for loop to display upside down pyramid;
    for(i=5; i>=1; i--)
    {for(int space =5; space>i; space--){
     System.out.print(" ");
    }
    for(int j=1; j<=i; j++){
     System.out.print("* ");
        }
        System.out.println("");
        
    }
    int numbers[]= new int[5];
    numbers[0]= 10;
    System.out.println("number [0] : " + numbers[0]);
    for (i=0; i<5; i++){
        numbers[i] = (i+1);
        System.out.println("number ["+i+"] : " + numbers[i]);
    }//
    

    for (i=0; i<5; i++){
        numbers[i] = (int)Math.pow((i+1),2);
        System.out.println("number ["+i+"] : " + numbers[i]);
    }
 for(i=0; i<numbers.length; i++){
     System.out.println(" value " + (i+1)+  " :" + (numbers[i]*10));
 }
 for(int no : numbers){
     System.out.println(" no :" + no);
 }
 int table[][]= new int[5][3];
 for(int row=0; row<5; row++){
   for(int col=0; col<3; col++){
       table[row][col]= row+col;
       System.out.print(table[row][col] + " ");
   } 
   System.out.println("");
 }
}
    
    
    
                          
        
        // TODO code application logic here
}
    


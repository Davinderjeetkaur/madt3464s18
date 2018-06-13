/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Generics;

/**
 *Representing the box with generic value type
 * @author macstudent
 * @version 1.0
 * @since 13 June 2018
 */
//Generic class
public class Generics {
    //generic method printArray
    /**
     * Printing list of elements
     * @param <E>Indicates the generic type
     * @param inputArrayList of elements to be printing
     */
    
    
    
    
    
    
    public static<E>void printArray(E[] inputArray){
        for(E element : inputArray){
            System.out.printf("%s,",element);
        }
        System.out.println();  
        
    }
    //determines the largest of three Comparable objects
    /**
     * 
     * @param <T>Generic type
     * @param x First value
    *@param y Second value
    * @param z third value
    * @return Return maximum of three elements
    */
    
    
    
    
    
    
    
    
    
    public static<T extends Comparable<T>> T maximum(T x,T y,T z){
        T max=x;
        if(y.compareTo(max)>0){
            max=y;
        }
        if(z.compareTo(max)>0){
            max=z;
        }
        return max;
    }
    
 
    
    public static void main(String[] args){
        Box<Integer> integerBox = new Box<Integer>();
        integerBox.set(new Integer(10));
        System.out.printf("Integer Value  : %d\n", integerBox.get());
        Box<String> stringBox=new Box<String>();
        stringBox.set(new String("Hello World"));
        System.out.printf("String Value  : %d\n\n", stringBox.get());
    
    Integer[] intArray={1,2,3,4,5};
    System.out.println("Array integerArray contains");
    printArray(intArray);
    Double[] doubleArray={1.1,2.2,3.3,4.4};
    System.out.println("Array doubleArray contains");
    printArray(doubleArray);
    Character[] charArray={'D','A','V','I','N'};
    System.out.println("Array characterArray contains");
    printArray(charArray);
    System.out.printf("max of %d ,%d and %d is %d\n\n",3,4,5,maximum(3,4,5));
    System.out.printf("max of %.1f, %.1f and %.1f is %.1f\n\n",6.6,8.8,7.7,maximum(6.6,8.8,7.7));
    System.out.printf("max of %s, %s and %s is %s\n\n","Apple","Orange","Pear",maximum("Apple","Orange","Pear"));
    
}}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package day6;

/**
 *
 * @author Davinderjeet
 */
public abstract class Shape {
    int x;
    int y;
    final int z=10;
    Shape(int x,int y){
        this.x=x;
        this.y=y;
    }
    void display(){
        System.out.println("Dispalying shape");
        
    } 
    
   abstract void draw();
  // {
       //         System.out.println("Drawing shape");

   // }
    
}

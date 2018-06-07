
import java.util.Scanner;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author macstudent
 */
public class Encrypt3 {
  void enc3() {
       String str ="";
        Scanner scanner = new Scanner(System.in);
        System.out.println("Enter String : ");
        str = scanner.next();
        for (int i = 0; i < str.length(); i++) {
            if (i % 2 == 1) {
                System.out.print(str.charAt(i));
            }
        }
        for (int j = 0; j < str.length(); j++) {
            if (j % 2 == 0) {
                System.out.print(str.charAt(j));
            }
        }
    }  
}

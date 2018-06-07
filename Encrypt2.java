
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
public class Encrypt2 {
    void enc2() {

      String str = "";
      Scanner scanner = new Scanner(System.in);
      System.out.println("Enter String : ");
      str = scanner.next();

      String s = str.toUpperCase();

      for (int i = 0; i <= 4; i++) {
         if (i % 2 == 0) {
            System.out.print((char) (s.charAt(i) + 2));

         } else {
            System.out.print((char) (s.charAt(i) + 1));
         }

      }
   }
}

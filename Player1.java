
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
public class Player1 {
    static int bowlerCount = 0;
    static int batsmenCount = 0;
    public static void main(String []args){
        Scanner in = new Scanner(System.in);
        Bowler []bowlers = new Bowler[2];
        Batsman []batsmen = new Batsman[2];
        for (int i = 0; i<4; i++){
            System.out.println("Enter the type of player: ");
            String choice = in.nextLine();
            if (choice.equalsIgnoreCase("Bowler"))
            {
                Bowler bowler = new Bowler();
                bowler.readData();
                bowlers[bowlerCount] = bowler;
                bowlerCount++;
            }
            else if (choice.equalsIgnoreCase("Batsman"))
            {
                Batsman batsman = new Batsman();
                batsman.readData();
                batsmen[batsmenCount] = batsman;
                batsmenCount++;
            }
        }
        for (int i = 0; i < bowlers.length; i++){
            Bowler bowl = (Bowler)bowlers[i];
            System.out.println(bowl.toString());
        }
        for (int i = 0; i < batsmen.length; i++){
            Batsman bat = (Batsman)batsmen[i];
            System.out.println(bat.toString());
        }
    }
}



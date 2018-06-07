
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
public class Players {
    String playerId;
    String playerName;
    Scanner in = new Scanner(System.in);
    Players(){
        playerId="P000";
        playerName="";
}
   Players(String playerId, String playerName){
        this.playerId = playerId;
        this.playerName = playerName;
   }
    void setplayerId(){
        System.out.println("Enter PlayerId : ");
        this.playerId = in.nextLine();
    }
    
    
    String getplayerId(){
        return this.playerId;
    }

    void setplayerName(){
        System.out.println("Enter PlayerName : ");
        this.playerName = in.nextLine();
    }
    
    
    String getplayerName(){
        return this.playerName;
    }
    void setData(){
        setplayerId();
        setplayerName();
        
    }
    void readData(){
        setplayerId();
        setplayerName();
    }
@Override
    public String toString(){
     return  "PlayerId : " + this.playerId + "\n PlayerName : " +
                this.playerName ;
        
     
}
}


    
    
    


   

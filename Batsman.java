/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author macstudent
 */
public class Batsman extends Players{
    int noBowlsPlayed, totalRuns, battingPoints;
    double strikeRate;
    int []runsTaken;
    
    Batsman(){
        super();
        noBowlsPlayed = 0;
        totalRuns = 0;
        battingPoints = 0;
        strikeRate = 0.0;
        runsTaken = new int[4];
    }
    
    Batsman(String playerID, String name, double strikeRate, int totalRuns, int battingPoints, int noBowlsPlayed, int[] runsTaken){
        super(playerID, name);
        this.strikeRate = strikeRate;
        this.totalRuns = totalRuns;
        this.battingPoints = battingPoints;
        this.noBowlsPlayed =  noBowlsPlayed;
        this.runsTaken = runsTaken;
    }
    
    void setNoBowlsPlayed(){
        System.out.println("Enter the number of balls played by the Batsman: ");
        this.noBowlsPlayed = in.nextInt();
    }
    
    void setRunsTaken(){
        for (int i = 0; i < 4; i++){
            System.out.println("Enter the number of " + (i+1) + "'s scored by the Batsman: ");
            this.runsTaken[i] = in.nextInt();
        }
    }
    
    void setTotalRuns(){
        for(int i = 0; i < runsTaken.length; i++){
            this.totalRuns += (runsTaken[i] * (i+1));
        }
    }
    
    void setStrikeRate(){
        this.strikeRate = (this.totalRuns/(double)this.noBowlsPlayed) * 100;
    }
    
    void calculatePoints(){
        int sixesPoints = 5 * this.runsTaken[5];
        int foursPoints = 3 * this.runsTaken[3];
        this.battingPoints = sixesPoints + foursPoints;
    }
    
    void calculateAverage(){
        setTotalRuns();
        setStrikeRate();
    }
    
    void readData(){
        super.readData();
        setNoBowlsPlayed();
        setRunsTaken();
        calculateAverage();
        calculatePoints();
    }
    
    String getDetailedRuns(){
        String str = "";
        for(int i = 0; i < runsTaken.length; i++){
            str = str+"\n"+(i+1)+"'s: "+runsTaken[i];
        }
        return str;
    }
    
    @Override public String toString(){
        return (super.toString()+"\nType: Batsman\nBowls Played: "+this.noBowlsPlayed+"\nRuns taken: "+getDetailedRuns()+"\nTotal Runs: "+this.totalRuns+"\nStrik Rate: "+this.strikeRate+"\nBatting points: "+this.battingPoints);
    }
}

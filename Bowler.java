/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author macstudent
 */
public class Bowler extends Players{
    double oversThrown, runsPerOver, runsPerWicket;
    int runsGiven, bowlingPoints, wicketsTaken;
    
    Bowler(){
        super();
        oversThrown = 0.0;
        runsPerOver = 0.0;
        runsPerWicket = 0.0;
        runsGiven = 0;
        bowlingPoints = 0;
        wicketsTaken = 0;
    }
    
    Bowler(String playerId, String playerName, double oversThrown, double runsPerOver, double runsPerWicket, int runsGiven, int bowlingPoints, int wicketsTaken){
        super(playerId,playerName);
        this.bowlingPoints = bowlingPoints;
        this.oversThrown = oversThrown;
        this.runsGiven = runsGiven;
        this.runsPerOver =  runsPerOver;
        this.runsPerWicket = runsPerWicket;
        this.wicketsTaken = wicketsTaken;
    }
    
    void setOversThrown(){
        System.out.println("Enter the number of overs thrown by the Bowler: ");
        this.oversThrown =in.nextDouble();
    }
    
    void setRunsGiven(){
        System.out.println("Enter the number of runs given by the Bowler: ");
        this.runsGiven = in.nextInt();
    }
    
    void setWicketTaken(){
        System.out.println("Enter the number of wickets taken by the Bowler: ");
        this.wicketsTaken = in.nextInt();
    }
    
    void setRunsPerOver(){
        this.runsPerOver = this.runsGiven/(double)this.oversThrown;
    }
    
    void setRunsPerWicket(){
        if(this.wicketsTaken == 0){
            this.runsPerWicket = this.runsGiven;
        } else{
            this.runsPerWicket = this.runsGiven/(double)this.wicketsTaken;
        }
    }
    
    void calculatePoints(){
        int wicketPoints = 5 * this.wicketsTaken;
        int economyPoints;
        if (this.runsPerOver >= 0.0 && this.runsPerOver <= 3.0){
            economyPoints = 10;
        }
        else {
            economyPoints = 5;
        }
        this.bowlingPoints = wicketPoints + economyPoints;
    }
    
    void calculateAverage(){
        setRunsPerOver();
        setRunsPerWicket();
    }
    
    void readData(){
        super.readData();
        setOversThrown();
        setRunsGiven();
        setWicketTaken();
        calculateAverage();
        calculatePoints();
    }
    
    @Override public String toString(){
        return (super.toString()+"\nType: Bowler\nOvers Thrown: "+this.oversThrown+"\nRuns Given: "+this.runsGiven+"\nWickets Taken: "+this.wicketsTaken+"\nRuns per over: "+this.runsPerOver+"\nRuns per wicekt: "+this.runsPerWicket+"\nBowling points: "+this.bowlingPoints);
    }
}



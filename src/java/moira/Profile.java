/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package moira;

/**
 *
 * @author user
 */
public class Profile {
    String numberFormat;
    String internetPlan;
    String voice;
    String churn;
    public Profile(String numberFormat,String internetPlan,String voice,String churn){
    this.numberFormat=numberFormat;
    this.internetPlan=internetPlan;
    this.voice=voice;
    this.churn=churn;
    }
    public String getNumberFormat(){return numberFormat;}
    public String getInternetPlan(){return internetPlan; }
    public String getVoice(){return voice; }
    public String getChurn(){return churn; }
}

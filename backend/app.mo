import Debug "mo:base/Debug";
import Float "mo:base/Float";

persistent actor Project{
  //Decentralized Banking System

  //check balance, top up, with draw

  //check balance
  stable var balance: Float = 100;
  public func checkBalance(): async Text{
    return "Your balance is : " #Float.toText(balance);
  };

  //top up
  public func topUp(amount : Float): async Text{
    balance := balance + amount;
    return "An amount  : " #Float.toText(amount) # "added";
  };

};
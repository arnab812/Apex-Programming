// 28-11-2022 : Create an Apex class, add a method to perform some specific operation, debug the code 

// Problem statement : Fetch the 5 oldest Account records from your org. and describe them as - 'Heritage Account' : 
public class OlderAccountsUtility {
	public static void updateOlderAccounts() {
      // Get the 5 oldest accounts
      Account[] oldAccounts = [SELECT Id, Description FROM Account ORDER BY CreatedDate ASC LIMIT 5];
      // loop through them and update the Description field
      for (Account acct : oldAccounts) {
          acct.Description = 'Heritage Account';
      }
      // save the change you made
      update oldAccounts;
    }
}

// class -> OlderAccountsUtility
// method -> updateOlderAccounts

/*
=> Apex Classes :- 
    One of the benefits of Apex classes is code reuse.
    Class methods can be called by triggers and other classes.
*/


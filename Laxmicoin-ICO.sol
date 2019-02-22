//Laxmicoin ICO
//Version of compiler
pragma solidity ^0.4.11;

contract laxmicoin_ico {
    //Introducing the maximum number of Laxmicoin available for sale 
    uint public max_laxmicoins = 1000000;
    /*max_laxmicoin is a variable for maximum number of coins available for sale,
    Since its available for sale to the public, it must be a public variable and the maximum
    numbers of coin is 1 million only, So it is assigned to an unsigned integer which can go 
    from 0 to 32 bit limit i.e 430 million i.e. the maximum number can be stored in uint.*/
    
    //Introducing the USD to Laxmicoin conversion rate 
    uint public usd_to_laxmicoins = 1000;
    /*usd_to_laxmicoin is a variable for conversion rate of 1 USD is equals to 1000 Laxmicoins,
    its public because else it may sound fishy for an ICO. If someone doesnt know what they are buying
    with a dollar, that would be totally fishy.*/
    
    //Introducing the total number of Laxmicoins that have been bought by the investors
    uint public total_laxmicoins_bought = 0;
    /*total_laxmicoins_bought is a variable that ll count how many Laxmicoins have been bought by
    the investors. It is a public variable so everyone can see how many Laxmicoins are left to invest on.
    It is initialised to 0 because in the starting no one has invested.*/
    
    //Mapping from the investor address to its equity in Laxmicoins and USD
    mapping(address => uint) equity_laxmicoins;
    mapping(address => uint) equity_usd;
    /*A mapping is like a function but in which the data of the mapping is stored in an array.
    So its not like a function that stores the values in variables and returns operation of this variable.
    There ll be two mappings, One ll return the equity in coins and other ll return in USD.
    These mappings ll have input variable which ll be the investor address and which ll return for each
    of these addresses the equity.
    We define a mapping by taking input as the address of the investor which ll return an integer as the
    type of the variable and then the name of the variable that ll contain the value returned by the 
    mapping. */
    
    //Checking that at anytime during the ICO if an investor can buy Laxmicoins
    modifier can_buy_laxmicoins(uint usd_invested) {
        require (usd_invested * usd_to_laxmicoins + total_laxmicoins_bought <= max_laxmicoins);
        /*A Modifier is used in smart contracts to check if certain conditions are met before executing 
        the rest of the body of code in a function.
        can_buy_laxmicoins is a modifier taking argument usd_invested which is an unsigned integer type,
        usd_invested is a variable for the amount the investor wants to invest.
        So inorder to buy the coins, there must be coins left. So to check that, we used require.
        Require can be used to check for conditions and throw an exception if the condition is not met.
        The condition is that the amount of the Laxmicoins investor wants to buy + total laxmicoins 
        already bought must be less than the total number of laxmicoins in order to make the purchase.*/
        _;
        /*The underscore here is just to say that the function to which we will link the modifier ll only
        be applied if the condition is verified i.e if the condition is true.*/
    }
    
    //Getting the equity in laxmicoins of an investor
    function equity_in_laxmicoins(address investor) external constant returns (uint) {
        return equity_laxmicoins[investor];
    }
    /*equity_in_laxmicoins is a function that ll get equity in laxmicoins of an investor, it ll take 
    argument as address i.e the public key, a unique identifier that allows to differentiate investors,
    and the name of the variable ll be 'investor'. The address of the investor is an external constant
    because its out of the contract, i.e. not proper to the contract so we need to specify it, and this
    function returns a unsigned integer. which is the equity_laxmicoins.
    Why are we making this function? Why not to use the mapping directly?
    Well becuase this function we are making is exactly the tool with which we ll interact in 
    myetherwallet. We are just retaking the mapping in order to be able to call this in myetherwallet.
    */
    
    //Getting the equity in USD of an investor
    function equity_in_usd(address investor) external constant returns (uint) {
        return equity_usd[investor];
    }
    
    //Buying Laxmicoins
    /* This function ll get us the buy laxmicoin action in the myetherwallet,
    This function ll not return anything but ll update the 3 variables i.e the equity_usd, 
    equity_laxmicoins, total_laxmicoins_bought after a investor buys some coins*/
    function buy_laxmicoins(address investor, uint usd_invested) external
    /*buy_laxmicoins function ll take 2 arguments, one is the address of the investor and the other one ll
    be unsigned integer type usd_invested. The input variables are external so we need to specify it. 
    We need to apply the modifier 'can_buy_laxmicoins' since we need to check first if the investor can 
    really buy the laxmicoins or not. 'can_buy_laxmicoins' modifier ll take only one argument i.e 
    usd_invested, and there is no need to specify the type of the argument because we have already did it
    in the function.
    */
    can_buy_laxmicoins(usd_invested) {
        uint laxmicoins_bought = usd_invested * usd_to_laxmicoins;
        /*laxmicoins_bought is a variable that ll have the number of laxmicoins bought by the investor,
        usd_invested(amount invested) * usd_to_laxmicoins(conversion rate from usd to laxmicoin) ll give 
        the laxmicoins_bought. and since this variable was never declared before so we need to mention the
        type of the variable.
        */
        equity_laxmicoins[investor] += laxmicoins_bought;
        //Updating the equity of laxmicoin of the investor i.e number of laxmicoins bought by the investor
        equity_usd[investor] = equity_laxmicoins[investor] / 1000;
        //Updating the equity of USD of the investor with conversion rate
        total_laxmicoins_bought += laxmicoins_bought;
        //Updating total_laxmicoins_bought
    }
    
    //Selling Laxmicoins
    function sell_laxmicoins(address investor, uint laxmicoins_sold) external {
        equity_laxmicoins[investor] -= laxmicoins_sold;
        equity_usd[investor] = equity_laxmicoins[investor] / 1000;
        total_laxmicoins_bought -= laxmicoins_sold;
    }

}
    
    


class BankAccount{
  double? _balance;
  String? _name;

BankAccount(this._balance,this._name);
  double get balance => _balance!;
  set balance(double balance) => this._balance = balance;

  String get name => _name!;
  set name(String name) => this._name = name;
  

  void deposit(double amount){
   balance += amount;
   print('ฝากเงิน : ${amount} ยอดคงเหลือในบัญชี ${_balance}');
  }
  void withdraw(double amount){
    balance -= amount;
    print('ถอน : ${amount} ยอดคงเหลือในบัญชี ${_balance}');
  }

  void showBalance(){
     print('ยอดเงินทั้งหมด : $balance');
  }
 

}
class SavingAccount extends BankAccount{
  double? _interestRate ;

  SavingAccount(double _balance,String _name,this._interestRate):super(_balance,_name);
   double get interestRate => _interestRate!;
   set interestRate(double interestRate) => this._interestRate = interestRate;

  void addinterest(double interestRate){
    balance = (balance * interestRate/100 ) + balance;
    print('ดอกเบี้ย : ${interestRate} ยอดคงเหลือในบัญชี ${balance}');
  }


}

void main(List<String>args){
  var m = SavingAccount(2000,'มานะ',0);
  m.deposit(400);
  m.withdraw(100);
  m.showBalance();
  m.addinterest(0.25);



}

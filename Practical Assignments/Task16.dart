import 'dart:collection';
import 'dart:io';

void main(){
  Map<String, int> address = HashMap();
  bool istrue = false;


  while(true){
    print("Choose \n1 to add, \n2 to update, \n3 to remove and \n4 to exit");
    int operation = int.parse(stdin.readLineSync().toString());
    if(operation==1){
      add_new(address);
    }
    else if(operation==2){
      update_add(address);
    }
    else if(operation==3){
      update_add(address);
    }
    else if(operation==4){
      break;
    }
  }
}

void update_add(Map<String, int> address) {

}

void add_new(Map<String, int> address) {
  while(true){
    print("Enter Name");
    String inp_name = stdin.readLineSync().toString();
    if(inp_name.toLowerCase() == 'done') {
      break;
    }
    print("Enter Number");
    int inp_num = int.parse(stdin.readLineSync().toString());
    address.addAll({inp_name: inp_num});
  }

  address.forEach((key, value) {
    print('$key \t $value');
  });
}
class ValidatorHandler {
  static String? Function(String?)? emailValidator = (String? txt){
    if(!txt!.contains("@") || !txt.contains(".")){
      return "You should enter valid email";
    }else if (txt.trim().contains(" ")){
      return "Email should not have spaces";
    }else if (txt.isEmpty){
      return "Email is Required";
    }else{
      return null;
    }
  };


  static String? Function(String?)? passwordValidator = (String? txt){
    if(txt!.length < 6){
      return "Password should be more than 6 chars";
    }else if (txt.contains(" ")){
      return "Password should not have spaces";
    }else if (txt.isEmpty) {
      return "Password is Required";
    }else{
      return null;
    }
  };


  static String? Function(String?)? nameValidator = (String? txt){
    if(txt!.isEmpty){
      return "This Field is Required";
    }else if (txt.length < 3){
      return "Enter longer name please";
    }else{
      return null;
    }
  };

}
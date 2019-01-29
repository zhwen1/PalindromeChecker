public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  if(reverse(noSpaces(onlyLetters(word))).toLowerCase().equals(noSpaces(onlyLetters(word)).toLowerCase())){
    return true;
  }
  else{
    return false;
  }
}
public String reverse(String str)
{
  String x = "";
  for(int i=str.length()-1;i>=0;i--){
    x = x+ str.substring(i,i+1);
  }
  return x;
}
public String onlyLetters(String sString){
  String x = "";
  for(int i=0; i<sString.length();i++){
   if(Character.isLetter(sString.charAt(i))==true){
     x +=sString.substring(i,i+1);
    }
  }
  return x;
}
public String noSpaces(String sWord){
  String x = "";
  for(int i=0; i<sWord.length();i++){
    if(Character.isLetter(sWord.charAt(i))==true){
      x = x + sWord.substring(i,i+1);
    }
  }
  return x;
}




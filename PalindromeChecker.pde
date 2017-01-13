public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }

    //System.out.println(reverse(noSpace(noCapital(noPunctuation(lines[i])))));

  }
}
public boolean palindrome(String word)
{
  if (reverse(noSpace(noCapital(noPunctuation(word)))).equals(noSpace(noCapital(noPunctuation(word))))) {
    return true;
  }

  return false;
}
public String reverse(String str)
{
    String sNew = new String();
    
    for (int i = str.length() - 1; i >= 0; i --) {
      sNew = sNew + str.substring(i, i + 1);
    }

    return sNew;
}

public String noSpace(String str) {
  String result = new String ();
  
  for (int i = 0; i < str.length(); i ++) {
    if (! str.substring(i, i + 1).equals(" ")) {
      result = result + str.substring(i, i + 1);
    }
  }
  
  return result;
}

public String noCapital(String sWord){
  return sWord.toLowerCase();
}

public String noPunctuation(String str) {
  String result = new String ();

  for (int i = 0; i < str.length(); i ++) {
    if (! str.substring(i, i + 1).equals(",") && ! str.substring(i, i + 1).equals("!") && ! str.substring(i, i + 1).equals("'")) {
      result = result + str.substring(i, i + 1);
    }
  }

  return result;
}
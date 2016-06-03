/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ehealthafricatest;

/**
 *
 * @author Pius-PC
 */
public class EHealthAfricaTest {

   /**
     * @param string1
     * @param string2
     * @return 
     */
    //number 2A
         public String GetCharsorderNN(String string1, String string2)
        {
            String ret = null;
            for (int c = 0; c < string1.length(); c++)
            {
                for (int cc = 0; cc < string2.length(); cc++)
                {
                    if (string1.charAt(c) == string2.charAt(cc))
                    {
                        ret += string1.charAt(c);
                        break;
                    }
                }
            }

            return ret;
        }
         //Remove duplicate characters from a string
         //reusable code for 
         public static String RemoveDuplicateCharacter(String s)
{
    char [] temp = s.toCharArray();
    int lengthofcharacterarray =temp.length; 
    for (int i=0;i<lengthofcharacterarray;i++)
    {
        for (int j = i+1; j<lengthofcharacterarray;j++)
        {
            if(temp[i]==temp[j])
            {
                int test =j;
                for(int k=j+1; k<lengthofcharacterarray ; k++)
                {
                    temp[test] = temp[k];
                    test++;
                }
                lengthofcharacterarray--;
                j--;
            }
        }
    }
    return String.copyValueOf(temp).substring(0,lengthofcharacterarray);
}      
         //number 2B
        public String GetCharsorderN(String string1, String string2)
        {
            String ret = null;
            //Remove duplicate characters from the string
            String xx = RemoveDuplicateCharacter(string2);
            for (int c = 0; c < string1.length(); c++)
            {
                for (int k = 0; k < xx.length(); k++)
                {
                    if (string1.charAt(c) == xx.charAt(k))
                    {
                        ret += string1.charAt(c);
                    }
                }
            }
            return ret;
        }
        
        
  //number 3
          public int[] GetDistinctValueArray(int[] nondistinctValueArray) {
          int length = nondistinctValueArray.length;
          int[] newarray = new int[length];
          int newlength = 0;
          int currentvalue = 0;
          for (int i = 0; i < length; i++) 
          {
          if (currentvalue != nondistinctValueArray[i]) 
          {
          currentvalue = nondistinctValueArray[i];
          newarray[newlength] = currentvalue;
          newlength++;
          }
          }
          return newarray;
          }
  
  //number 4
         public int[] rotateArray(int[]arraytoRotate, int n) {
         int length = arraytoRotate.length;
         int[] newarray = new int[length];
         int newindex = n%length;
         for (int i = 0; i < length; i++) {
         if (newindex >= length)
         newindex = newindex-length;
         newarray[newindex] = arraytoRotate[i];

        newindex++;
         }
        return newarray;
}
    
    
    //number 5A
     public  int LCM(int[]arrayd) 
     {
     int denom = 1;
     int numer = 0;
     for (int i = 0; i < arrayd.length; i++) {
     denom *= arrayd[i];
     }
     for (int i = 0; i < arrayd.length; i++) 
     {
     numer += denom / arrayd[i];
     }

     int gcd =new EHealthAfricaTest().findGreatestCommonDivisor(numer, denom);
     return denom / gcd;
     }
     
        //number 5b
        public int findGreatestCommonDivisor(int a,int b)
        {    
         int tmp;
         while (b != 0) 
         {
         tmp = b;
         b = a % b;
         a = tmp;
         }
         return a;
        }
    
//    public static int[] removeRepeatedValueArray(int []s){
//        int result[] = new int[s.length], j=0;
//        for (int i : s) {
//            if(!isExists(result, i))
//                result[j++] = i;
//        }
//        return result;
//    }
//    private static boolean isExists(int[] array, int value){
//        for (int i : array) {
//            if(i==value)
//                return true;
//        }
//        return false;
//    }
    
    public static void main(String[] args) {
        // TODO code application logic here
        // //execution for number 2A
    String orderofNN=new EHealthAfricaTest().GetCharsorderNN("mother","tether");
    System.out.println("the Order of N*N is: "+orderofNN);
    System.out.println("the true string for Order N*N is: "+orderofNN.substring(4));
         
         
         // //execution for number 2B
    String orderofN=new EHealthAfricaTest().GetCharsorderN("mother","tether");      
     System.out.println("the Order of N is: "+orderofN);
     System.out.println("the true string for Order N is: "+orderofN.substring(4));
        
        
        // //execution for number 3
        int[]repeatedValueArray=new int[]{1, 3, 7, 7, 8, 9, 9, 9, 10};
      
        int[]dictintValueArray=new EHealthAfricaTest().GetDistinctValueArray(repeatedValueArray);      
         
       //int[]dictintValueArray= removeRepeatedValueArray(repeatedValueArray);
         System.out.println("the distinct arrays are ");
        for (int value  : dictintValueArray) 
        {
            System.out.printf("%4d", value);         
        }
        System.out.println();
                
        
        
         //execution for number 4
       int[]arrayBeforeRotation=new int[]{1, 2, 3, 4, 5, 6};
       int[]arrayAfterRotation=new EHealthAfricaTest().rotateArray(arrayBeforeRotation, arrayBeforeRotation[1]);
       System.out.println("the rotated arrays are ");
       for (int value  : arrayAfterRotation) 
        {
            System.out.printf("%4d", value);
            
        }
      System.out.println();
          
          //execution for number 5
      int[]integerArrays=new int[]{2,3,5};      
      System.out.println(new EHealthAfricaTest().LCM(integerArrays)+"");    
    }    
        
    
}
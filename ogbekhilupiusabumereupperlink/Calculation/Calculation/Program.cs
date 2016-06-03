using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Calculation
{
    internal class Program
    {
        public int FindSumOddEven(int[] myArray)
        {
            int summ = 0;
            int x = 0;
            int y = 0;
            y = (from i in myArray where i % 2 == 0 select i).Sum();

            x = (from i in myArray where i % 2 == 1 select i).Sum();
            Console.WriteLine("Sum of even numbers={0}", y);
            Console.WriteLine("Sum of odd numbers={0}", x);
            return x - y;

        }
       
        private static void Main(string[] args)
        {
                       int[] arr = new int[9];
            Console.WriteLine("Enter didgit numbers separated by comma from 1 to 9.Note also you can as well enter any number" +"\n"+
                              " of figures that comprises both even and odd numbers");
            string ss = Console.ReadLine();
            int[] myArray = StringToIntArray(ss);



            int answer = 0;
         answer=  new Program().FindSumOddEven(myArray);
            
            Console.WriteLine("The difference of odd numbers and even numbers = {0}",answer);
            Console.ReadLine();
        }


        private static int[] StringToIntArray(string Numbers)
        {
            List<int> listofIntgers = new List<int>();
            Array.ForEach(Numbers.Split(",".ToCharArray()), s =>
            {
                int currentvalue;
                //perform conversion
                bool isNonZeroteger = Int32.TryParse(s, out currentvalue);
                if (isNonZeroteger == true)
                    listofIntgers.Add(currentvalue);
                else
                {
                    Console.WriteLine("zero value is returned");
                    
                }
            });
            return listofIntgers.ToArray();
        }

    }
}

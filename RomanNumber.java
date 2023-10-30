package CloudVandana.com;

import java.util.Scanner;

public class RomanNumber {
	
	int RNum(char r)
	{
		if(r=='I' || r=='i')
		   return 1;
		if(r=='V' || r=='v')
			return 5;
		if(r=='X' || r=='x')
			return 10;
		if(r=='L' || r=='l')
			return 50;
		if(r=='C' || r=='c')
			return 100;
		if(r=='D' || r=='d')
			return 500;
		if(r=='M' || r=='m')
			return 1000;
		
		
		return -1;
		
	}
	
	public int Convert(String s)
	{
		 int total=0;
		
		for(int i=0;i<s.length();i++)
		{
			int s1=RNum(s.charAt(i));
			
			if(i+1<s.length())
			{
				int s2=RNum(s.charAt(i+1));
				
				if(s1>s2)
				{
					total=total+s1;
				}
				else
				{
					total=total-s1;
				}
			}
			else
			{
				total=total+s1;
			}
			
			
		}
		
           return total;
		
	}
	
	
	

	public static void main(String[] args) 
	{
		RomanNumber r=new RomanNumber();
        
        
        Scanner sc=new Scanner(System.in);
        System.out.println("Enter the Roman Number");
        String romanStr=sc.next();
        
        System.out.println(" The Roman Number is:"+romanStr);
        
       System.out.println(" The Integer Number is:"+r.Convert(romanStr));

	}

}

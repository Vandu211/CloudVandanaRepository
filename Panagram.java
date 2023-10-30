package CloudVandana.com;

import java.util.Scanner;

public class Panagram {

	public static void main(String[] args) {

		Scanner sc=new Scanner(System.in);
		System.out.println("Input the String ");
		String Input=sc.nextLine();		
		boolean result =panagram(Input.toLowerCase());
		
		if(result)
		{
			System.out.println("the " + Input +" is Panagram");
		}
		else
		{
			System.out.println("the " + Input +" is Not  Panagram");
		}
		
	}
	
    public static boolean panagram(String Input)
	{
		boolean[]mark=new boolean[26];
    	for(int i=0;i<Input.length();i++)
    	{
    		char c=Input.charAt(i);
    		if('a'<=c && c>='z')
    		{
    			mark[c-'a']=true;
    		}
    		
    	}
    	
    	for(int i=0;i<26;i++)
    	{
    		if(mark[i])
    		{
    			return true;
    		}
    	}
    	
    	return false;
	}

}

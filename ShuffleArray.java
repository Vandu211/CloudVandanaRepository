package CloudVandana.com;

import java.util.Scanner;

public class ShuffleArray {

	public static void main(String[] args) {

        int arr[]={1,2,3,4,5,6,7};
        //call method suffle to suffle the array
           Suffle(arr);
          
          
	}

	private static void Suffle(int[] arr) 
	{
	 int i,temp,j=0;
	 int brr[]=new int[arr.length+1];
	 
	 System.out.println("Array before suffle");
	 for(i=0;i<arr.length;i++)
     {
  	   System.out.println(arr[i]);
     }
	 
	 System.out.println("Array After suffle");
	 int index=0;
	 for(i=arr.length-1;i>=0;i--)
     {
        while(true)
        {
        	brr[j]=arr[i];
        	j++;
        	break;
        }
        
	  }
	 for(i=0;i<arr.length;i++)
     {
  	   System.out.println(brr[i]);
     }
		
	}

}

/**
 * This class writes a Java program. It is a mini interpreter for the toy programming language. It allows the following operations:
 * Use a variable consisting of a single letter (e.g. A, a, ...)
 * Use of integers: (eg -1, -20, 0, 1, 200)
 * Assignment (=): (eg A = B, A = 10,)
 * Addition (+) of exactly two elements (variables or constants): (eg C = A + B, D = 1 + A, ...)
 * Ability to "return" values when a single variable or constant itself is online (eg A, B, 10)
 * @Version 1.0
 * @Author:Mingrui Li 2087184 mxl991
 * @Date:2019/12/8
 * @Content:workshop
 */
import java.util.HashMap;

public class mini_Interpreter {

	/**
	 * @param c a single char parameter which is called c
	 * @return Three different booleans depending on the situation
	 */
	public static boolean isChar(char c){
		if( 'a'<=c && c<='z' ) return true;
		if( 'A'<=c && c<='Z' ) return true;
		return false;
	}

	/**
	 * @param s String parameter
	 */
	public static boolean isSingleLetter(String s){
		return (s.length()==1) && isChar(s.charAt(0));
	}

	/**
	 * @param s string parameter
	 * @return Different values
	 */
	public static int miniInterpreter(String s){
		String str = s.replaceAll(" ","");
		String []strList = str.split("\n");
		
		HashMap<String,Integer> env = new HashMap();
		for(int i=0; i<strList.length; i++){
			String st = strList[i];
			if( isSingleLetter(st) ){ // a single variable
				return env.get(st);
			}else if( !st.contains("=") ){ // a constant
				return Integer.parseInt(st);
			}else{ // A = B    or    A = B + C
				String left = st.split("=")[0];
				String right = st.split("=")[1];
				String []rList = right.split("\\+");
				int value = 0;
				for(int j=0; j<rList.length; j++){
					if( isSingleLetter(rList[j]) ){
						value += env.get(rList[j]);
					}else{
						value += Integer.parseInt(rList[j]);
					}
				}
				env.put( left, value );
			}
		}
		return 0;
	}
	
	public static void main(String[] args){
		String str1 = " A=2 \n B=8 \n C=A+B \n C";
		int result1 = miniInterpreter(str1);
		System.out.println(str1);
		System.out.println("result1 = "+result1);
		System.out.println();

		String str2 = "A=2\n" +
			"B=22\n" +
			"K=A+B\n" +
			"Z=K+A\n" +
			"Z";
		System.out.println(str2);
		int result2 = miniInterpreter(str2);
		System.out.println("result2 = "+result2);
		System.out.println();


		String str3 = "A=2+1\n" +
			"B=A+9\n" +
			"C=A+B\n" +
			"A";
		System.out.println(str3);
		int result3 = miniInterpreter(str3);
		System.out.println("result3 = "+result3);
		System.out.println();

		String str4 = "A=-22+1\n" +
			"B=-15+A\n" +
			"C=A+B\n" +
			"C";
		System.out.println(str4);
		int result4 = miniInterpreter(str4);
		System.out.println("result4 = "+result4);
		System.out.println();

		String str5 = "A=-20+1\n" +
			"B=-1+A\n" +
			"C=A+B\n" +
			"-30";
		System.out.println(str5);
		int result5 = miniInterpreter(str5);
		System.out.println("result5 = "+result5);
	}
}

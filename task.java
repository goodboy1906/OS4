public class Main
{
	public static void main(String[] args) {
		int a=0, b=3, c=3;
		long start = System.currentTimeMillis(), end;
		for ( int i=0; i<100000001; i++ ){
            		a += b*2 + c - i;
		}
		end = System.currentTimeMillis();
		System.out.println(a + " = a, " + (end-start) + " ms, " + (end-start)/100000000 + "speed iteration/ms" );
		
	}
}

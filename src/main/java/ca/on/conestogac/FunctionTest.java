package ca.on.conestogac;

import java.io.*;

public class FunctionTest {
	
	private int n;
	
	public FunctionTest(int nIn)
	{
		this.n = nIn;
	}
	
	public void power(int nNew, Writer sOut) throws IOException
	{
		if(nNew < 640)
		{
			sOut.write("next power is " + (nNew * n) + "\n");
			this.power(n * nNew, sOut);
		}
	}

}

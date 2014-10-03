package com.uunemo.util;

import java.util.Random;

public class QuizUtil {
	

	/// <summary>
	/// 生成一个非重复的随机序列。
	/// </summary>
	/// <param name="count">序列长度。</param>
	/// <returns>序列。</returns>
	private static int[] BuildRandomSequence(int length) {
		Random radom = new Random();
		int[] array = new int[length];
	    for (int i = 0; i < array.length; i++) {
	        array[i] = i;
	    }
	    int x = 0, tmp = 0;
	    for (int i = array.length - 1; i > 0; i--) {
	        x = radom.nextInt( i + 1);
	        tmp = array[i];
	        array[i] = array[x];
	        array[x] = tmp;
	    }
	    return array;
	}
	
    public static final int MAX_PAGE =10;
	
}
